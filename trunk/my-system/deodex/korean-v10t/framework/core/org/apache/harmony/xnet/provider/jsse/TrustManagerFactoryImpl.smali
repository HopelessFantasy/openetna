.class public Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_c

    .line 131
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .registers 10
    .parameter "ks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    const-string v7, "javax.net.ssl.trustStore"

    .line 54
    if-eqz p1, :cond_7

    .line 55
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 115
    :goto_6
    return-void

    .line 58
    :cond_7
    const-string v5, "javax.net.ssl.trustStore"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4b

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.home"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "etc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "security"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "cacerts.bks"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, file:Ljava/lang/String;
    const-string v5, "javax.net.ssl.trustStore"

    invoke-static {v7, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .end local v1           #file:Ljava/lang/String;
    :cond_4b
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 68
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$1;

    invoke-direct {v5, p0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, keyStoreName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 76
    .local v3, keyStorePwd:Ljava/lang/String;
    if-eqz v2, :cond_71

    const-string v5, "NONE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_71

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_91

    .line 79
    :cond_71
    :try_start_71
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_78} :catch_79
    .catch Ljava/security/cert/CertificateException; {:try_start_71 .. :try_end_78} :catch_81
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_71 .. :try_end_78} :catch_89

    goto :goto_6

    .line 80
    :catch_79
    move-exception v5

    move-object v0, v5

    .line 81
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 82
    .end local v0           #e:Ljava/io/IOException;
    :catch_81
    move-exception v5

    move-object v0, v5

    .line 83
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_89
    move-exception v5

    move-object v0, v5

    .line 85
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 88
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_91
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;

    invoke-direct {v5, p0}, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;)V

    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #keyStorePwd:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 96
    .restart local v3       #keyStorePwd:Ljava/lang/String;
    if-nez v3, :cond_ba

    .line 97
    const/4 v5, 0x0

    new-array v4, v5, [C

    .line 102
    .local v4, pwd:[C
    :goto_a1
    :try_start_a1
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v6, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_a1 .. :try_end_b0} :catch_b2
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_b0} :catch_bf
    .catch Ljava/security/cert/CertificateException; {:try_start_a1 .. :try_end_b0} :catch_c7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a1 .. :try_end_b0} :catch_cf

    goto/16 :goto_6

    .line 103
    :catch_b2
    move-exception v5

    move-object v0, v5

    .line 104
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 99
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v4           #pwd:[C
    :cond_ba
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .restart local v4       #pwd:[C
    goto :goto_a1

    .line 105
    :catch_bf
    move-exception v5

    move-object v0, v5

    .line 106
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 107
    .end local v0           #e:Ljava/io/IOException;
    :catch_c7
    move-exception v5

    move-object v0, v5

    .line 108
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 109
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :catch_cf
    move-exception v5

    move-object v0, v5

    .line 110
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-direct {v5, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 4
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
