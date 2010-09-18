.class public Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

.field private static defaultSecureRandom:Ljava/security/SecureRandom;

.field private static defaultTrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private final clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuiteNames:[Ljava/lang/String;

.field private enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field private enabledProtocols:[Ljava/lang/String;

.field private keyManager:Ljavax/net/ssl/X509KeyManager;

.field private need_client_auth:Z

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field private ssl_ctx:I

.field private trustManager:Ljavax/net/ssl/X509TrustManager;

.field private want_client_auth:Z


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V
    .registers 14
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .parameter "clientCache"
    .parameter "serverCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 85
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledProtocols:[Ljava/lang/String;

    .line 88
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->client_mode:Z

    .line 90
    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->need_client_auth:Z

    .line 92
    iput-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->want_client_auth:Z

    .line 94
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enable_session_creation:Z

    .line 105
    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->ssl_ctx:I

    .line 134
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {v5, p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 136
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {v5, p0, p4}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 141
    const/4 v2, 0x0

    .line 145
    .local v2, initialize_default:Z
    if-eqz p1, :cond_2a

    :try_start_27
    array-length v5, p1

    if-nez v5, :cond_40

    .line 146
    :cond_2a
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v5, :cond_68

    .line 147
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 149
    .local v3, kmf:Ljavax/net/ssl/KeyManagerFactory;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 150
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    .line 152
    const/4 v2, 0x1

    .line 157
    .end local v3           #kmf:Ljavax/net/ssl/KeyManagerFactory;
    :cond_40
    :goto_40
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->keyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v5, :cond_7e

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_45
    array-length v5, p1

    if-ge v1, v5, :cond_54

    .line 159
    aget-object v5, p1, v1

    instance-of v5, v5, Ljavax/net/ssl/X509KeyManager;

    if-eqz v5, :cond_75

    .line 160
    aget-object v5, p1, v1

    check-cast v5, Ljavax/net/ssl/X509KeyManager;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->keyManager:Ljavax/net/ssl/X509KeyManager;

    .line 164
    :cond_54
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->keyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v5, :cond_78

    .line 165
    new-instance v5, Ljava/security/KeyManagementException;

    const-string v6, "No X509KeyManager found"

    invoke-direct {v5, v6}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_60
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27 .. :try_end_60} :catch_60
    .catch Ljava/security/KeyStoreException; {:try_start_27 .. :try_end_60} :catch_6d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_27 .. :try_end_60} :catch_bb
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_27 .. :try_end_60} :catch_c8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_27 .. :try_end_60} :catch_e9

    .line 206
    .end local v1           #i:I
    :catch_60
    move-exception v5

    move-object v0, v5

    .line 207
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 154
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_68
    :try_start_68
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->keyManager:Ljavax/net/ssl/X509KeyManager;
    :try_end_6c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_68 .. :try_end_6c} :catch_60
    .catch Ljava/security/KeyStoreException; {:try_start_68 .. :try_end_6c} :catch_6d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_68 .. :try_end_6c} :catch_bb
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_68 .. :try_end_6c} :catch_c8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_68 .. :try_end_6c} :catch_e9

    goto :goto_40

    .line 208
    :catch_6d
    move-exception v5

    move-object v0, v5

    .line 209
    .local v0, e:Ljava/security/KeyStoreException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 158
    .end local v0           #e:Ljava/security/KeyStoreException;
    .restart local v1       #i:I
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_45

    .line 167
    :cond_78
    if-eqz v2, :cond_7e

    .line 169
    :try_start_7a
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->keyManager:Ljavax/net/ssl/X509KeyManager;

    sput-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultKeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 174
    .end local v1           #i:I
    :cond_7e
    const/4 v2, 0x0

    .line 175
    if-eqz p2, :cond_84

    array-length v5, p2

    if-nez v5, :cond_9b

    .line 176
    :cond_84
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v5, :cond_c3

    .line 177
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 179
    .local v4, tmf:Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 180
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    .line 181
    const/4 v2, 0x1

    .line 186
    .end local v4           #tmf:Ljavax/net/ssl/TrustManagerFactory;
    :cond_9b
    :goto_9b
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v5, :cond_e6

    .line 187
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_a0
    array-length v5, p2

    if-ge v1, v5, :cond_af

    .line 188
    aget-object v5, p2, v1

    instance-of v5, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v5, :cond_d0

    .line 189
    aget-object v5, p2, v1

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 193
    :cond_af
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v5, :cond_d3

    .line 194
    new-instance v5, Ljava/security/KeyManagementException;

    const-string v6, "No X509TrustManager found"

    invoke-direct {v5, v6}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_bb
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7a .. :try_end_bb} :catch_60
    .catch Ljava/security/KeyStoreException; {:try_start_7a .. :try_end_bb} :catch_6d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7a .. :try_end_bb} :catch_bb
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7a .. :try_end_bb} :catch_c8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7a .. :try_end_bb} :catch_e9

    .line 210
    .end local v1           #i:I
    :catch_bb
    move-exception v5

    move-object v0, v5

    .line 211
    .local v0, e:Ljava/security/UnrecoverableKeyException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 183
    .end local v0           #e:Ljava/security/UnrecoverableKeyException;
    :cond_c3
    :try_start_c3
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_c7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c3 .. :try_end_c7} :catch_60
    .catch Ljava/security/KeyStoreException; {:try_start_c3 .. :try_end_c7} :catch_6d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_c3 .. :try_end_c7} :catch_bb
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c3 .. :try_end_c7} :catch_c8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c3 .. :try_end_c7} :catch_e9

    goto :goto_9b

    .line 213
    :catch_c8
    move-exception v5

    move-object v0, v5

    .line 214
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 187
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v1       #i:I
    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 196
    :cond_d3
    if-eqz v2, :cond_e6

    .line 198
    :try_start_d5
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    sput-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 200
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    instance-of v5, v5, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    if-eqz v5, :cond_e6

    .line 201
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;->indexTrustAnchors()V
    :try_end_e6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d5 .. :try_end_e6} :catch_60
    .catch Ljava/security/KeyStoreException; {:try_start_d5 .. :try_end_e6} :catch_6d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_d5 .. :try_end_e6} :catch_bb
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_d5 .. :try_end_e6} :catch_c8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_d5 .. :try_end_e6} :catch_e9

    .line 235
    .end local v1           #i:I
    :cond_e6
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->secureRandom:Ljava/security/SecureRandom;

    .line 237
    return-void

    .line 215
    :catch_e9
    move-exception v5

    move-object v0, v5

    .line 216
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected static getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 240
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    if-nez v0, :cond_10

    .line 242
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 245
    :cond_10
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    return-object v0
.end method

