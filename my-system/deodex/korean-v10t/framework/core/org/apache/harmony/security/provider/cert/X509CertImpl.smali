.class public Lorg/apache/harmony/security/provider/cert/X509CertImpl;
.super Ljava/security/cert/X509Certificate;
.source "X509CertImpl.java"


# static fields
.field private static final serialVersionUID:J = 0x293f8c78c6c7611aL


# instance fields
.field private final certificate:Lorg/apache/harmony/security/x509/Certificate;

.field private volatile encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private notAfter:J

.field private notBefore:J

.field private nullSigAlgParams:Z

.field private publicKey:Ljava/security/PublicKey;

.field private serialNumber:Ljava/math/BigInteger;

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgOID:Ljava/lang/String;

.field private sigAlgParams:[B

.field private signature:[B

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private final tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

.field private tbsCertificate:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 83
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 115
    :try_start_7
    sget-object v1, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/Certificate;

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 117
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 118
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_21} :catch_22

    .line 122
    return-void

    .line 119
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/Certificate;)V
    .registers 4
    .parameter "certificate"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 129
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    .line 131
    invoke-virtual {p1}, Lorg/apache/harmony/security/x509/Certificate;->getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 132
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getExtensions()Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 133
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 143
    return-void
.end method

.method private fastVerify(Ljava/security/PublicKey;)V
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 576
    instance-of v5, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v5, :cond_10

    .line 577
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "security.15C1"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 579
    :cond_10
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v3, v0

    .line 581
    .local v3, rsaKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, algorithm:Ljava/lang/String;
    const-string v5, "MD2withRSA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "MD2withRSAEncryption"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "1.2.840.113549.1.1.2"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38

    const-string v5, "MD2/RSA"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 589
    :cond_38
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v5, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 592
    :cond_3e
    const-string v5, "with"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 593
    .local v2, i:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v5, :cond_72

    .line 596
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 599
    :cond_72
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v4

    .line 600
    .local v4, sig:[B
    iget-object v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    invoke-static {v5, v4, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->verifySignature([B[BLjava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 601
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "security.15C"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    :cond_8c
    return-void
.end method


# virtual methods
.method public checkValidity()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 155
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    .line 157
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 158
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 160
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, time:J
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_38

    .line 162
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    invoke-direct {v2}, Ljava/security/cert/CertificateNotYetValidException;-><init>()V

    throw v2

    .line 164
    :cond_38
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_44

    .line 165
    new-instance v2, Ljava/security/cert/CertificateExpiredException;

    invoke-direct {v2}, Ljava/security/cert/CertificateExpiredException;-><init>()V

    throw v2

    .line 167
    :cond_44
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 9
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    const-string v6, "current time: "

    .line 176
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2a

    .line 178
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 179
    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 181
    :cond_2a
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 182
    .local v0, time:J
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_5e

    .line 184
    new-instance v2, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", validation time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_5e
    iget-wide v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_8e

    .line 190
    new-instance v2, Ljava/security/cert/CertificateExpiredException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expiration time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_8e
    return-void
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_8

    .line 421
    const v0, 0x7fffffff

    .line 423
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfBasicConstrains()I

    move-result v0

    goto :goto_7
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 628
    const/4 v0, 0x0

    .line 631
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 473
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    if-nez v1, :cond_d

    .line 474
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    .line 476
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 477
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 478
    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 405
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 406
    const/4 v1, 0x0

    .line 409
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfExtendedKeyUsage()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 410
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 411
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 644
    :goto_6
    return-object v1

    .line 643
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/Extensions;->getExtensionByOID(Ljava/lang/String;)Lorg/apache/harmony/security/x509/Extension;

    move-result-object v0

    .line 644
    .local v0, ext:Lorg/apache/harmony/security/x509/Extension;
    if-nez v0, :cond_11

    move-object v1, v2

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extension;->getRawExtnValue()[B

    move-result-object v1

    goto :goto_6
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 452
    const/4 v1, 0x0

    .line 458
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfIssuerAlternativeName()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 459
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 460
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_10

    .line 222
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 224
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuerUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_10

    .line 234
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getIssuer()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 236
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getKeyUsage()[Z
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->valueOfKeyUsage()[Z

    move-result-object v0

    goto :goto_5
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 616
    const/4 v0, 0x0

    .line 619
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->getNonCriticalExtensions()Ljava/util/Set;

    move-result-object v0

    goto :goto_5
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 5

    .prologue
    .line 281
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 283
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 284
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 286
    :cond_28
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 5

    .prologue
    .line 268
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    .line 270
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    .line 271
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getValidity()Lorg/apache/harmony/security/x509/Validity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notAfter:J

    .line 273
    :cond_28
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->notBefore:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    if-nez v0, :cond_10

    .line 489
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    .line 491
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 210
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    .line 212
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 325
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 330
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 333
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 343
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 348
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgName:Ljava/lang/String;

    .line 351
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgOID:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 369
    :goto_6
    return-object v0

    .line 362
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    if-nez v0, :cond_20

    .line 363
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    .line 364
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    if-nez v0, :cond_20

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->nullSigAlgParams:Z

    move-object v0, v1

    .line 366
    goto :goto_6

    .line 369
    :cond_20
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->sigAlgParams:[B

    goto :goto_6
.end method

.method public getSignature()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    if-nez v1, :cond_d

    .line 311
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    .line 313
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 314
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 432
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_6

    .line 433
    const/4 v1, 0x0

    .line 439
    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfSubjectAlternativeName()Ljava/util/List;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 440
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 441
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_10

    .line 246
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 248
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubjectUniqueID()[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_10

    .line 258
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getSubject()Lorg/apache/harmony/security/x501/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/Name;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 260
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getTBSCertificate()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v1, :cond_d

    .line 297
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 299
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 300
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->getVersion()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_6

    .line 653
    const/4 v0, 0x0

    .line 656
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hasUnsupportedCritical()Z

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
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
    .line 513
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "withRSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 514
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->fastVerify(Ljava/security/PublicKey;)V

    .line 530
    :cond_f
    return-void

    .line 519
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 520
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 522
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v1, :cond_27

    .line 523
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 526
    :cond_27
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 527
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_f

    .line 528
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.15C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
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
    .line 543
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "withRSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 544
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->fastVerify(Ljava/security/PublicKey;)V

    .line 561
    :cond_f
    return-void

    .line 549
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 551
    .local v0, signature:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 553
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    if-nez v1, :cond_27

    .line 554
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCert:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/TBSCertificate;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    .line 557
    :cond_27
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->tbsCertificate:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 558
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->certificate:Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Certificate;->getSignatureValue()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_f

    .line 559
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.15C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
