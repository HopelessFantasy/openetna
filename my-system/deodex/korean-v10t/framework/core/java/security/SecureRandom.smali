.class public Ljava/security/SecureRandom;
.super Ljava/util/Random;
.source "SecureRandom.java"


# static fields
.field private static final transient SERVICE:Ljava/lang/String; = "SecureRandom"

.field private static transient engine:Lorg/apache/harmony/security/fortress/Engine; = null

.field private static transient internalSecureRandom:Ljava/security/SecureRandom; = null

.field private static final serialVersionUID:J = 0x118d8360a24b4bL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private counter:J

.field private provider:Ljava/security/Provider;

.field private randomBytes:[B

.field private randomBytesUsed:I

.field private secureRandomSpi:Ljava/security/SecureRandomSpi;

.field private state:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "SecureRandom"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 76
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 77
    invoke-direct {p0}, Ljava/security/SecureRandom;->findService()Ljava/security/Provider$Service;

    move-result-object v1

    .line 78
    .local v1, service:Ljava/security/Provider$Service;
    if-nez v1, :cond_1a

    .line 79
    iput-object v4, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 80
    new-instance v2, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 81
    const-string v2, "SHA1PRNG"

    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 91
    :goto_19
    return-void

    .line 84
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/SecureRandomSpi;

    iput-object v2, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 86
    invoke-virtual {v1}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2f} :catch_30

    goto :goto_19

    .line 87
    :catch_30
    move-exception v2

    move-object v0, v2

    .line 88
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V
    .registers 4
    .parameter "secureRandomSpi"
    .parameter "provider"

    .prologue
    .line 132
    const-string v0, "unknown"

    invoke-direct {p0, p1, p2, v0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .parameter "secureRandomSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 139
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 140
    iput-object p2, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    .line 141
    iput-object p3, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    .line 143
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "seed"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    .line 104
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 105
    return-void
.end method

.method private findService()Ljava/security/Provider$Service;
    .registers 4

    .prologue
    .line 111
    invoke-static {}, Lorg/apache/harmony/security/fortress/Services;->getProvidersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0
    .local v0, it1:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Provider;

    const-string v2, "SecureRandom"

    invoke-virtual {p0, v2}, Ljava/security/Provider;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 113
    .local v1, service:Ljava/security/Provider$Service;
    if-eqz v1, :cond_8

    move-object v2, v1

    .line 117
    .end local v1           #service:Ljava/security/Provider$Service;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 161
    if-nez p0, :cond_e

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_e
    sget-object v1, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 165
    :try_start_11
    sget-object v0, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    new-instance v2, Ljava/security/SecureRandom;

    sget-object v0, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/SecureRandomSpi;

    sget-object v3, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 167
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
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
    .line 190
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 191
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 195
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_26

    .line 196
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "security.03"

    invoke-static {v2, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_26
    invoke-static {p0, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 219
    if-nez p1, :cond_e

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.04"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_e
    if-nez p0, :cond_1c

    .line 223
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1c
    sget-object v1, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 226
    :try_start_1f
    sget-object v0, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 227
    new-instance v2, Ljava/security/SecureRandom;

    sget-object v0, Ljava/security/SecureRandom;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/SecureRandomSpi;

    invoke-direct {v2, v0, p1, p0}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 228
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method

.method public static getSeed(I)[B
    .registers 2
    .parameter "numBytes"

    .prologue
    .line 342
    sget-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 343
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    .line 345
    :cond_b
    sget-object v0, Ljava/security/SecureRandom;->internalSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .registers 3
    .parameter "numBytes"

    .prologue
    .line 358
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineGenerateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Ljava/security/SecureRandom;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Ljava/security/SecureRandom;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method protected final next(I)I
    .registers 8
    .parameter "numBits"

    .prologue
    .line 313
    if-gez p1, :cond_1b

    .line 314
    const/4 p1, 0x0

    .line 320
    :cond_3
    :goto_3
    add-int/lit8 v4, p1, 0x7

    div-int/lit8 v0, v4, 0x8

    .line 321
    .local v0, bytes:I
    new-array v2, v0, [B

    .line 322
    .local v2, next:[B
    const/4 v3, 0x0

    .line 324
    .local v3, ret:I
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 325
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_22

    .line 326
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v3, 0x8

    or-int v3, v4, v5

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 316
    .end local v0           #bytes:I
    .end local v1           #i:I
    .end local v2           #next:[B
    .end local v3           #ret:I
    :cond_1b
    const/16 v4, 0x20

    if-le p1, v4, :cond_3

    .line 317
    const/16 p1, 0x20

    goto :goto_3

    .line 328
    .restart local v0       #bytes:I
    .restart local v1       #i:I
    .restart local v2       #next:[B
    .restart local v3       #ret:I
    :cond_22
    mul-int/lit8 v4, v0, 0x8

    sub-int/2addr v4, p1

    ushr-int/2addr v3, v4

    .line 329
    return v3
.end method

.method public declared-synchronized nextBytes([B)V
    .registers 3
    .parameter "bytes"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineNextBytes([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 300
    monitor-exit p0

    return-void

    .line 299
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSeed(J)V
    .registers 10
    .parameter "seed"

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 274
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_b

    .line 288
    :goto_a
    return-void

    .line 277
    :cond_b
    new-array v0, v6, [B

    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    shr-long v2, p1, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    and-long v2, p1, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 287
    .local v0, byteSeed:[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V

    goto :goto_a
.end method

.method public declared-synchronized setSeed([B)V
    .registers 3
    .parameter "seed"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/security/SecureRandom;->secureRandomSpi:Ljava/security/SecureRandomSpi;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandomSpi;->engineSetSeed([B)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 262
    monitor-exit p0

    return-void

    .line 261
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
