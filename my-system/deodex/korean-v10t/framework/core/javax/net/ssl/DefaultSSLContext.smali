.class Ljavax/net/ssl/DefaultSSLContext;
.super Ljava/lang/Object;
.source "DefaultSSLContext.java"


# static fields
.field private static defaultSSLContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavax/net/ssl/SSLContext;
    .registers 1

    .prologue
    .line 37
    invoke-static {}, Ljavax/net/ssl/DefaultSSLContext;->findDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method private static findDefault()Ljavax/net/ssl/SSLContext;
    .registers 8

    .prologue
    .line 55
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 56
    .local v2, it1:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 57
    sget-object v1, Lorg/apache/harmony/security/fortress/Engine;->door:Lorg/apache/harmony/security/fortress/SecurityAccess;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    const-string v3, "SSLContext"

    invoke-interface {v1, v0, v3}, Lorg/apache/harmony/security/fortress/SecurityAccess;->getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 59
    .local v1, service:Ljava/security/Provider$Service;
    if-eqz v1, :cond_8

    .line 61
    :try_start_1e
    new-instance v0, Ljavax/net/ssl/ContextImpl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLContextSpi;

    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v4

    invoke-virtual {v1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .end local v1           #service:Ljava/security/Provider$Service;
    invoke-direct {v0, v3, v4, v1}, Ljavax/net/ssl/ContextImpl;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 68
    .local v0, con:Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    .line 69
    .local v1, keyManagers:[Ljavax/net/ssl/KeyManager;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 71
    .local v5, ks:Ljava/security/KeyStore;
    const-string v3, "javax.net.ssl.keyStore"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, keystore:Ljava/lang/String;
    const-string v4, "javax.net.ssl.keyStorePassword"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, keystorepwd:Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, pwd:[C
    if-eqz v4, :cond_b6

    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 79
    .end local v6           #pwd:[C
    .local v4, pwd:[C
    :goto_4e
    if-eqz v3, :cond_b4

    .line 80
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #keyManagers:[Ljavax/net/ssl/KeyManager;
    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5, v1, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 83
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 86
    const-string v1, "ssl.KeyManagerFactory.algorithm"

    .end local v1           #fis:Ljava/io/FileInputStream;
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, kmfAlg:Ljava/lang/String;
    if-nez v1, :cond_65

    .line 89
    const-string v1, "SunX509"

    .line 91
    :cond_65
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 92
    .local v1, kmf:Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v1, v5, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 93
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .local v1, keyManagers:[Ljavax/net/ssl/KeyManager;
    move-object v3, v1

    .line 97
    .end local v1           #keyManagers:[Ljavax/net/ssl/KeyManager;
    .local v3, keyManagers:[Ljavax/net/ssl/KeyManager;
    :goto_71
    const/4 v7, 0x0

    .line 98
    .local v7, trustManagers:[Ljavax/net/ssl/TrustManager;
    const-string v1, "javax.net.ssl.trustStore"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, keystore:Ljava/lang/String;
    const-string v1, "javax.net.ssl.trustStorePassword"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, keystorepwd:Ljava/lang/String;
    const/4 v6, 0x0

    .line 102
    .restart local v6       #pwd:[C
    if-eqz v1, :cond_86

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .end local v6           #pwd:[C
    .local v1, pwd:[C
    move-object v6, v1

    .line 106
    .end local v1           #pwd:[C
    .restart local v6       #pwd:[C
    :cond_86
    if-eqz v4, :cond_b2

    .line 107
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v5, v1, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 110
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 112
    const-string v1, "ssl.TrustManagerFactory.algorithm"

    .end local v1           #fis:Ljava/io/FileInputStream;
    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, tmfAlg:Ljava/lang/String;
    if-nez v1, :cond_9d

    .line 115
    const-string v1, "PKIX"

    .line 117
    :cond_9d
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 118
    .local v1, tmf:Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v1, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 119
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 122
    .end local v7           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .local v1, trustManagers:[Ljavax/net/ssl/TrustManager;
    :goto_a8
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_ac} :catch_af

    .line 130
    .end local v0           #con:Ljavax/net/ssl/SSLContext;
    .end local v1           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .end local v3           #keyManagers:[Ljavax/net/ssl/KeyManager;
    .end local v4           #keystore:Ljava/lang/String;
    .end local v5           #ks:Ljava/security/KeyStore;
    .end local v6           #pwd:[C
    :goto_ac
    return-object v0

    :cond_ad
    const/4 v0, 0x0

    goto :goto_ac

    .line 124
    :catch_af
    move-exception v0

    goto/16 :goto_8

    .restart local v0       #con:Ljavax/net/ssl/SSLContext;
    .restart local v3       #keyManagers:[Ljavax/net/ssl/KeyManager;
    .restart local v4       #keystore:Ljava/lang/String;
    .restart local v5       #ks:Ljava/security/KeyStore;
    .restart local v6       #pwd:[C
    .restart local v7       #trustManagers:[Ljavax/net/ssl/TrustManager;
    :cond_b2
    move-object v1, v7

    .end local v7           #trustManagers:[Ljavax/net/ssl/TrustManager;
    .restart local v1       #trustManagers:[Ljavax/net/ssl/TrustManager;
    goto :goto_a8

    .end local v6           #pwd:[C
    .local v1, keyManagers:[Ljavax/net/ssl/KeyManager;
    .local v3, keystore:Ljava/lang/String;
    .local v4, pwd:[C
    :cond_b4
    move-object v3, v1

    .end local v1           #keyManagers:[Ljavax/net/ssl/KeyManager;
    .local v3, keyManagers:[Ljavax/net/ssl/KeyManager;
    goto :goto_71

    .restart local v1       #keyManagers:[Ljavax/net/ssl/KeyManager;
    .local v3, keystore:Ljava/lang/String;
    .local v4, keystorepwd:Ljava/lang/String;
    .restart local v6       #pwd:[C
    :cond_b6
    move-object v4, v6

    .end local v6           #pwd:[C
    .local v4, pwd:[C
    goto :goto_4e
.end method

.method public static getContext()Ljavax/net/ssl/SSLContext;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Ljavax/net/ssl/DefaultSSLContext;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_11

    .line 42
    new-instance v0, Ljavax/net/ssl/DefaultSSLContext$1;

    invoke-direct {v0}, Ljavax/net/ssl/DefaultSSLContext$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    sput-object v0, Ljavax/net/ssl/DefaultSSLContext;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    .line 49
    :cond_11
    sget-object v0, Ljavax/net/ssl/DefaultSSLContext;->defaultSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method
