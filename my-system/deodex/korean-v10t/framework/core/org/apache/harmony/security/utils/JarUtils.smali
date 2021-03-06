.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .registers 8
    .parameter "signer"
    .parameter "candidates"

    .prologue
    .line 201
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 202
    .local v0, chain:Ljava/util/LinkedList;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 206
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    check-cast p0, [Ljava/security/cert/X509Certificate;

    move-object v4, p0

    .line 224
    :goto_23
    return-object v4

    .line 209
    .restart local p0
    :cond_24
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 211
    .local v2, issuer:Ljava/security/Principal;
    const/4 v1, 0x1

    .line 213
    .local v1, count:I
    :goto_29
    invoke-static {v2, p1}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 214
    .local v3, issuerCert:Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_3b

    .line 224
    :cond_2f
    new-array v4, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    check-cast p0, [Ljava/security/cert/X509Certificate;

    move-object v4, p0

    goto :goto_23

    .line 217
    .restart local p0
    :cond_3b
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 219
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 222
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_29
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .registers 4
    .parameter "issuer"
    .parameter "candidates"

    .prologue
    .line 228
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_16

    .line 229
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 230
    aget-object v1, p1, v0

    .line 233
    :goto_12
    return-object v1

    .line 228
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .registers 9
    .parameter "signature"
    .parameter "signatureBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 77
    .local v0, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object p1, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .end local p1
    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 78
    .local p1, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {p1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v3

    .line 79
    .local v3, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v3, :cond_1f

    .line 80
    new-instance p0, Ljava/io/IOException;

    .end local p0
    const-string p1, "security.173"

    .end local p1           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-static {p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    .restart local p0
    .restart local p1       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_1f
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object p1

    .line 83
    .local p1, encCerts:Ljava/util/Collection;
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .end local v0           #bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    if-eqz v0, :cond_2b

    .line 84
    const/4 p0, 0x0

    .line 197
    .end local v3           #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local p0
    .end local p1           #encCerts:Ljava/util/Collection;
    :goto_2a
    return-object p0

    .line 86
    .restart local v3       #signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p0
    .restart local p1       #encCerts:Ljava/util/Collection;
    :cond_2b
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 87
    .local v0, certs:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 88
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    move p1, v1

    .end local v1           #i:I
    .local p1, i:I
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 89
    add-int/lit8 v1, p1, 0x1

    .end local p1           #i:I
    .restart local v1       #i:I
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v5, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    aput-object v5, v0, p1

    move p1, v1

    .end local v1           #i:I
    .restart local p1       #i:I
    goto :goto_37

    .line 92
    :cond_4e
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object p1

    .line 94
    .local p1, sigInfos:Ljava/util/List;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 95
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 101
    .local v5, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 104
    .local v1, issuer:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 107
    .local v3, snum:Ljava/math/BigInteger;
    const/4 v2, 0x0

    .line 108
    .local v2, issuerSertIndex:I
    const/4 p1, 0x0

    .local p1, i:I
    :goto_69
    array-length v4, v0

    if-ge p1, v4, :cond_165

    .line 109
    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 111
    move v1, p1

    .end local v2           #issuerSertIndex:I
    .local v1, issuerSertIndex:I
    move v3, v1

    .line 115
    .end local v1           #issuerSertIndex:I
    .local v3, issuerSertIndex:I
    :goto_86
    array-length v1, v0

    if-ne p1, v1, :cond_90

    .line 116
    const/4 p0, 0x0

    goto :goto_2a

    .line 97
    .end local v5           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .local v2, it:Ljava/util/Iterator;
    .local v3, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    .local p1, sigInfos:Ljava/util/List;
    :cond_8b
    const/4 p0, 0x0

    goto :goto_2a

    .line 108
    .local v1, issuer:Ljavax/security/auth/x500/X500Principal;
    .local v2, issuerSertIndex:I
    .local v3, snum:Ljava/math/BigInteger;
    .restart local v5       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .local p1, i:I
    :cond_8d
    add-int/lit8 p1, p1, 0x1

    goto :goto_69

    .line 119
    .end local v1           #issuer:Ljavax/security/auth/x500/X500Principal;
    .end local v2           #issuerSertIndex:I
    .local v3, issuerSertIndex:I
    :cond_90
    aget-object p1, v0, v3

    .end local p1           #i:I
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 120
    new-instance p0, Ljava/lang/SecurityException;

    .end local p0
    const-string p1, "security.174"

    invoke-static {p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    .restart local p0
    :cond_a4
    const/4 v4, 0x0

    .line 125
    .local v4, sig:Ljava/security/Signature;
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getdigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, da:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, dea:Ljava/lang/String;
    const/4 p1, 0x0

    .line 128
    .local p1, alg:Ljava/lang/String;
    if-eqz v1, :cond_162

    if-eqz v2, :cond_162

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #alg:Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "with"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    .restart local p1       #alg:Ljava/lang/String;
    :try_start_c9
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_cc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c9 .. :try_end_cc} :catch_d5

    move-result-object v2

    .line 139
    .end local v4           #sig:Ljava/security/Signature;
    .local v2, sig:Ljava/security/Signature;
    :goto_cd
    if-nez v2, :cond_15f

    .line 140
    move-object p1, v1

    .line 141
    if-nez p1, :cond_d8

    .line 142
    const/4 p0, 0x0

    goto/16 :goto_2a

    .line 137
    .local v2, dea:Ljava/lang/String;
    .restart local v4       #sig:Ljava/security/Signature;
    :catch_d5
    move-exception v2

    .end local v2           #dea:Ljava/lang/String;
    move-object v2, v4

    .end local v4           #sig:Ljava/security/Signature;
    .local v2, sig:Ljava/security/Signature;
    goto :goto_cd

    .line 149
    :cond_d8
    :try_start_d8
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_db
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d8 .. :try_end_db} :catch_10a

    move-result-object v1

    .end local v2           #sig:Ljava/security/Signature;
    .local v1, sig:Ljava/security/Signature;
    move-object v4, v1

    .line 155
    .end local v1           #sig:Ljava/security/Signature;
    .restart local v4       #sig:Ljava/security/Signature;
    :goto_dd
    aget-object p1, v0, v3

    .end local p1           #alg:Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 160
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object p1

    .line 162
    .local p1, atr:Ljava/util/List;
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    .line 163
    .local v2, sfBytes:[B
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    .line 165
    if-nez p1, :cond_10e

    .line 166
    invoke-virtual {v4, v2}, Ljava/security/Signature;->update([B)V

    .line 193
    .end local p0
    .end local p1           #atr:Ljava/util/List;
    :cond_f4
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_157

    .line 194
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "security.176"

    invoke-static {p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 151
    .end local v4           #sig:Ljava/security/Signature;
    .local v1, da:Ljava/lang/String;
    .local v2, sig:Ljava/security/Signature;
    .restart local p0
    .local p1, alg:Ljava/lang/String;
    :catch_10a
    move-exception p0

    .line 152
    .local p0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 p0, 0x0

    goto/16 :goto_2a

    .line 168
    .end local v1           #da:Ljava/lang/String;
    .local v2, sfBytes:[B
    .restart local v4       #sig:Ljava/security/Signature;
    .local p0, signature:Ljava/io/InputStream;
    .local p1, atr:Ljava/util/List;
    :cond_10e
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object p0

    .end local p0           #signature:Ljava/io/InputStream;
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 172
    const/4 v1, 0x0

    .line 173
    .local v1, existingDigest:[B
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, it:Ljava/util/Iterator;
    :cond_11a
    :goto_11a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_137

    .line 174
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 175
    .local p0, a:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {p0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object p0

    .end local p0           #a:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object p0

    sget-object v6, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static {p0, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_11a

    goto :goto_11a

    .line 179
    :cond_137
    if-eqz v1, :cond_f4

    .line 184
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;

    move-result-object p0

    .line 186
    .local p0, md:Ljava/security/MessageDigest;
    invoke-virtual {p0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 187
    .local p0, computedDigest:[B
    invoke-static {v1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    .end local p0           #computedDigest:[B
    if-nez p0, :cond_f4

    .line 188
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "security.175"

    .end local p1           #it:Ljava/util/Iterator;
    invoke-static {p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    .end local v1           #existingDigest:[B
    :cond_157
    aget-object p0, v0, v3

    invoke-static {p0, v0}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    goto/16 :goto_2a

    .end local v4           #sig:Ljava/security/Signature;
    .local v1, da:Ljava/lang/String;
    .local v2, sig:Ljava/security/Signature;
    .local p0, signature:Ljava/io/InputStream;
    .local p1, alg:Ljava/lang/String;
    :cond_15f
    move-object v4, v2

    .end local v2           #sig:Ljava/security/Signature;
    .restart local v4       #sig:Ljava/security/Signature;
    goto/16 :goto_dd

    .local v2, dea:Ljava/lang/String;
    :cond_162
    move-object v2, v4

    .end local v4           #sig:Ljava/security/Signature;
    .local v2, sig:Ljava/security/Signature;
    goto/16 :goto_cd

    .local v1, issuer:Ljavax/security/auth/x500/X500Principal;
    .local v2, issuerSertIndex:I
    .local v3, snum:Ljava/math/BigInteger;
    .local p1, i:I
    :cond_165
    move v3, v2

    .end local v2           #issuerSertIndex:I
    .local v3, issuerSertIndex:I
    goto/16 :goto_86
.end method
