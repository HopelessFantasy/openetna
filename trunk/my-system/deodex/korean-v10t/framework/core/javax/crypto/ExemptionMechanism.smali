.class public Ljavax/crypto/ExemptionMechanism;
.super Ljava/lang/Object;
.source "ExemptionMechanism.java"


# static fields
.field private static final engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private generated:Z

.field private initKey:Ljava/security/Key;

.field private isInit:Z

.field private final mechanism:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/ExemptionMechanismSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "ExemptionMechanism"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "exmechSpi"
    .parameter "provider"
    .parameter "mechanism"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p3, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    .line 78
    iput-object p2, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    .line 80
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p0, :cond_e

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.02"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_e
    sget-object v1, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 111
    :try_start_11
    sget-object v0, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    sget-object v0, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/ExemptionMechanismSpi;

    sget-object v3, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 114
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
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
    .line 140
    if-nez p1, :cond_e

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "crypto.04"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_e
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 144
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_1a

    .line 145
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1a
    if-nez p0, :cond_28

    .line 148
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "crypto.02"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_28
    invoke-static {p0, v0}, Ljavax/crypto/ExemptionMechanism;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p0, :cond_e

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.02"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_e
    if-nez p1, :cond_1c

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.04"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1c
    sget-object v1, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 180
    :try_start_1f
    sget-object v0, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 181
    new-instance v2, Ljavax/crypto/ExemptionMechanism;

    sget-object v0, Ljavax/crypto/ExemptionMechanism;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/ExemptionMechanismSpi;

    invoke-direct {v2, v0, p1, p0}, Ljavax/crypto/ExemptionMechanism;-><init>(Ljavax/crypto/ExemptionMechanismSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 183
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    .line 395
    return-void
.end method

.method public final genExemptionBlob([B)I
    .registers 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/crypto/ExemptionMechanism;->genExemptionBlob([BI)I

    move-result v0

    return v0
.end method

.method public final genExemptionBlob([BI)I
    .registers 6
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 378
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    if-nez v1, :cond_10

    .line 379
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "crypto.2D"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 382
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v1, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob([BI)I

    move-result v0

    .line 383
    .local v0, len:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 384
    return v0
.end method

.method public final genExemptionBlob()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 326
    iget-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    if-nez v1, :cond_10

    .line 327
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "crypto.2D"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 330
    iget-object v1, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGenExemptionBlob()[B

    move-result-object v0

    .line 331
    .local v0, result:[B
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 332
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->mechanism:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutputSize(I)I
    .registers 4
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 235
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    if-nez v0, :cond_10

    .line 236
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.2D"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_10
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 256
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;)V

    .line 257
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    .line 259
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 4
    .parameter "key"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 282
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 283
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    .line 285
    return-void
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "key"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    .line 308
    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->spiImpl:Ljavax/crypto/ExemptionMechanismSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/ExemptionMechanismSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 309
    iput-object p1, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->isInit:Z

    .line 311
    return-void
.end method

.method public final isCryptoAllowed(Ljava/security/Key;)Z
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ExemptionMechanismException;
        }
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Ljavax/crypto/ExemptionMechanism;->generated:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Ljavax/crypto/ExemptionMechanism;->initKey:Ljava/security/Key;

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 216
    :cond_1c
    const/4 v0, 0x1

    .line 218
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
