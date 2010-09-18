.class public Ljava/security/KeyFactory;
.super Ljava/lang/Object;
.source "KeyFactory.java"


# static fields
.field private static final SERVICE:Ljava/lang/String; = "KeyFactory"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field private spiImpl:Ljava/security/KeyFactorySpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyFactory"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "keyFacSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    .line 72
    iput-object p3, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    .line 74
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 90
    if-nez p0, :cond_e

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_e
    sget-object v1, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 94
    :try_start_11
    sget-object v0, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    new-instance v2, Ljava/security/KeyFactory;

    sget-object v0, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyFactorySpi;

    sget-object v3, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 96
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;
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
    .line 119
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 120
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 123
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_26

    .line 124
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "security.03"

    invoke-static {v2, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_26
    invoke-static {p0, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 145
    if-nez p1, :cond_e

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.04"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_e
    if-nez p0, :cond_1c

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1c
    sget-object v1, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 152
    :try_start_1f
    sget-object v0, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 153
    new-instance v2, Ljava/security/KeyFactory;

    sget-object v0, Ljava/security/KeyFactory;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyFactorySpi;

    invoke-direct {v2, v0, p1, p0}, Ljava/security/KeyFactory;-><init>(Ljava/security/KeyFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 154
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method public final generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 3
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public final generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 3
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Ljava/security/KeyFactory;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 227
    .local p2, keySpec:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Ljava/security/KeyFactory;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final translateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Ljava/security/KeyFactory;->spiImpl:Ljava/security/KeyFactorySpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyFactorySpi;->engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method
