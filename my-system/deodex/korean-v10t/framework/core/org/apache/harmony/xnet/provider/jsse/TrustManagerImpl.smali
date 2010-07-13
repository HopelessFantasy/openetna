.class public Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;
.super Ljava/lang/Object;
.source "TrustManagerImpl.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private err:Ljava/lang/Exception;

.field private factory:Ljava/security/cert/CertificateFactory;

.field private params:Ljava/security/cert/PKIXParameters;

.field private validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 10
    .parameter "ks"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 76
    :try_start_6
    const-string v6, "PKIX"

    invoke-static {v6}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 77
    const-string v6, "X509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, nameConstrains:[B
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 82
    .local v5, trusted:Ljava/util/Set;
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, en:Ljava/util/Enumeration;
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 83
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 85
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_20

    .line 86
    new-instance v6, Ljava/security/cert/TrustAnchor;

    invoke-direct {v6, v1, v4}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3d

    goto :goto_20

    .line 91
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v3           #en:Ljava/util/Enumeration;
    .end local v4           #nameConstrains:[B
    .end local v5           #trusted:Ljava/util/Set;
    :catch_3d
    move-exception v6

    move-object v2, v6

    .line 92
    .local v2, e:Ljava/lang/Exception;
    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 94
    .end local v2           #e:Ljava/lang/Exception;
    :goto_41
    return-void

    .line 89
    .restart local v3       #en:Ljava/util/Enumeration;
    .restart local v4       #nameConstrains:[B
    .restart local v5       #trusted:Ljava/util/Set;
    :cond_42
    :try_start_42
    new-instance v6, Ljava/security/cert/PKIXParameters;

    invoke-direct {v6, v5}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    .line 90
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_3d

    goto :goto_41
.end method

.method private isDirectlyTrustedCert([Ljava/security/cert/X509Certificate;)Z
    .registers 10
    .parameter "chain"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    array-length v5, p1

    if-ne v5, v7, :cond_33

    .line 199
    const/4 v5, 0x0

    :try_start_6
    aget-object v5, p1, v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 200
    .local v2, questionable:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    .line 202
    .local v0, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 203
    .local v3, trustAnchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    .line 205
    .local v4, trusted:[B
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_2d
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_2d} :catch_32

    move-result v5

    if-eqz v5, :cond_16

    move v5, v7

    .line 214
    .end local v0           #anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #questionable:[B
    .end local v3           #trustAnchor:Ljava/security/cert/TrustAnchor;
    .end local v4           #trusted:[B
    :goto_31
    return v5

    .line 209
    :catch_32
    move-exception v5

    :cond_33
    move v5, v6

    .line 214
    goto :goto_31
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 8
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 113
    if-eqz p1, :cond_d

    array-length v2, p1

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 115
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null or zero-length parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_15
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v2, :cond_21

    .line 118
    new-instance v2, Ljava/security/cert/CertificateException;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 124
    :cond_21
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->isDirectlyTrustedCert([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 144
    :goto_27
    return-void

    .line 130
    :cond_28
    :try_start_28
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 131
    .local v0, certPath:Ljava/security/cert/CertPath;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 135
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Certificate chain error"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_28 .. :try_end_56} :catch_56
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_28 .. :try_end_56} :catch_66

    .line 139
    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_56
    move-exception v2

    move-object v1, v2

    .line 140
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 137
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0       #certPath:Ljava/security/cert/CertPath;
    :cond_5e
    :try_start_5e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2, v0, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_65
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5e .. :try_end_65} :catch_56
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5e .. :try_end_65} :catch_66

    goto :goto_27

    .line 141
    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_66
    move-exception v2

    move-object v1, v2

    .line 142
    .local v1, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 8
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 152
    if-eqz p1, :cond_d

    array-length v2, p1

    if-eqz v2, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_15

    .line 154
    :cond_d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null or zero-length parameter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_15
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v2, :cond_21

    .line 157
    new-instance v2, Ljava/security/cert/CertificateException;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 163
    :cond_21
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->isDirectlyTrustedCert([Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 183
    :goto_27
    return-void

    .line 169
    :cond_28
    :try_start_28
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 170
    .local v0, certPath:Ljava/security/cert/CertPath;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 174
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Certificate chain error"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_56
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_28 .. :try_end_56} :catch_56
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_28 .. :try_end_56} :catch_66

    .line 178
    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_56
    move-exception v2

    move-object v1, v2

    .line 179
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 176
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0       #certPath:Ljava/security/cert/CertPath;
    :cond_5e
    :try_start_5e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2, v0, v3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_65
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5e .. :try_end_65} :catch_56
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5e .. :try_end_65} :catch_66

    goto :goto_27

    .line 180
    .end local v0           #certPath:Ljava/security/cert/CertPath;
    :catch_66
    move-exception v2

    move-object v1, v2

    .line 181
    .local v1, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 7

    .prologue
    .line 222
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    if-nez v5, :cond_8

    .line 223
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .line 231
    .end local p0
    :goto_7
    return-object v5

    .line 225
    .restart local p0
    :cond_8
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    .line 226
    .local v0, anchors:Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    new-array v1, v5, [Ljava/security/cert/X509Certificate;

    .line 227
    .local v1, certs:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 228
    .local v2, i:I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p0
    .local v4, it:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 229
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v1, v2

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_19

    :cond_2f
    move-object v5, v1

    .line 231
    goto :goto_7
.end method

.method public indexTrustAnchors()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->params:Ljava/security/cert/PKIXParameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 104
    return-void
.end method
