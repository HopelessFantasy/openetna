.class public Ljavax/crypto/KeyGenerator;
.super Ljava/lang/Object;
.source "KeyGenerator.java"


# static fields
.field private static final engine:Lorg/apache/harmony/security/fortress/Engine;

.field private static final rndm:Ljava/security/SecureRandom;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/KeyGeneratorSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    .line 44
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/KeyGenerator;->rndm:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "keyGenSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    .line 69
    iput-object p3, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    .line 71
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p0, :cond_e

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.02"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_e
    sget-object v1, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 112
    :try_start_11
    sget-object v0, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    new-instance v2, Ljavax/crypto/KeyGenerator;

    sget-object v0, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    sget-object v3, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 115
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
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
    .line 141
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 142
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "crypto.03"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 145
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_20

    .line 146
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_20
    invoke-static {p0, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p1, :cond_e

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.04"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_e
    if-nez p0, :cond_1c

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.02"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1c
    sget-object v1, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 178
    :try_start_1f
    sget-object v0, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 179
    new-instance v2, Ljavax/crypto/KeyGenerator;

    sget-object v0, Ljavax/crypto/KeyGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/KeyGeneratorSpi;

    invoke-direct {v2, v0, p1, p0}, Ljavax/crypto/KeyGenerator;-><init>(Ljavax/crypto/KeyGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 181
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method public final generateKey()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0}, Ljavax/crypto/KeyGeneratorSpi;->engineGenerateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(I)V
    .registers 4
    .parameter "keysize"

    .prologue
    .line 237
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    sget-object v1, Ljavax/crypto/KeyGenerator;->rndm:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 238
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .registers 4
    .parameter "keysize"
    .parameter "random"

    .prologue
    .line 251
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 252
    return-void
.end method

.method public final init(Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "random"

    .prologue
    .line 263
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/SecureRandom;)V

    .line 264
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    sget-object v1, Ljavax/crypto/KeyGenerator;->rndm:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 208
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/crypto/KeyGenerator;->spiImpl:Ljavax/crypto/KeyGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/KeyGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 226
    return-void
.end method
