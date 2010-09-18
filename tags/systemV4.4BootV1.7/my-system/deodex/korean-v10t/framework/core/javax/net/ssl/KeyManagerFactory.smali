.class public Ljavax/net/ssl/KeyManagerFactory;
.super Ljava/lang/Object;
.source "KeyManagerFactory.java"


# static fields
.field private static final PROPERTY_NAME:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field private static final SERVICE:Ljava/lang/String; = "KeyManagerFactory"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyManagerFactory"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "factorySpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    .line 71
    iput-object p3, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    .line 73
    return-void
.end method

.method public static final getDefaultAlgorithm()Ljava/lang/String;
    .registers 1

    .prologue
    .line 244
    new-instance v0, Ljavax/net/ssl/KeyManagerFactory$1;

    invoke-direct {v0}, Ljavax/net/ssl/KeyManagerFactory$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p0, :cond_a

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorith is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_a
    sget-object v1, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 105
    :try_start_d
    sget-object v0, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    sget-object v0, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/KeyManagerFactorySpi;

    sget-object v3, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 108
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 135
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provider is null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_10
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 138
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_1c

    .line 139
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_1c
    invoke-static {p0, v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/KeyManagerFactory;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 163
    if-nez p1, :cond_a

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provider is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_a
    if-nez p0, :cond_14

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorith is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_14
    sget-object v1, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 170
    :try_start_17
    sget-object v0, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 171
    new-instance v2, Ljavax/net/ssl/KeyManagerFactory;

    sget-object v0, Ljavax/net/ssl/KeyManagerFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-direct {v2, v0, p1, p0}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 173
    :catchall_2a
    move-exception v0

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v0
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/KeyStore;[C)V
    .registers 4
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
    .line 205
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljava/security/KeyStore;[C)V

    .line 206
    return-void
.end method

.method public final init(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .registers 3
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Ljavax/net/ssl/KeyManagerFactory;->spiImpl:Ljavax/net/ssl/KeyManagerFactorySpi;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/KeyManagerFactorySpi;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V

    .line 220
    return-void
.end method
