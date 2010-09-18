.class Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# static fields
.field private static final sInstance:Landroid/net/http/CertificateChainValidator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Landroid/net/http/CertificateChainValidator;

    invoke-direct {v0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    sput-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 6
    .parameter "socket"
    .parameter "errorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "validation error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 312
    if-eqz p1, :cond_24

    .line 313
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 314
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-eqz v0, :cond_21

    .line 315
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 318
    :cond_21
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 321
    .end local v0           #session:Ljavax/net/ssl/SSLSession;
    :cond_24
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "socket"
    .parameter "errorMessage"
    .parameter "defaultErrorMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    if-eqz p2, :cond_7

    move-object v0, p2

    :goto_3
    invoke-direct {p0, p1, v0}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 304
    return-void

    :cond_7
    move-object v0, p3

    .line 302
    goto :goto_3
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Landroid/net/http/CertificateChainValidator;->sInstance:Landroid/net/http/CertificateChainValidator;

    return-object v0
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .registers 15
    .parameter "connection"
    .parameter "sslSocket"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v8, 0x0

    .line 77
    .local v8, serverCertificates:[Ljava/security/cert/X509Certificate;
    const/4 v9, 0x1

    :try_start_2
    invoke-virtual {p2, v9}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 78
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_2f

    .line 86
    :goto_8
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 89
    .local v5, peerCertificates:[Ljava/security/cert/Certificate;
    if-eqz v5, :cond_15

    array-length v9, v5

    if-gtz v9, :cond_3b

    .line 90
    :cond_15
    const-string v9, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v9}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 110
    :cond_1a
    :goto_1a
    const/4 v9, 0x0

    aget-object v0, v8, v9

    .line 111
    .local v0, currCertificate:Ljava/security/cert/X509Certificate;
    if-nez v0, :cond_60

    .line 112
    const-string v9, "certificate for this site is null"

    invoke-direct {p0, p2, v9}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 135
    :cond_24
    :try_start_24
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v9

    const-string v10, "RSA"

    invoke-interface {v9, v8, v10}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/security/cert/CertificateException; {:try_start_24 .. :try_end_2d} :catch_8a

    .line 139
    const/4 v9, 0x0

    .line 296
    :goto_2e
    return-object v9

    .line 79
    .end local v0           #currCertificate:Ljava/security/cert/X509Certificate;
    .end local v5           #peerCertificates:[Ljava/security/cert/Certificate;
    :catch_2f
    move-exception v9

    move-object v1, v9

    .line 80
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v9, v10}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 93
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #peerCertificates:[Ljava/security/cert/Certificate;
    :cond_3b
    array-length v9, v5

    new-array v8, v9, [Ljava/security/cert/X509Certificate;

    .line 95
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3f
    array-length v9, v5

    if-ge v4, v9, :cond_4d

    .line 96
    aget-object v0, v5, v4

    check-cast v0, Ljava/security/cert/X509Certificate;

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v8, v4

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 101
    :cond_4d
    if-eqz p1, :cond_1a

    .line 102
    const/4 v9, 0x0

    aget-object v9, v8, v9

    if-eqz v9, :cond_1a

    .line 103
    new-instance v9, Landroid/net/http/SslCertificate;

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-direct {v9, v10}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v9}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_1a

    .line 115
    .end local v4           #i:I
    .restart local v0       #currCertificate:Ljava/security/cert/X509Certificate;
    :cond_60
    invoke-static {v0, p3}, Landroid/net/http/DomainNameChecker;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "certificate not for this host: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, errorMessage:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 123
    new-instance v9, Landroid/net/http/SslError;

    const/4 v10, 0x2

    invoke-direct {v9, v10, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_2e

    .line 140
    .end local v3           #errorMessage:Ljava/lang/String;
    :catch_8a
    move-exception v9

    move-object v1, v9

    .line 142
    .local v1, e:Ljava/security/cert/CertificateException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to pre-validate the certificate chain, error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-interface {v9}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 150
    const/4 v2, 0x0

    .line 155
    .local v2, error:Landroid/net/http/SslError;
    array-length v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v0, v8, v9

    .line 157
    if-nez v0, :cond_ba

    .line 158
    const-string v9, "root certificate is null"

    invoke-direct {p0, p2, v9}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 163
    :cond_ba
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/security/cert/X509Certificate;

    const/4 v9, 0x0

    aput-object v0, v7, v9

    .line 165
    .local v7, rootCertificateChain:[Ljava/security/cert/X509Certificate;
    :try_start_c0
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v9

    const-string v10, "RSA"

    invoke-interface {v9, v7, v10}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_c9
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_c0 .. :try_end_c9} :catch_f8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_c0 .. :try_end_c9} :catch_10c
    .catch Ljava/security/cert/CertificateException; {:try_start_c0 .. :try_end_c9} :catch_120

    .line 209
    .end local v1           #e:Ljava/security/cert/CertificateException;
    :goto_c9
    array-length v9, v8

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v6, v8, v9

    .line 212
    .local v6, prevCertificate:Ljava/security/cert/X509Certificate;
    array-length v9, v8

    const/4 v10, 0x2

    sub-int v4, v9, v10

    .restart local v4       #i:I
    :goto_d2
    if-ltz v4, :cond_18f

    .line 213
    aget-object v0, v8, v4

    .line 216
    if-nez v0, :cond_dd

    .line 217
    const-string v9, "null certificate in the chain"

    invoke-direct {p0, p2, v9}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 222
    :cond_dd
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_135

    .line 224
    const-string v3, "not trusted by chain"

    .line 227
    .restart local v3       #errorMessage:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 230
    new-instance v9, Landroid/net/http/SslError;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_2e

    .line 167
    .end local v3           #errorMessage:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #prevCertificate:Ljava/security/cert/X509Certificate;
    .restart local v1       #e:Ljava/security/cert/CertificateException;
    :catch_f8
    move-exception v9

    move-object v1, v9

    .line 168
    .local v1, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3       #errorMessage:Ljava/lang/String;
    if-nez v3, :cond_102

    .line 170
    const-string v3, "root certificate has expired"

    .line 174
    :cond_102
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 177
    new-instance v2, Landroid/net/http/SslError;

    .end local v2           #error:Landroid/net/http/SslError;
    const/4 v9, 0x1

    invoke-direct {v2, v9, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 203
    .restart local v2       #error:Landroid/net/http/SslError;
    goto :goto_c9

    .line 179
    .end local v3           #errorMessage:Ljava/lang/String;
    .local v1, e:Ljava/security/cert/CertificateException;
    :catch_10c
    move-exception v9

    move-object v1, v9

    .line 180
    .local v1, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #errorMessage:Ljava/lang/String;
    if-nez v3, :cond_116

    .line 182
    const-string v3, "root certificate not valid yet"

    .line 186
    :cond_116
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 189
    new-instance v2, Landroid/net/http/SslError;

    .end local v2           #error:Landroid/net/http/SslError;
    const/4 v9, 0x0

    invoke-direct {v2, v9, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .line 203
    .restart local v2       #error:Landroid/net/http/SslError;
    goto :goto_c9

    .line 191
    .end local v3           #errorMessage:Ljava/lang/String;
    .local v1, e:Ljava/security/cert/CertificateException;
    :catch_120
    move-exception v9

    move-object v1, v9

    .line 192
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 193
    .restart local v3       #errorMessage:Ljava/lang/String;
    if-nez v3, :cond_12a

    .line 194
    const-string v3, "root certificate not trusted"

    .line 198
    :cond_12a
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 201
    new-instance v9, Landroid/net/http/SslError;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_2e

    .line 235
    .end local v1           #e:Ljava/security/cert/CertificateException;
    .end local v3           #errorMessage:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v6       #prevCertificate:Ljava/security/cert/X509Certificate;
    :cond_135
    :try_start_135
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_13c
    .catch Ljava/security/GeneralSecurityException; {:try_start_135 .. :try_end_13c} :catch_143

    .line 252
    :try_start_13c
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_13f
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_13c .. :try_end_13f} :catch_158
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_13c .. :try_end_13f} :catch_174

    .line 285
    :cond_13f
    :goto_13f
    move-object v6, v0

    .line 212
    add-int/lit8 v4, v4, -0x1

    goto :goto_d2

    .line 236
    :catch_143
    move-exception v9

    move-object v1, v9

    .line 237
    .local v1, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 238
    .restart local v3       #errorMessage:Ljava/lang/String;
    if-nez v3, :cond_14d

    .line 239
    const-string v3, "not trusted by chain"

    .line 243
    :cond_14d
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 246
    new-instance v9, Landroid/net/http/SslError;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_2e

    .line 253
    .end local v1           #e:Ljava/security/GeneralSecurityException;
    .end local v3           #errorMessage:Ljava/lang/String;
    :catch_158
    move-exception v1

    .line 254
    .local v1, e:Ljava/security/cert/CertificateExpiredException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 255
    .restart local v3       #errorMessage:Ljava/lang/String;
    if-nez v3, :cond_161

    .line 256
    const-string v3, "certificate expired"

    .line 260
    :cond_161
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 263
    if-eqz v2, :cond_16d

    invoke-virtual {v2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_13f

    .line 265
    :cond_16d
    new-instance v2, Landroid/net/http/SslError;

    .end local v2           #error:Landroid/net/http/SslError;
    const/4 v9, 0x1

    invoke-direct {v2, v9, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .restart local v2       #error:Landroid/net/http/SslError;
    goto :goto_13f

    .line 268
    .end local v1           #e:Ljava/security/cert/CertificateExpiredException;
    .end local v3           #errorMessage:Ljava/lang/String;
    :catch_174
    move-exception v1

    .line 269
    .local v1, e:Ljava/security/cert/CertificateNotYetValidException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 270
    .restart local v3       #errorMessage:Ljava/lang/String;
    if-nez v3, :cond_17d

    .line 271
    const-string v3, "certificate not valid yet"

    .line 275
    :cond_17d
    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 278
    if-eqz v2, :cond_188

    invoke-virtual {v2}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v9

    if-gez v9, :cond_13f

    .line 280
    :cond_188
    new-instance v2, Landroid/net/http/SslError;

    .end local v2           #error:Landroid/net/http/SslError;
    const/4 v9, 0x0

    invoke-direct {v2, v9, v0}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    .restart local v2       #error:Landroid/net/http/SslError;
    goto :goto_13f

    .line 290
    .end local v1           #e:Ljava/security/cert/CertificateNotYetValidException;
    .end local v3           #errorMessage:Ljava/lang/String;
    :cond_18f
    if-nez v2, :cond_196

    .line 291
    const-string v9, "failed to pre-validate the certificate chain due to a non-standard error"

    invoke-direct {p0, p2, v9}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_196
    move-object v9, v2

    .line 296
    goto/16 :goto_2e
.end method
