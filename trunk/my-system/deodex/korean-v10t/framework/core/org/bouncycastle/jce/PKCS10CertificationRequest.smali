.class public Lorg/bouncycastle/jce/PKCS10CertificationRequest;
.super Lorg/bouncycastle/asn1/pkcs/CertificationRequest;
.source "PKCS10CertificationRequest.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;

.field private static keyAlgorithms:Ljava/util/Hashtable;

.field private static noParams:Ljava/util/Set;

.field private static oids:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const-string v8, "SHA1WITHRSA"

    const-string v7, "SHA1WITHDSA"

    const-string v6, "1.2.840.10040.4.3"

    const-string v5, "1.2.840.113549.1.1.5"

    const-string v4, "1.2.840.113549.1.1.4"

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    .line 69
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    .line 79
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RSAWITHMD5"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSA"

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSAENCRYPTION"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHRSA"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSAENCRYPTION"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHRSA"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSAENCRYPTION"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHRSA"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSAENCRYPTION"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHRSA"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RSAWITHSHA1"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "1.2.840.10040.4.3"

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHDSA"

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHDSA"

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA224WITHECDSA"

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA256WITHECDSA"

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA384WITHECDSA"

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA512WITHECDSA"

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHGOST3410"

    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "GOST3410WITHGOST3411"

    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    const-string v1, "GOST3411WITHECGOST3410"

    sget-object v2, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA224WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA256WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA384WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA512WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GOST3411WITHGOST3410"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v2, "MD5WITHRSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "1.2.840.10040.4.3"

    invoke-direct {v1, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHDSA"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA1WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA224WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA256WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA384WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA512WITHECDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA1WITHRSA"

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA1WITHDSA"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA224WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SHA256WITHDSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "RSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DSA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .registers 13
    .parameter "signatureAlgorithm"
    .parameter "subject"
    .parameter "key"
    .parameter "attributes"
    .parameter "signingKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p2}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    const-string v6, "BC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 14
    .parameter "signatureAlgorithm"
    .parameter "subject"
    .parameter "key"
    .parameter "attributes"
    .parameter "signingKey"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p2}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->convertName(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;)V
    .registers 13
    .parameter "signatureAlgorithm"
    .parameter "subject"
    .parameter "key"
    .parameter "attributes"
    .parameter "signingKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v6, "BC"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/X509Name;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1Set;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .registers 22
    .parameter "signatureAlgorithm"
    .parameter "subject"
    .parameter "key"
    .parameter "attributes"
    .parameter "signingKey"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;-><init>()V

    .line 261
    sget-object v12, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->algorithms:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 263
    .local v11, sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v11, :cond_19

    .line 265
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Unknown signature type requested"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 268
    :cond_19
    if-nez p2, :cond_23

    .line 270
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "subject must not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 273
    :cond_23
    if-nez p3, :cond_2d

    .line 275
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "public key must not be null"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 278
    :cond_2d
    sget-object v12, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->noParams:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9f

    .line 280
    new-instance v12, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v12, v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    iput-object v12, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 287
    :goto_3c
    invoke-interface/range {p3 .. p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    .line 288
    .local v6, bytes:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 289
    .local v4, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v7, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v7, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 293
    .local v7, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_4a
    new-instance v12, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    new-instance v13, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p3

    .end local p3
    check-cast p3, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object v0, v12

    move-object/from16 v1, p2

    move-object v2, v13

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v12, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_65} :catch_a8

    .line 300
    const/4 v10, 0x0

    .line 304
    .local v10, sig:Ljava/security/Signature;
    :try_start_66
    iget-object v12, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_76
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_66 .. :try_end_76} :catch_b2

    move-result-object v10

    .line 311
    :goto_77
    move-object v0, v10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 315
    :try_start_7d
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 316
    .local v5, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v8, v5}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 318
    .local v8, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    iget-object v12, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v8, v12}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/security/Signature;->update([B)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_93} :catch_bd

    .line 327
    new-instance v12, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v10}, Ljava/security/Signature;->sign()[B

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v12, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigBits:Lorg/bouncycastle/asn1/DERBitString;

    .line 328
    return-void

    .line 284
    .end local v4           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v5           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v6           #bytes:[B
    .end local v7           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v8           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v10           #sig:Ljava/security/Signature;
    .restart local p3
    :cond_9f
    new-instance v12, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v13, 0x0

    invoke-direct {v12, v11, v13}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v12, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_3c

    .line 295
    .end local p3
    .restart local v4       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v6       #bytes:[B
    .restart local v7       #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_a8
    move-exception v12

    move-object v9, v12

    .line 297
    .local v9, e:Ljava/io/IOException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "can\'t encode public key"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 306
    .end local v9           #e:Ljava/io/IOException;
    .restart local v10       #sig:Ljava/security/Signature;
    :catch_b2
    move-exception v12

    move-object v9, v12

    .line 308
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v10

    goto :goto_77

    .line 322
    .end local v9           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_bd
    move-exception v12

    move-object v9, v12

    .line 324
    .local v9, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "exception encoding TBS cert request - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .parameter "sequence"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 187
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 180
    invoke-static {p1}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->toDERSequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/pkcs/CertificationRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 181
    return-void
.end method

.method private static convertName(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 4
    .parameter "name"

    .prologue
    .line 209
    :try_start_0
    new-instance v1, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 211
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 213
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "can\'t convert name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static toDERSequence([B)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 6
    .parameter "bytes"

    .prologue
    .line 162
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 163
    .local v0, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    .local v1, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object p0

    .line 167
    .end local v0           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v1           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_11
    move-exception v3

    move-object v2, v3

    .line 169
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "badly encoded request"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getEncoded()[B
    .registers 6

    .prologue
    .line 438
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 439
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 443
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    .line 450
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 445
    :catch_12
    move-exception v2

    .line 447
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 337
    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 9
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v5, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    .line 346
    .local v3, subjectPKInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERBitString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 347
    .local v4, xspec:Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 353
    .local v1, keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_18
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_27} :catch_29
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_18 .. :try_end_27} :catch_4d

    move-result-object v5

    .line 364
    :goto_28
    return-object v5

    .line 355
    :catch_29
    move-exception v5

    move-object v0, v5

    .line 360
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_2b
    sget-object v5, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 362
    sget-object v5, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->keyAlgorithms:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, keyAlgorithm:Ljava/lang/String;
    invoke-static {v2, p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto :goto_28

    .line 367
    .end local v2           #keyAlgorithm:Ljava/lang/String;
    :cond_4c
    throw v0
    :try_end_4d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2b .. :try_end_4d} :catch_4d

    .line 370
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_4d
    move-exception v5

    move-object v0, v5

    .line 372
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "error decoding public key"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public verify()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 383
    const-string v0, "BC"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->verify(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;)Z
    .registers 10
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v3, 0x0

    .line 395
    .local v3, sig:Ljava/security/Signature;
    :try_start_1
    iget-object v5, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_37

    move-result-object v3

    .line 414
    :goto_f
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 418
    :try_start_16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 419
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 421
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    iget-object v5, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->reqInfo:Lorg/bouncycastle/asn1/pkcs/CertificationRequestInfo;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_5b

    .line 430
    iget-object v5, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigBits:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    return v5

    .line 397
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :catch_37
    move-exception v5

    move-object v2, v5

    .line 402
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    sget-object v5, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    iget-object v6, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5a

    .line 404
    sget-object v5, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->oids:Ljava/util/Hashtable;

    iget-object v6, p0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 406
    .local v4, signatureAlgorithm:Ljava/lang/String;
    invoke-static {v4, p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 407
    goto :goto_f

    .line 410
    .end local v4           #signatureAlgorithm:Ljava/lang/String;
    :cond_5a
    throw v2

    .line 425
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_5b
    move-exception v5

    move-object v2, v5

    .line 427
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception encoding TBS cert request - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
