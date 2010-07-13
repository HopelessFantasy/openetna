.class public abstract Ljava/security/KeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyPairGenerator$1;,
        Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;
    }
.end annotation


# static fields
.field private static final SERVICE:Ljava/lang/String; = "KeyPairGenerator"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;

.field private static random:Ljava/security/SecureRandom;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyPairGenerator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    .line 48
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithm"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$102(Ljava/security/KeyPairGenerator;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .registers 7
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p0, :cond_e

    .line 94
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.01"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_e
    sget-object v3, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v3

    .line 98
    :try_start_11
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/KeyPairGenerator;

    if-eqz v2, :cond_30

    .line 100
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 101
    .local v0, result:Ljava/security/KeyPairGenerator;
    iput-object p0, v0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 102
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    iput-object v2, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    .line 103
    monitor-exit v3

    move-object v1, v0

    .line 107
    .end local v0           #result:Ljava/security/KeyPairGenerator;
    .local v1, result:Ljava/lang/Object;
    :goto_2f
    return-object v1

    .line 105
    .end local v1           #result:Ljava/lang/Object;
    :cond_30
    new-instance v0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyPairGeneratorSpi;

    sget-object v4, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v4, v4, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, p0, v5}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    .line 107
    .restart local v0       #result:Ljava/security/KeyPairGenerator;
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_2f

    .line 109
    .end local v0           #result:Ljava/security/KeyPairGenerator;
    .end local v1           #result:Ljava/lang/Object;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;
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
    .line 130
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 131
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 135
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_20

    .line 136
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_20
    invoke-static {p0, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;
    .registers 7
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_e

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.04"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_e
    if-nez p0, :cond_1c

    .line 162
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.01"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_1c
    sget-object v3, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v3

    .line 166
    :try_start_1f
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, p1, v4}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 167
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/KeyPairGenerator;

    if-eqz v2, :cond_3a

    .line 168
    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 169
    .local v0, result:Ljava/security/KeyPairGenerator;
    iput-object p0, v0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    .line 170
    iput-object p1, v0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    .line 171
    monitor-exit v3

    move-object v1, v0

    .line 175
    .end local v0           #result:Ljava/security/KeyPairGenerator;
    .local v1, result:Ljava/lang/Object;
    :goto_39
    return-object v1

    .line 173
    .end local v1           #result:Ljava/lang/Object;
    :cond_3a
    new-instance v0, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;

    sget-object v2, Ljava/security/KeyPairGenerator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/KeyPairGeneratorSpi;

    const/4 v4, 0x0

    invoke-direct {v0, v2, p1, p0, v4}, Ljava/security/KeyPairGenerator$KeyPairGeneratorImpl;-><init>(Ljava/security/KeyPairGeneratorSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/KeyPairGenerator$1;)V

    .line 175
    .restart local v0       #result:Ljava/security/KeyPairGenerator;
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_39

    .line 177
    .end local v0           #result:Ljava/security/KeyPairGenerator;
    .end local v1           #result:Ljava/lang/Object;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_49

    throw v2
.end method


# virtual methods
.method public final genKeyPair()Ljava/security/KeyPair;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 2

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Ljava/security/KeyPairGenerator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public initialize(I)V
    .registers 3
    .parameter "keysize"

    .prologue
    .line 200
    sget-object v0, Ljava/security/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 201
    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 3
    .parameter "keysize"
    .parameter "random"

    .prologue
    .line 256
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v0, Ljava/security/KeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 217
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "param"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 272
    return-void
.end method
