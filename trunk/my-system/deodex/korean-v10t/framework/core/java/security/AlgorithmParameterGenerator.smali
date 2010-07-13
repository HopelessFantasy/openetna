.class public Ljava/security/AlgorithmParameterGenerator;
.super Ljava/lang/Object;
.source "AlgorithmParameterGenerator.java"


# static fields
.field private static final SERVICE:Ljava/lang/String; = "AlgorithmParameterGenerator"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;

.field private static randm:Ljava/security/SecureRandom;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "AlgorithmParameterGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    .line 45
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/AlgorithmParameterGenerator;->randm:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "paramGenSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    .line 72
    iput-object p3, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    .line 74
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 102
    if-nez p0, :cond_e

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_e
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 106
    :try_start_11
    sget-object v0, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    new-instance v2, Ljava/security/AlgorithmParameterGenerator;

    sget-object v0, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/AlgorithmParameterGeneratorSpi;

    sget-object v3, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 110
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
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
    .line 135
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 136
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 140
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_20

    .line 141
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_20
    invoke-static {p0, v0}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_e

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.04"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_e
    if-nez p0, :cond_1c

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1c
    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 171
    :try_start_1f
    sget-object v0, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 172
    new-instance v2, Ljava/security/AlgorithmParameterGenerator;

    sget-object v0, Ljava/security/AlgorithmParameterGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-direct {v2, v0, p1, p0}, Ljava/security/AlgorithmParameterGenerator;-><init>(Ljava/security/AlgorithmParameterGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 175
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method public final generateParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineGenerateParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 200
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->randm:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 201
    return-void
.end method

.method public final init(ILjava/security/SecureRandom;)V
    .registers 4
    .parameter "size"
    .parameter "random"

    .prologue
    .line 215
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(ILjava/security/SecureRandom;)V

    .line 216
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "genParamSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    sget-object v1, Ljava/security/AlgorithmParameterGenerator;->randm:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v1}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 232
    return-void
.end method

.method public final init(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 4
    .parameter "genParamSpec"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Ljava/security/AlgorithmParameterGenerator;->spiImpl:Ljava/security/AlgorithmParameterGeneratorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/AlgorithmParameterGeneratorSpi;->engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 249
    return-void
.end method
