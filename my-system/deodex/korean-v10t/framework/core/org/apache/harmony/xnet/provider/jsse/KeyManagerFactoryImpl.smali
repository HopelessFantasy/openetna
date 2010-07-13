.class public Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "KeyManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 6

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_c

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;[C)V
    .registers 9
    .parameter "ks"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 59
    if-eqz p1, :cond_17

    .line 60
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 61
    if-eqz p2, :cond_12

    .line 62
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    check-cast v3, [C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    .line 112
    :goto_11
    return-void

    .line 64
    :cond_12
    new-array v3, v4, [C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_11

    .line 67
    :cond_17
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 68
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$1;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, keyStoreName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 75
    .local v2, keyStorePwd:Ljava/lang/String;
    if-eqz v1, :cond_3d

    const-string v3, "NONE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_55

    .line 78
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_45
    .catch Ljava/security/cert/CertificateException; {:try_start_3d .. :try_end_44} :catch_4d

    goto :goto_11

    .line 79
    :catch_45
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 81
    .end local v0           #e:Ljava/io/IOException;
    :catch_4d
    move-exception v3

    move-object v0, v3

    .line 82
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 85
    .end local v0           #e:Ljava/security/cert/CertificateException;
    :cond_55
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #keyStorePwd:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 92
    .restart local v2       #keyStorePwd:Ljava/lang/String;
    if-nez v2, :cond_80

    .line 93
    new-array v3, v4, [C

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    .line 98
    :goto_66
    :try_start_66
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_77} :catch_78
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_77} :catch_87
    .catch Ljava/security/cert/CertificateException; {:try_start_66 .. :try_end_77} :catch_8f

    goto :goto_11

    .line 101
    :catch_78
    move-exception v3

    move-object v0, v3

    .line 102
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 95
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_80
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_66

    .line 103
    :catch_87
    move-exception v3

    move-object v0, v3

    .line 104
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 105
    .end local v0           #e:Ljava/io/IOException;
    :catch_8f
    move-exception v3

    move-object v0, v3

    .line 106
    .local v0, e:Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3
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
    .line 120
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