.method public static getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .prologue
    .line 455
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method private native nativeinitsslctx()I
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 442
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 443
    :catch_5
    move-exception v0

    .line 444
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 432
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 311
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuiteNames:[Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 313
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .line 315
    .local v0, enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 316
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 317
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuiteNames:[Ljava/lang/String;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 320
    .end local v0           #enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v1           #i:I
    :cond_1e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuiteNames:[Ljava/lang/String;

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    if-nez v0, :cond_8

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->defaultCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 99
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected getKeyManager()Ljavax/net/ssl/X509KeyManager;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->keyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->need_client_auth:Z

    return v0
.end method

.method protected declared-synchronized getSSLCTX()I
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->ssl_ctx:I

    if-nez v0, :cond_b

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->nativeinitsslctx()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->ssl_ctx:I

    .line 117
    :cond_b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->ssl_ctx:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    .line 116
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->secureRandom:Ljava/security/SecureRandom;

    .line 295
    :goto_6
    return-object v0

    .line 289
    :cond_7
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_12

    .line 291
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 293
    :cond_12
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->defaultSecureRandom:Ljava/security/SecureRandom;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->secureRandom:Ljava/security/SecureRandom;

    .line 295
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_6
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method protected getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method protected getUseClientMode()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->client_mode:Z

    return v0
.end method

.method protected getWantClientAuth()Z
    .registers 2

    .prologue
    .line 416
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->want_client_auth:Z

    return v0
.end method

.method protected setEnableSessionCreation(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enable_session_creation:Z

    .line 425
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 7
    .parameter "suites"

    .prologue
    .line 329
    if-nez p1, :cond_a

    .line 330
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :cond_a
    array-length v2, p1

    new-array v0, v2, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 333
    .local v0, cipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_41

    .line 334
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    aput-object v2, v0, v1

    .line 335
    aget-object v2, v0, v1

    if-eqz v2, :cond_23

    aget-object v2, v0, v1

    iget-boolean v2, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v2, :cond_3e

    .line 336
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 333
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 340
    :cond_41
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 341
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledCipherSuiteNames:[Ljava/lang/String;

    .line 342
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .registers 6
    .parameter "protocols"

    .prologue
    .line 356
    if-nez p1, :cond_a

    .line 357
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_3a

    .line 360
    aget-object v1, p1, v0

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 361
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 365
    :cond_3a
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->enabledProtocols:[Ljava/lang/String;

    .line 366
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->need_client_auth:Z

    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->want_client_auth:Z

    .line 391
    return-void
.end method

.method protected setUseClientMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 373
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->client_mode:Z

    .line 374
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 405
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->want_client_auth:Z

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->need_client_auth:Z

    .line 408
    return-void
.end method
