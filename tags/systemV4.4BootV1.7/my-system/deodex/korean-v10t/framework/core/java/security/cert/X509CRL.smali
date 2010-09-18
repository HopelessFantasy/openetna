.class public abstract Ljava/security/cert/X509CRL;
.super Ljava/security/cert/CRL;
.source "X509CRL.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 59
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CRL;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x0

    .line 72
    if-ne p1, p0, :cond_5

    .line 73
    const/4 v3, 0x1

    .line 82
    :goto_4
    return v3

    .line 75
    :cond_5
    instance-of v3, p1, Ljava/security/cert/X509CRL;

    if-nez v3, :cond_b

    move v3, v5

    .line 76
    goto :goto_4

    .line 78
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v2, v0

    .line 80
    .local v2, obj:Ljava/security/cert/X509CRL;
    :try_start_f
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1a
    .catch Ljava/security/cert/CRLException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result v3

    goto :goto_4

    .line 81
    :catch_1c
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/security/cert/CRLException;
    move v3, v5

    .line 82
    goto :goto_4
.end method

.method public abstract getEncoded()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getIssuerDN()Ljava/security/Principal;
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 192
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 195
    .local v2, factory:Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 198
    .local v0, crl:Ljava/security/cert/X509CRL;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v3

    return-object v3

    .line 200
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    .end local v2           #factory:Ljava/security/cert/CertificateFactory;
    :catch_1a
    move-exception v3

    move-object v1, v3

    .line 201
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "security.59"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public abstract getNextUpdate()Ljava/util/Date;
.end method

.method public abstract getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .registers 3
    .parameter "certificate"

    .prologue
    .line 243
    if-nez p1, :cond_8

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 246
    :cond_8
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRevokedCertificates()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Ljava/security/cert/X509CRLEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSigAlgName()Ljava/lang/String;
.end method

.method public abstract getSigAlgOID()Ljava/lang/String;
.end method

.method public abstract getSigAlgParams()[B
.end method

.method public abstract getSignature()[B
.end method

.method public abstract getTBSCertList()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation
.end method

.method public abstract getThisUpdate()Ljava/util/Date;
.end method

.method public abstract getVersion()I
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, res:I
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v0

    .line 96
    .local v0, array:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    array-length v4, v0

    if-ge v2, v4, :cond_11

    .line 97
    aget-byte v4, v0, v2
    :try_end_b
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_b} :catch_13

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    move v4, v3

    .line 101
    .end local v0           #array:[B
    .end local v2           #i:I
    :goto_12
    return v4

    .line 100
    :catch_13
    move-exception v4

    move-object v1, v4

    .line 101
    .local v1, e:Ljava/security/cert/CRLException;
    const/4 v4, 0x0

    goto :goto_12
.end method

.method public abstract verify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method public abstract verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method
