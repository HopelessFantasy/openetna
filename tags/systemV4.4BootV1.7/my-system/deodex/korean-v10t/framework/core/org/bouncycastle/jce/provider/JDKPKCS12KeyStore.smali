.class public Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field private static final CERT_ALGORITHM:Ljava/lang/String; = "1.2.840.113549.1.12.1.6"

.field static final KEY:I = 0x2

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "1.2.840.113549.1.12.1.3"

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x64

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3


# instance fields
.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Ljava/util/Hashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Ljava/util/Hashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "provider"

    .prologue
    const-string v1, "X.509"

    .line 171
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 87
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    .line 88
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 89
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    .line 90
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 91
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 109
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 174
    if-eqz p1, :cond_3d

    .line 176
    :try_start_34
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 187
    :goto_3c
    return-void

    .line 180
    :cond_3d
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_46

    goto :goto_3c

    .line 183
    :catch_46
    move-exception v1

    move-object v0, v1

    .line 185
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

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

.method static synthetic access$000(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 6
    .parameter "pubKey"

    .prologue
    .line 194
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 197
    .local v1, info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v2

    .line 199
    .end local v1           #info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_1a
    move-exception v2

    move-object v0, v2

    .line 201
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method protected decryptData(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 20
    .parameter "algId"
    .parameter "data"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, algorithm:Ljava/lang/String;
    new-instance v10, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v10, p0}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 630
    .local v10, pbeParams:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v11, Ljavax/crypto/spec/PBEKeySpec;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 631
    .local v11, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    const/4 v9, 0x0

    .line 635
    .local v9, out:[B
    :try_start_1c
    const-string v12, "BC"

    invoke-static {v3, v12}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v8

    .line 637
    .local v8, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v12

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    invoke-direct {v5, v12, v13}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 640
    .local v5, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v8, v11}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 642
    .local v7, k:Ljavax/crypto/SecretKey;
    move-object v0, v7

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v8, v0

    .end local v8           #keyFact:Ljavax/crypto/SecretKeyFactory;
    move-object v0, v8

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 644
    const-string v12, "BC"

    invoke-static {v3, v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 646
    .local v4, cipher:Ljavax/crypto/Cipher;
    const/4 v12, 0x2

    invoke-virtual {v4, v12, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 648
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_51} :catch_5e

    move-result-object v9

    .line 655
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v9}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 657
    .local v2, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object p0

    .line 650
    .end local v2           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #cipher:Ljavax/crypto/Cipher;
    .end local v5           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v7           #k:Ljavax/crypto/SecretKey;
    :catch_5e
    move-exception v12

    move-object v6, v12

    .line 652
    .local v6, e:Ljava/lang/Exception;
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception decrypting data - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method protected encryptData(Ljava/lang/String;[BLorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 14
    .parameter "algorithm"
    .parameter "data"
    .parameter "pbeParams"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "BC"

    .line 667
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 672
    .local v5, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_7
    const-string v6, "BC"

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 674
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 678
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v6, "BC"

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 680
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 682
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_31

    move-result-object v4

    .line 689
    .local v4, out:[B
    return-object v4

    .line 684
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #out:[B
    :catch_31
    move-exception v6

    move-object v2, v6

    .line 686
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .registers 6

    .prologue
    .line 213
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 215
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 216
    .local v1, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 218
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 221
    :cond_1b
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 222
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 224
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 227
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 231
    .end local v0           #a:Ljava/lang/String;
    :cond_39
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 237
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 8
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 250
    .local v2, k:Ljava/security/Key;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 252
    .local v0, c:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_20

    .line 254
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_20
    if-eqz v2, :cond_44

    .line 259
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 262
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 264
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_34
    if-eqz v0, :cond_44

    .line 266
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v1           #id:Ljava/lang/String;
    :cond_44
    if-nez v0, :cond_61

    if-nez v2, :cond_61

    .line 272
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such entry as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 274
    :cond_61
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "alias"

    .prologue
    .line 282
    if-nez p1, :cond_a

    .line 284
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_a
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 292
    .local v0, c:Ljava/security/cert/Certificate;
    if-nez v0, :cond_26

    .line 294
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 295
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 297
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 305
    .end local v1           #id:Ljava/lang/String;
    .restart local v0       #c:Ljava/security/cert/Certificate;
    :cond_26
    :goto_26
    return-object v0

    .line 301
    .restart local v1       #id:Ljava/lang/String;
    :cond_27
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0       #c:Ljava/security/cert/Certificate;
    goto :goto_26
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .parameter "cert"

    .prologue
    .line 311
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 312
    .local v0, c:Ljava/util/Enumeration;
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 314
    .local v1, k:Ljava/util/Enumeration;
    :cond_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 316
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 317
    .local v3, tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .local v2, ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v2

    .line 339
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :goto_25
    return-object v4

    .line 325
    :cond_26
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 326
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 328
    :cond_32
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 330
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 331
    .restart local v3       #tc:Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    .restart local v2       #ta:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object v4, v2

    .line 335
    goto :goto_25

    .line 339
    .end local v2           #ta:Ljava/lang/String;
    .end local v3           #tc:Ljava/security/cert/Certificate;
    :cond_4c
    const/4 v4, 0x0

    goto :goto_25
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 22
    .parameter "alias"

    .prologue
    .line 345
    if-nez p1, :cond_a

    .line 347
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 350
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 352
    const/16 v17, 0x0

    .line 443
    .end local p0
    .end local p1
    :goto_12
    return-object v17

    .line 355
    .restart local p0
    .restart local p1
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 357
    .local v6, c:Ljava/security/cert/Certificate;
    if-eqz v6, :cond_f1

    .line 359
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 361
    .end local p1
    .local v9, cs:Ljava/util/Vector;
    :goto_1e
    if-eqz v6, :cond_cf

    .line 363
    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v16, v0

    .line 364
    .local v16, x509c:Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 366
    .local v13, nextC:Ljava/security/cert/Certificate;
    sget-object v17, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 367
    .local v5, bytes:[B
    if-eqz v5, :cond_75

    .line 371
    :try_start_32
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 373
    .local v3, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 374
    .local v4, authBytes:[B
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    .end local v3           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 376
    .restart local v3       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v12, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 377
    .local v12, id:Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_75

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #nextC:Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_75} :catch_bf

    .line 389
    .end local v3           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #authBytes:[B
    .end local v12           #id:Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_75
    if-nez v13, :cond_b7

    .line 394
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 395
    .local v11, i:Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 397
    .local v14, s:Ljava/security/Principal;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b7

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 401
    .local v10, e:Ljava/util/Enumeration;
    :cond_8f
    :goto_8f
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_b7

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 404
    .local v8, crt:Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 405
    .local v15, sub:Ljava/security/Principal;
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8f

    .line 409
    :try_start_af
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b6} :catch_f5

    .line 410
    move-object v13, v8

    .line 422
    .end local v8           #crt:Ljava/security/cert/X509Certificate;
    .end local v10           #e:Ljava/util/Enumeration;
    .end local v11           #i:Ljava/security/Principal;
    .end local v14           #s:Ljava/security/Principal;
    .end local v15           #sub:Ljava/security/Principal;
    :cond_b7
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 423
    if-eq v13, v6, :cond_cc

    .line 425
    move-object v6, v13

    goto/16 :goto_1e

    .line 383
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    :catch_bf
    move-exception v17

    move-object/from16 v10, v17

    .line 385
    .local v10, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 429
    .end local v10           #e:Ljava/io/IOException;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    :cond_cc
    const/4 v6, 0x0

    goto/16 :goto_1e

    .line 433
    .end local v5           #bytes:[B
    .end local v13           #nextC:Ljava/security/cert/Certificate;
    .end local v16           #x509c:Ljava/security/cert/X509Certificate;
    :cond_cf
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object v7, v0

    .line 435
    .local v7, certChain:[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .end local p0
    .local v11, i:I
    :goto_d9
    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-eq v0, v1, :cond_ed

    .line 437
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    aput-object p0, v7, v11

    .line 435
    add-int/lit8 v11, v11, 0x1

    goto :goto_d9

    :cond_ed
    move-object/from16 v17, v7

    .line 440
    goto/16 :goto_12

    .line 443
    .end local v7           #certChain:[Ljava/security/cert/Certificate;
    .end local v9           #cs:Ljava/util/Vector;
    .end local v11           #i:I
    .restart local p0
    .restart local p1
    :cond_f1
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 413
    .end local p1
    .restart local v5       #bytes:[B
    .restart local v8       #crt:Ljava/security/cert/X509Certificate;
    .restart local v9       #cs:Ljava/util/Vector;
    .local v10, e:Ljava/util/Enumeration;
    .local v11, i:Ljava/security/Principal;
    .restart local v13       #nextC:Ljava/security/cert/Certificate;
    .restart local v14       #s:Ljava/security/Principal;
    .restart local v15       #sub:Ljava/security/Principal;
    .restart local v16       #x509c:Ljava/security/cert/X509Certificate;
    :catch_f5
    move-exception v17

    goto :goto_8f
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .parameter "alias"

    .prologue
    .line 448
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 5
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 456
    if-nez p1, :cond_a

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Key;

    return-object p0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 467
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 473
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 60
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    if-nez p1, :cond_3

    .line 1118
    .end local p1
    :cond_2
    return-void

    .line 702
    .restart local p1
    :cond_3
    if-nez p2, :cond_d

    .line 704
    new-instance v54, Ljava/lang/NullPointerException;

    const-string v55, "No password supplied for PKCS#12 KeyStore."

    invoke-direct/range {v54 .. v55}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v54

    .line 708
    :cond_d
    new-instance v17, Ljava/io/BufferedInputStream;

    const/16 v54, 0x2000

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 711
    .local v17, bufIn:Ljava/io/BufferedInputStream;
    const/16 v54, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 713
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->read()I

    move-result v31

    .line 715
    .local v31, head:I
    const/16 v54, 0x30

    move/from16 v0, v31

    move/from16 v1, v54

    if-eq v0, v1, :cond_37

    .line 717
    new-instance v54, Ljava/io/IOException;

    const-string v55, "stream does not represent a PKCS12 key store"

    invoke-direct/range {v54 .. v55}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v54

    .line 720
    :cond_37
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedInputStream;->reset()V

    .line 722
    new-instance v12, Lorg/bouncycastle/asn1/ASN1InputStream;

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 723
    .local v12, bIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v42

    check-cast v42, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 724
    .local v42, obj:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v14, Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-object v0, v14

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 725
    .local v14, bag:Lorg/bouncycastle/asn1/pkcs/Pfx;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v33

    .line 726
    .local v33, info:Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 727
    .local v22, chain:Ljava/util/Vector;
    const/16 v52, 0x0

    .line 728
    .local v52, unmarkedKey:Z
    const/16 v53, 0x0

    .line 730
    .local v53, wrongPKCS12Zero:Z
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v54

    if-eqz v54, :cond_1ac

    .line 732
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 733
    .local v13, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v16, Lorg/bouncycastle/asn1/BEROutputStream;

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 734
    .local v16, berOut:Lorg/bouncycastle/asn1/BEROutputStream;
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/Pfx;->getMacData()Lorg/bouncycastle/asn1/pkcs/MacData;

    move-result-object v39

    .line 735
    .local v39, mData:Lorg/bouncycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v39 .. v39}, Lorg/bouncycastle/asn1/pkcs/MacData;->getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v25

    .line 736
    .local v25, dInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    .line 737
    .local v6, algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v39 .. v39}, Lorg/bouncycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v49

    .line 738
    .local v49, salt:[B
    invoke-virtual/range {v39 .. v39}, Lorg/bouncycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/math/BigInteger;->intValue()I

    move-result v34

    .line 740
    .local v34, itCount:I
    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 742
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v26

    .line 746
    .local v26, data:[B
    :try_start_99
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v54

    const-string v55, "BC"

    invoke-static/range {v54 .. v55}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v40

    .line 747
    .local v40, mac:Ljavax/crypto/Mac;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v54

    const-string v55, "BC"

    invoke-static/range {v54 .. v55}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v37

    .line 748
    .local v37, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v27, Ljavax/crypto/spec/PBEParameterSpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 749
    .local v27, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v46, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, v46

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 751
    .local v46, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v54

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 753
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 755
    invoke-virtual/range {v40 .. v40}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v48

    .line 756
    .local v48, res:[B
    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v28

    .line 758
    .local v28, dig:[B
    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v54, v0

    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v55

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_109

    .line 760
    new-instance v54, Ljava/io/IOException;

    const-string v55, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct/range {v54 .. v55}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v54
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_105} :catch_105
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_105} :catch_131

    .line 808
    .end local v27           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v28           #dig:[B
    .end local v37           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v40           #mac:Ljavax/crypto/Mac;
    .end local v46           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v48           #res:[B
    :catch_105
    move-exception v54

    move-object/from16 v29, v54

    .line 810
    .local v29, e:Ljava/io/IOException;
    throw v29

    .line 763
    .end local v29           #e:Ljava/io/IOException;
    .restart local v27       #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v28       #dig:[B
    .restart local v37       #keyFact:Ljavax/crypto/SecretKeyFactory;
    .restart local v40       #mac:Ljavax/crypto/Mac;
    .restart local v46       #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v48       #res:[B
    :cond_109
    const/16 v44, 0x1

    .line 765
    .local v44, okay:Z
    const/16 v32, 0x0

    .local v32, i:I
    :goto_10d
    :try_start_10d
    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v32

    move/from16 v1, v54

    if-eq v0, v1, :cond_153

    .line 767
    aget-byte v54, v48, v32

    aget-byte v55, v28, v32

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_1a3

    .line 769
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v54, v0

    if-eqz v54, :cond_151

    .line 771
    new-instance v54, Ljava/io/IOException;

    const-string v55, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct/range {v54 .. v55}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v54
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_131} :catch_105
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_131} :catch_131

    .line 812
    .end local v27           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v28           #dig:[B
    .end local v32           #i:I
    .end local v37           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v40           #mac:Ljavax/crypto/Mac;
    .end local v44           #okay:Z
    .end local v46           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v48           #res:[B
    :catch_131
    move-exception v54

    move-object/from16 v29, v54

    .line 814
    .local v29, e:Ljava/lang/Exception;
    new-instance v54, Ljava/io/IOException;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "error constructing MAC: "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-direct/range {v54 .. v55}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v54

    .line 775
    .end local v29           #e:Ljava/lang/Exception;
    .restart local v27       #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .restart local v28       #dig:[B
    .restart local v32       #i:I
    .restart local v37       #keyFact:Ljavax/crypto/SecretKeyFactory;
    .restart local v40       #mac:Ljavax/crypto/Mac;
    .restart local v44       #okay:Z
    .restart local v46       #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .restart local v48       #res:[B
    :cond_151
    const/16 v44, 0x0

    .line 784
    :cond_153
    if-nez v44, :cond_1ac

    .line 786
    :try_start_155
    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v36

    .line 788
    .local v36, k:Ljavax/crypto/SecretKey;
    move-object/from16 v0, v36

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object/from16 v37, v0

    .end local v37           #keyFact:Ljavax/crypto/SecretKeyFactory;
    const/16 v54, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 790
    move-object/from16 v0, v40

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 792
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 794
    invoke-virtual/range {v40 .. v40}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v48

    .line 795
    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v28

    .line 797
    const/16 v32, 0x0

    :goto_186
    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v32

    move/from16 v1, v54

    if-eq v0, v1, :cond_1aa

    .line 799
    aget-byte v54, v48, v32

    aget-byte v55, v28, v32

    move/from16 v0, v54

    move/from16 v1, v55

    if-eq v0, v1, :cond_1a7

    .line 801
    new-instance v54, Ljava/io/IOException;

    const-string v55, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct/range {v54 .. v55}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v54
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_1a3} :catch_105
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_1a3} :catch_131

    .line 765
    .end local v36           #k:Ljavax/crypto/SecretKey;
    .restart local v37       #keyFact:Ljavax/crypto/SecretKeyFactory;
    :cond_1a3
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_10d

    .line 797
    .end local v37           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .restart local v36       #k:Ljavax/crypto/SecretKey;
    :cond_1a7
    add-int/lit8 v32, v32, 0x1

    goto :goto_186

    .line 805
    :cond_1aa
    const/16 v53, 0x1

    .line 818
    .end local v6           #algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v16           #berOut:Lorg/bouncycastle/asn1/BEROutputStream;
    .end local v25           #dInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v26           #data:[B
    .end local v27           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v28           #dig:[B
    .end local v32           #i:I
    .end local v34           #itCount:I
    .end local v36           #k:Ljavax/crypto/SecretKey;
    .end local v39           #mData:Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v40           #mac:Ljavax/crypto/Mac;
    .end local v44           #okay:Z
    .end local v46           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v48           #res:[B
    .end local v49           #salt:[B
    :cond_1ac
    new-instance v54, Ljava/util/Hashtable;

    invoke-direct/range {v54 .. v54}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    .line 819
    new-instance v54, Ljava/util/Hashtable;

    invoke-direct/range {v54 .. v54}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 821
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_602

    .line 823
    new-instance v12, Lorg/bouncycastle/asn1/ASN1InputStream;

    .end local v12           #bIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    move-object v0, v12

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 825
    .restart local v12       #bIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v10, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 826
    .local v10, authSafe:Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v18

    .line 828
    .local v18, c:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v32, 0x0

    .restart local v32       #i:I
    :goto_1f4
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v54, v0

    move/from16 v0, v32

    move/from16 v1, v54

    if-eq v0, v1, :cond_602

    .line 830
    aget-object v54, v18, v32

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_37b

    .line 832
    new-instance v24, Lorg/bouncycastle/asn1/ASN1InputStream;

    aget-object v54, v18, v32

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    move-object/from16 v0, v24

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 833
    .local v24, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v50

    check-cast v50, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 835
    .local v50, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v35, 0x0

    .local v35, j:I
    :goto_22a
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v54

    move/from16 v0, v35

    move/from16 v1, v54

    if-eq v0, v1, :cond_5fe

    .line 837
    new-instance v11, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v50

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 838
    .local v11, b:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_342

    .line 840
    new-instance v30, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 841
    .local v30, eIn:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v54

    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move-object/from16 v3, p2

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v47

    .line 846
    .local v47, privKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v47

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v15, v0

    .line 847
    .local v15, bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v7, 0x0

    .line 848
    .local v7, alias:Ljava/lang/String;
    const/16 v38, 0x0

    .line 850
    .local v38, localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v54

    if-eqz v54, :cond_2f7

    .line 852
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v29

    .line 853
    .local v29, e:Ljava/util/Enumeration;
    :cond_28d
    :goto_28d
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v54

    if-eqz v54, :cond_2f7

    .line 855
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 856
    .local v51, sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v54, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 857
    .local v5, aOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v54, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Set;

    .line 858
    .local v9, attrSet:Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v8, 0x0

    .line 860
    .local v8, attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v54

    if-lez v54, :cond_2c6

    .line 862
    const/16 v54, 0x0

    move-object v0, v9

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    check-cast v8, Lorg/bouncycastle/asn1/DERObject;

    .line 864
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-interface {v15, v5, v8}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 867
    :cond_2c6
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_2e6

    .line 869
    check-cast v8, Lorg/bouncycastle/asn1/DERBMPString;

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v7

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28d

    .line 872
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    :cond_2e6
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_28d

    .line 874
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v38, v0

    goto :goto_28d

    .line 879
    .end local v5           #aOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    .end local v9           #attrSet:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v51           #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2f7
    if-eqz v38, :cond_32e

    .line 881
    new-instance v41, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v54

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 883
    .local v41, name:Ljava/lang/String;
    if-nez v7, :cond_31f

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .end local v7           #alias:Ljava/lang/String;
    .end local v15           #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v30           #eIn:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v38           #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v41           #name:Ljava/lang/String;
    .end local v47           #privKey:Ljava/security/PrivateKey;
    :goto_31b
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_22a

    .line 889
    .restart local v7       #alias:Ljava/lang/String;
    .restart local v15       #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v30       #eIn:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v38       #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v41       #name:Ljava/lang/String;
    .restart local v47       #privKey:Ljava/security/PrivateKey;
    :cond_31f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31b

    .line 894
    .end local v41           #name:Ljava/lang/String;
    :cond_32e
    const/16 v52, 0x1

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    const-string v55, "unmarked"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31b

    .line 898
    .end local v7           #alias:Ljava/lang/String;
    .end local v15           #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v30           #eIn:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v38           #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v47           #privKey:Ljava/security/PrivateKey;
    :cond_342
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_355

    .line 900
    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_31b

    .line 904
    :cond_355
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "extra in data "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 905
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v11}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_31b

    .line 909
    .end local v11           #b:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v24           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v35           #j:I
    .end local v50           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_37b
    aget-object v54, v18, v32

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_5ba

    .line 911
    new-instance v23, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    aget-object v54, v18, v32

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 912
    .local v23, d:Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v54

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move-object/from16 v3, p2

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->decryptData(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v50

    .line 914
    .restart local v50       #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v35, 0x0

    .restart local v35       #j:I
    :goto_3b6
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v54

    move/from16 v0, v35

    move/from16 v1, v54

    if-eq v0, v1, :cond_5fe

    .line 916
    new-instance v11, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    move-object/from16 v0, v50

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 918
    .restart local v11       #b:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_3e7

    .line 920
    move-object/from16 v0, v22

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 914
    :goto_3e4
    add-int/lit8 v35, v35, 0x1

    goto :goto_3b6

    .line 922
    :cond_3e7
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_4c6

    .line 924
    new-instance v30, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 925
    .restart local v30       #eIn:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v54

    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    move-object/from16 v3, p2

    move/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v47

    .line 930
    .restart local v47       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v47

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v15, v0

    .line 931
    .restart local v15       #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v7, 0x0

    .line 932
    .restart local v7       #alias:Ljava/lang/String;
    const/16 v38, 0x0

    .line 934
    .restart local v38       #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v29

    .line 935
    .restart local v29       #e:Ljava/util/Enumeration;
    :cond_428
    :goto_428
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v54

    if-eqz v54, :cond_492

    .line 937
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 938
    .restart local v51       #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v54, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 939
    .restart local v5       #aOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v54, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Set;

    .line 940
    .restart local v9       #attrSet:Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v8, 0x0

    .line 942
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v54

    if-lez v54, :cond_461

    .line 944
    const/16 v54, 0x0

    move-object v0, v9

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    check-cast v8, Lorg/bouncycastle/asn1/DERObject;

    .line 946
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-interface {v15, v5, v8}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 949
    :cond_461
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_481

    .line 951
    check-cast v8, Lorg/bouncycastle/asn1/DERBMPString;

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v7

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_428

    .line 954
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    :cond_481
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_428

    .line 956
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v38, v0

    goto :goto_428

    .line 960
    .end local v5           #aOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    .end local v9           #attrSet:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v51           #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_492
    new-instance v41, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v54

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 962
    .restart local v41       #name:Ljava/lang/String;
    if-nez v7, :cond_4b6

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e4

    .line 968
    :cond_4b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e4

    .line 971
    .end local v7           #alias:Ljava/lang/String;
    .end local v15           #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v30           #eIn:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v38           #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v41           #name:Ljava/lang/String;
    .end local v47           #privKey:Ljava/security/PrivateKey;
    :cond_4c6
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v54

    sget-object v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v54 .. v55}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_593

    .line 973
    new-instance v45, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v45

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 974
    .local v45, pIn:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v45 .. v45}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v47

    .line 979
    .restart local v47       #privKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v47

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v15, v0

    .line 980
    .restart local v15       #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/4 v7, 0x0

    .line 981
    .restart local v7       #alias:Ljava/lang/String;
    const/16 v38, 0x0

    .line 983
    .restart local v38       #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v29

    .line 984
    .restart local v29       #e:Ljava/util/Enumeration;
    :cond_4f5
    :goto_4f5
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v54

    if-eqz v54, :cond_55f

    .line 986
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 987
    .restart local v51       #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v54, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 988
    .restart local v5       #aOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v54, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Set;

    .line 989
    .restart local v9       #attrSet:Lorg/bouncycastle/asn1/ASN1Set;
    const/4 v8, 0x0

    .line 991
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v54

    if-lez v54, :cond_52e

    .line 993
    const/16 v54, 0x0

    move-object v0, v9

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    check-cast v8, Lorg/bouncycastle/asn1/DERObject;

    .line 995
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-interface {v15, v5, v8}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 998
    :cond_52e
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_54e

    .line 1000
    check-cast v8, Lorg/bouncycastle/asn1/DERBMPString;

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v7

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f5

    .line 1003
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    :cond_54e
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v5

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_4f5

    .line 1005
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v38, v0

    goto :goto_4f5

    .line 1009
    .end local v5           #aOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    .end local v9           #attrSet:Lorg/bouncycastle/asn1/ASN1Set;
    .end local v51           #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_55f
    new-instance v41, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v54

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1011
    .restart local v41       #name:Ljava/lang/String;
    if-nez v7, :cond_583

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e4

    .line 1017
    :cond_583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e4

    .line 1022
    .end local v7           #alias:Ljava/lang/String;
    .end local v15           #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v38           #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v41           #name:Ljava/lang/String;
    .end local v45           #pIn:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v47           #privKey:Ljava/security/PrivateKey;
    :cond_593
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "extra in encryptedData "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1023
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v11}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_3e4

    .line 1029
    .end local v11           #b:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v23           #d:Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    .end local v35           #j:I
    .end local v50           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5ba
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "extra "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    aget-object v56, v18, v32

    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1030
    sget-object v54, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string v56, "extra "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    aget-object v56, v18, v32

    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v56

    invoke-static/range {v56 .. v56}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    :cond_5fe
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1f4

    .line 1035
    .end local v10           #authSafe:Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v18           #c:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v32           #i:I
    :cond_602
    new-instance v54, Ljava/util/Hashtable;

    invoke-direct/range {v54 .. v54}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    .line 1036
    new-instance v54, Ljava/util/Hashtable;

    invoke-direct/range {v54 .. v54}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 1037
    new-instance v54, Ljava/util/Hashtable;

    invoke-direct/range {v54 .. v54}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 1039
    const/16 v32, 0x0

    .restart local v32       #i:I
    :goto_625
    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v54

    move/from16 v0, v32

    move/from16 v1, v54

    if-eq v0, v1, :cond_2

    .line 1041
    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    .line 1042
    .restart local v11       #b:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    new-instance v20, Lorg/bouncycastle/asn1/pkcs/CertBag;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 1043
    .local v20, cb:Lorg/bouncycastle/asn1/pkcs/CertBag;
    const/16 v21, 0x0

    .line 1047
    .local v21, cert:Ljava/security/cert/Certificate;
    :try_start_64a
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    move-object/from16 v0, v19

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1049
    .local v19, cIn:Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_66a
    .catch Ljava/lang/Exception; {:try_start_64a .. :try_end_66a} :catch_6d3

    move-result-object v21

    .line 1060
    const/16 v38, 0x0

    .line 1061
    .restart local v38       #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v7, 0x0

    .line 1063
    .restart local v7       #alias:Ljava/lang/String;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v54

    if-eqz v54, :cond_6f2

    .line 1065
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v29

    .line 1066
    .restart local v29       #e:Ljava/util/Enumeration;
    :cond_67c
    :goto_67c
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v54

    if-eqz v54, :cond_6f2

    .line 1068
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1069
    .restart local v51       #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v54, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v43

    check-cast v43, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1070
    .local v43, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v54, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    const/16 v54, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/DERObject;

    .line 1072
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    move-object/from16 v0, v21

    instance-of v0, v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move/from16 v54, v0

    if-eqz v54, :cond_6c0

    .line 1074
    move-object/from16 v0, v21

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v15, v0

    .line 1075
    .restart local v15       #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object v0, v15

    move-object/from16 v1, v43

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1078
    .end local v15           #bagAttr:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    :cond_6c0
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_6e0

    .line 1080
    check-cast v8, Lorg/bouncycastle/asn1/DERBMPString;

    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v7

    goto :goto_67c

    .line 1051
    .end local v7           #alias:Ljava/lang/String;
    .end local v19           #cIn:Ljava/io/ByteArrayInputStream;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v38           #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v43           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v51           #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_6d3
    move-exception v54

    move-object/from16 v29, v54

    .line 1053
    .local v29, e:Ljava/lang/Exception;
    new-instance v54, Ljava/lang/RuntimeException;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v55

    invoke-direct/range {v54 .. v55}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v54

    .line 1082
    .restart local v7       #alias:Ljava/lang/String;
    .restart local v8       #attr:Lorg/bouncycastle/asn1/DERObject;
    .restart local v19       #cIn:Ljava/io/ByteArrayInputStream;
    .local v29, e:Ljava/util/Enumeration;
    .restart local v38       #localId:Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v43       #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v51       #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_6e0
    sget-object v54, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v43

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v54

    if-eqz v54, :cond_67c

    .line 1084
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    move-object/from16 v38, v0

    goto :goto_67c

    .line 1089
    .end local v8           #attr:Lorg/bouncycastle/asn1/DERObject;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v43           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v51           #sq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_6f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    new-instance v55, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    if-eqz v52, :cond_769

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v54

    if-eqz v54, :cond_765

    .line 1095
    new-instance v41, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v54

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v54

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1097
    .restart local v41       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v55, v0

    const-string v56, "unmarked"

    invoke-virtual/range {v55 .. v56}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    .end local v41           #name:Ljava/lang/String;
    :cond_765
    :goto_765
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_625

    .line 1106
    :cond_769
    if-eqz v38, :cond_78b

    .line 1108
    new-instance v41, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v54

    invoke-static/range {v54 .. v54}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v54

    move-object/from16 v0, v41

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1110
    .restart local v41       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    .end local v41           #name:Ljava/lang/String;
    :cond_78b
    if-eqz v7, :cond_765

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object v1, v7

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_765
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 483
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is already a certificate with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_27
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 9
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 506
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_e

    if-nez p4, :cond_e

    .line 508
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_e
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 513
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is already a key with the name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_41
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4f
    array-length v1, p4

    if-eq v0, v1, :cond_67

    .line 521
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 523
    :cond_67
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .registers 6

    .prologue
    .line 527
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 529
    .local v2, tab:Ljava/util/Hashtable;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 530
    .local v1, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 532
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 535
    :cond_1b
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 536
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 538
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 539
    .local v0, a:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 541
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 545
    .end local v0           #a:Ljava/lang/String;
    :cond_39
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 65
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    if-nez p2, :cond_a

    .line 1125
    new-instance v58, Ljava/lang/NullPointerException;

    const-string v59, "No password supplied for PKCS#12 KeyStore."

    invoke-direct/range {v58 .. v59}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v58

    .line 1128
    :cond_a
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-object v11, v0

    .line 1134
    .local v11, c:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v42, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v42 .. v42}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1137
    .local v42, keyS:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v44

    .line 1139
    .local v44, ks:Ljava/util/Enumeration;
    :goto_20
    invoke-interface/range {v44 .. v44}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_1d2

    .line 1141
    const/16 v58, 0x14

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v39, v0

    .line 1143
    .local v39, kSalt:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1145
    invoke-interface/range {v44 .. v44}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 1146
    .local v49, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/security/PrivateKey;

    .line 1147
    .local v55, privKey:Ljava/security/PrivateKey;
    new-instance v38, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v58, 0x64

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1148
    .local v38, kParams:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    const-string v58, "1.2.840.113549.1.12.1.3"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v55

    move-object/from16 v3, v38

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v35

    .line 1149
    .local v35, kBytes:[B
    new-instance v33, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v58, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v59, "1.2.840.113549.1.12.1.3"

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v59

    move-object/from16 v0, v33

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1150
    .local v33, kAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v36, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1151
    .local v36, kInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/4 v6, 0x0

    .line 1152
    .local v6, attrSet:Z
    new-instance v37, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1154
    .local v37, kName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v55

    instance-of v0, v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move/from16 v58, v0

    if-eqz v58, :cond_13a

    .line 1156
    move-object/from16 v0, v55

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v9, v0

    .line 1160
    .local v9, bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v9

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v50

    check-cast v50, Lorg/bouncycastle/asn1/DERBMPString;

    .line 1161
    .local v50, nm:Lorg/bouncycastle/asn1/DERBMPString;
    if-eqz v50, :cond_bd

    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_d0

    .line 1163
    :cond_bd
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1169
    :cond_d0
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v9

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v58

    if-nez v58, :cond_f9

    .line 1171
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v23

    .line 1173
    .local v23, ct:Ljava/security/cert/Certificate;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v59

    move-object v0, v9

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1176
    .end local v23           #ct:Ljava/security/cert/Certificate;
    :cond_f9
    invoke-interface {v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v29

    .line 1178
    .local v29, e:Ljava/util/Enumeration;
    :goto_fd
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_13a

    .line 1180
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1181
    .local v51, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v40, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1183
    .local v40, kSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1184
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v9

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1186
    const/4 v6, 0x1

    .line 1188
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_fd

    .line 1192
    .end local v9           #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v40           #kSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v50           #nm:Lorg/bouncycastle/asn1/DERBMPString;
    .end local v51           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_13a
    if-nez v6, :cond_1ad

    .line 1197
    new-instance v40, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1198
    .restart local v40       #kSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v23

    .line 1200
    .restart local v23       #ct:Ljava/security/cert/Certificate;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1201
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1203
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1205
    new-instance v40, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v40           #kSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v40 .. v40}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1207
    .restart local v40       #kSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1208
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    new-instance v59, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1210
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1213
    .end local v23           #ct:Ljava/security/cert/Certificate;
    .end local v40           #kSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1ad
    new-instance v34, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v36 .. v36}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v59

    new-instance v60, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v60

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1214
    .local v34, kBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_20

    .line 1217
    .end local v6           #attrSet:Z
    .end local v33           #kAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v34           #kBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    .end local v35           #kBytes:[B
    .end local v36           #kInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v37           #kName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v38           #kParams:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v39           #kSalt:[B
    .end local v49           #name:Ljava/lang/String;
    .end local v55           #privKey:Ljava/security/PrivateKey;
    :cond_1d2
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1218
    .local v8, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v25, Lorg/bouncycastle/asn1/DEROutputStream;

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1220
    .local v25, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1222
    new-instance v43, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v58

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 1227
    .local v43, keyString:Lorg/bouncycastle/asn1/BERConstructedOctetString;
    const/16 v58, 0x14

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1229
    .local v17, cSalt:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1231
    new-instance v21, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1232
    .local v21, certSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v16, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v58, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1233
    .local v16, cParams:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v12, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v58, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v59, "1.2.840.113549.1.12.1.6"

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v59

    move-object v0, v12

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1234
    .local v12, cAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v28, Ljava/util/Hashtable;

    invoke-direct/range {v28 .. v28}, Ljava/util/Hashtable;-><init>()V

    .line 1236
    .local v28, doneCerts:Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v22

    .line 1237
    .local v22, cs:Ljava/util/Enumeration;
    :goto_247
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_3c4

    .line 1241
    :try_start_24d
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/String;

    .line 1242
    .restart local v49       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v18

    .line 1243
    .local v18, cert:Ljava/security/cert/Certificate;
    const/4 v13, 0x0

    .line 1244
    .local v13, cAttrSet:Z
    new-instance v14, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509certType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v0, v14

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    .line 1247
    .local v14, cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v30, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1249
    .local v30, fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move/from16 v58, v0

    if-eqz v58, :cond_313

    .line 1251
    move-object/from16 v0, v18

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v9, v0

    .line 1255
    .restart local v9       #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v9

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v50

    check-cast v50, Lorg/bouncycastle/asn1/DERBMPString;

    .line 1256
    .restart local v50       #nm:Lorg/bouncycastle/asn1/DERBMPString;
    if-eqz v50, :cond_29e

    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_2b1

    .line 1258
    :cond_29e
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1264
    :cond_2b1
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v9

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v58

    if-nez v58, :cond_2d2

    .line 1266
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v59

    move-object v0, v9

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1269
    :cond_2d2
    invoke-interface {v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v29

    .line 1271
    .restart local v29       #e:Ljava/util/Enumeration;
    :goto_2d6
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_313

    .line 1273
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1274
    .restart local v51       #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v31, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1276
    .local v31, fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1277
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v9

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1278
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1280
    const/4 v13, 0x1

    .line 1281
    goto :goto_2d6

    .line 1284
    .end local v9           #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v31           #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v50           #nm:Lorg/bouncycastle/asn1/DERBMPString;
    .end local v51           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_313
    if-nez v13, :cond_37e

    .line 1286
    new-instance v31, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1288
    .restart local v31       #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1289
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1290
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1292
    new-instance v31, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v31           #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1294
    .restart local v31       #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1295
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    new-instance v59, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v59

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1297
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1300
    .end local v31           #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_37e
    new-instance v57, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v59

    new-instance v60, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v60

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v57 .. v60}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1302
    .local v57, sBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1304
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_24d .. :try_end_3a2} :catch_3a4

    goto/16 :goto_247

    .line 1306
    .end local v13           #cAttrSet:Z
    .end local v14           #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v18           #cert:Ljava/security/cert/Certificate;
    .end local v30           #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v49           #name:Ljava/lang/String;
    .end local v57           #sBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    :catch_3a4
    move-exception v58

    move-object/from16 v29, v58

    .line 1308
    .local v29, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v58, Ljava/io/IOException;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Error encoding certificate: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v58

    .line 1312
    .end local v29           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_3c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v22

    .line 1313
    :cond_3ce
    :goto_3ce
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_50c

    .line 1317
    :try_start_3d4
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1318
    .local v20, certId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certs:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/Certificate;

    .line 1319
    .restart local v18       #cert:Ljava/security/cert/Certificate;
    const/4 v13, 0x0

    .line 1321
    .restart local v13       #cAttrSet:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->keys:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    if-nez v58, :cond_3ce

    .line 1326
    new-instance v14, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509certType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v0, v14

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    .line 1329
    .restart local v14       #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v30, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1331
    .restart local v30       #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move/from16 v58, v0

    if-eqz v58, :cond_491

    .line 1333
    move-object/from16 v0, v18

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v9, v0

    .line 1337
    .restart local v9       #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object v0, v9

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v50

    check-cast v50, Lorg/bouncycastle/asn1/DERBMPString;

    .line 1338
    .restart local v50       #nm:Lorg/bouncycastle/asn1/DERBMPString;
    if-eqz v50, :cond_43d

    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-nez v58, :cond_450

    .line 1340
    :cond_43d
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1343
    :cond_450
    invoke-interface {v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v29

    .line 1345
    .local v29, e:Ljava/util/Enumeration;
    :goto_454
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_491

    .line 1347
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1348
    .restart local v51       #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v31, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1350
    .restart local v31       #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1351
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v9

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1352
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1354
    const/4 v13, 0x1

    .line 1355
    goto :goto_454

    .line 1358
    .end local v9           #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v31           #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v50           #nm:Lorg/bouncycastle/asn1/DERBMPString;
    .end local v51           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_491
    if-nez v13, :cond_4c6

    .line 1360
    new-instance v31, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1362
    .restart local v31       #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1363
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    new-instance v59, Lorg/bouncycastle/asn1/DERBMPString;

    move-object/from16 v0, v59

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1365
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1368
    .end local v31           #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4c6
    new-instance v57, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v59

    new-instance v60, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v60

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v57 .. v60}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1370
    .restart local v57       #sBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1372
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4ea
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3d4 .. :try_end_4ea} :catch_4ec

    goto/16 :goto_3ce

    .line 1374
    .end local v13           #cAttrSet:Z
    .end local v14           #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v18           #cert:Ljava/security/cert/Certificate;
    .end local v20           #certId:Ljava/lang/String;
    .end local v30           #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v57           #sBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    :catch_4ec
    move-exception v58

    move-object/from16 v29, v58

    .line 1376
    .local v29, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v58, Ljava/io/IOException;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Error encoding certificate: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v58

    .line 1380
    .end local v29           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_50c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v22

    .line 1381
    :cond_516
    :goto_516
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_5e0

    .line 1385
    :try_start_51c
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 1386
    .local v20, certId:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/Certificate;

    .line 1388
    .restart local v18       #cert:Ljava/security/cert/Certificate;
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    if-nez v58, :cond_516

    .line 1393
    new-instance v14, Lorg/bouncycastle/asn1/pkcs/CertBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->x509certType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v0, v14

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/CertBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V

    .line 1396
    .restart local v14       #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    new-instance v30, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1398
    .restart local v30       #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move/from16 v58, v0

    if-eqz v58, :cond_5c3

    .line 1400
    move-object/from16 v0, v18

    check-cast v0, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object v9, v0

    .line 1401
    .restart local v9       #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface {v9}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v29

    .line 1403
    .local v29, e:Ljava/util/Enumeration;
    :goto_567
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v58

    if-eqz v58, :cond_5c3

    .line 1405
    invoke-interface/range {v29 .. v29}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1406
    .restart local v51       #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v31, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v31 .. v31}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1408
    .restart local v31       #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v31

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1409
    new-instance v58, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v9

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1410
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_5a2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_51c .. :try_end_5a2} :catch_5a3

    goto :goto_567

    .line 1418
    .end local v9           #bagAttrs:Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v14           #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v18           #cert:Ljava/security/cert/Certificate;
    .end local v20           #certId:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v29           #e:Ljava/util/Enumeration;
    .end local v30           #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v31           #fSeq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v51           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :catch_5a3
    move-exception v58

    move-object/from16 v29, v58

    .line 1420
    .local v29, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v58, Ljava/io/IOException;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "Error encoding certificate: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v58

    .line 1414
    .end local v29           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v14       #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    .restart local v18       #cert:Ljava/security/cert/Certificate;
    .restart local v20       #certId:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .restart local v30       #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5c3
    :try_start_5c3
    new-instance v57, Lorg/bouncycastle/asn1/pkcs/SafeBag;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/pkcs/CertBag;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v59

    new-instance v60, Lorg/bouncycastle/asn1/DERSet;

    move-object/from16 v0, v60

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v57 .. v60}, Lorg/bouncycastle/asn1/pkcs/SafeBag;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 1416
    .restart local v57       #sBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v21

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_5de
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5c3 .. :try_end_5de} :catch_5a3

    goto/16 :goto_516

    .line 1424
    .end local v14           #cBag:Lorg/bouncycastle/asn1/pkcs/CertBag;
    .end local v18           #cert:Ljava/security/cert/Certificate;
    .end local v20           #certId:Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v30           #fName:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v57           #sBag:Lorg/bouncycastle/asn1/pkcs/SafeBag;
    :cond_5e0
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1426
    new-instance v25, Lorg/bouncycastle/asn1/DEROutputStream;

    .end local v25           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    move-object/from16 v0, v25

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1428
    .restart local v25       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    new-instance v58, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v58

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1430
    invoke-virtual/range {v25 .. v25}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 1432
    const-string v58, "1.2.840.113549.1.12.1.6"

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v59

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptData(Ljava/lang/String;[BLorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v19

    .line 1433
    .local v19, certBytes:[B
    new-instance v15, Lorg/bouncycastle/asn1/pkcs/EncryptedData;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v59

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object v0, v15

    move-object/from16 v1, v58

    move-object v2, v12

    move-object/from16 v3, v59

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1435
    .local v15, cInfo:Lorg/bouncycastle/asn1/pkcs/EncryptedData;
    const/16 v58, 0x0

    new-instance v59, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v60, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, v59

    move-object/from16 v1, v60

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v59, v11, v58

    .line 1437
    const/16 v58, 0x1

    new-instance v59, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v60, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/EncryptedData;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v61

    invoke-direct/range {v59 .. v61}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    aput-object v59, v11, v58

    .line 1439
    new-instance v7, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-direct {v7, v11}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V

    .line 1441
    .local v7, auth:Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 1443
    new-instance v10, Lorg/bouncycastle/asn1/BEROutputStream;

    invoke-direct {v10, v8}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1445
    .local v10, berOut:Lorg/bouncycastle/asn1/BEROutputStream;
    invoke-virtual {v10, v7}, Lorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1447
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v54

    .line 1449
    .local v54, pkg:[B
    new-instance v48, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v59, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v59

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v48

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1454
    .local v48, mainInfo:Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/16 v58, 0x14

    move/from16 v0, v58

    new-array v0, v0, [B

    move-object/from16 v46, v0

    .line 1455
    .local v46, mSalt:[B
    const/16 v32, 0x64

    .line 1457
    .local v32, itCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1459
    invoke-virtual/range {v48 .. v48}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v26

    .line 1461
    .local v26, data:[B
    const/16 v45, 0x0

    .line 1465
    .local v45, mData:Lorg/bouncycastle/asn1/pkcs/MacData;
    :try_start_695
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v58 .. v58}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v58

    const-string v59, "BC"

    invoke-static/range {v58 .. v59}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v47

    .line 1466
    .local v47, mac:Ljavax/crypto/Mac;
    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v58 .. v58}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v58

    const-string v59, "BC"

    invoke-static/range {v58 .. v59}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v41

    .line 1467
    .local v41, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v27, Ljavax/crypto/spec/PBEParameterSpec;

    move-object/from16 v0, v27

    move-object/from16 v1, v46

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1468
    .local v27, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v52, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, v52

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1470
    .local v52, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v58

    move-object/from16 v0, v47

    move-object/from16 v1, v58

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1472
    move-object/from16 v0, v47

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 1474
    invoke-virtual/range {v47 .. v47}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v56

    .line 1477
    .local v56, res:[B
    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v58, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v59, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    move-object v0, v5

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1479
    .local v5, algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v24, Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v24

    move-object v1, v5

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1481
    .local v24, dInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;
    new-instance v45, Lorg/bouncycastle/asn1/pkcs/MacData;

    .end local v45           #mData:Lorg/bouncycastle/asn1/pkcs/MacData;
    move-object/from16 v0, v45

    move-object/from16 v1, v24

    move-object/from16 v2, v46

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_702
    .catch Ljava/lang/Exception; {:try_start_695 .. :try_end_702} :catch_71c

    .line 1491
    .restart local v45       #mData:Lorg/bouncycastle/asn1/pkcs/MacData;
    new-instance v53, Lorg/bouncycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v53

    move-object/from16 v1, v48

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/Pfx;-><init>(Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/pkcs/MacData;)V

    .line 1493
    .local v53, pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;
    new-instance v10, Lorg/bouncycastle/asn1/BEROutputStream;

    .end local v10           #berOut:Lorg/bouncycastle/asn1/BEROutputStream;
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1495
    .restart local v10       #berOut:Lorg/bouncycastle/asn1/BEROutputStream;
    move-object v0, v10

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/BEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1496
    return-void

    .line 1483
    .end local v5           #algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v24           #dInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;
    .end local v27           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v41           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v45           #mData:Lorg/bouncycastle/asn1/pkcs/MacData;
    .end local v47           #mac:Ljavax/crypto/Mac;
    .end local v52           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    .end local v53           #pfx:Lorg/bouncycastle/asn1/pkcs/Pfx;
    .end local v56           #res:[B
    :catch_71c
    move-exception v58

    move-object/from16 v29, v58

    .line 1485
    .local v29, e:Ljava/lang/Exception;
    new-instance v58, Ljava/io/IOException;

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "error constructing MAC: "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v58
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "rand"

    .prologue
    .line 208
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 209
    return-void
.end method

.method protected unwrapKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .registers 21
    .parameter "algId"
    .parameter "data"
    .parameter "password"
    .parameter "wrongPKCS12Zero"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, algorithm:Ljava/lang/String;
    new-instance v11, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 558
    .local v11, pbeParams:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v12, Ljavax/crypto/spec/PBEKeySpec;

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 559
    .local v12, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    const/4 v10, 0x0

    .line 563
    .local v10, out:Ljava/security/PrivateKey;
    :try_start_1f
    const-string v13, "BC"

    invoke-static {v4, v13}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v9

    .line 565
    .local v9, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v6, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v13

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    invoke-direct {v6, v13, v14}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 569
    .local v6, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v9, v12}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 571
    .local v8, k:Ljavax/crypto/SecretKey;
    move-object v0, v8

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v9, v0

    .end local v9           #keyFact:Ljavax/crypto/SecretKeyFactory;
    move-object v0, v9

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 573
    const-string v13, "BC"

    invoke-static {v4, v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 575
    .local v5, cipher:Ljavax/crypto/Cipher;
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 578
    const-string v13, ""

    const/4 v14, 0x2

    move-object v0, v5

    move-object/from16 v1, p2

    move-object v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v10

    .end local v10           #out:Ljava/security/PrivateKey;
    check-cast v10, Ljava/security/PrivateKey;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5c} :catch_5d

    .line 585
    .restart local v10       #out:Ljava/security/PrivateKey;
    return-object v10

    .line 580
    .end local v5           #cipher:Ljavax/crypto/Cipher;
    .end local v6           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v8           #k:Ljavax/crypto/SecretKey;
    .end local v10           #out:Ljava/security/PrivateKey;
    :catch_5d
    move-exception v13

    move-object v7, v13

    .line 582
    .local v7, e:Ljava/lang/Exception;
    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exception unwrapping private key - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .registers 14
    .parameter "algorithm"
    .parameter "key"
    .parameter "pbeParams"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "BC"

    .line 595
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 600
    .local v5, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :try_start_7
    const-string v6, "BC"

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 602
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 606
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v6, "BC"

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 608
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 610
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_31

    move-result-object v4

    .line 617
    .local v4, out:[B
    return-object v4

    .line 612
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #out:[B
    :catch_31
    move-exception v6

    move-object v2, v6

    .line 614
    .local v2, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
