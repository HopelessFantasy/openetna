.class public Ljavax/crypto/Mac;
.super Ljava/lang/Object;
.source "Mac.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private isInitMac:Z

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljavax/crypto/MacSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Mac"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "macSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    .line 70
    iput-object p3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 73
    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p0, :cond_e

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.02"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_e
    sget-object v1, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 114
    :try_start_11
    sget-object v0, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    new-instance v2, Ljavax/crypto/Mac;

    sget-object v0, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/MacSpi;

    sget-object v3, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 116
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;
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
    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;
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
    sget-object v1, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 178
    :try_start_1f
    sget-object v0, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 179
    new-instance v2, Ljavax/crypto/Mac;

    sget-object v0, Ljavax/crypto/Mac;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljavax/crypto/MacSpi;

    invoke-direct {v2, v0, p1, p0}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 180
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 447
    iget-object v2, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/MacSpi;

    .line 448
    .local v1, newSpiImpl:Ljavax/crypto/MacSpi;
    new-instance v0, Ljavax/crypto/Mac;

    iget-object v2, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    iget-object v3, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/Mac;-><init>(Ljavax/crypto/MacSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 449
    .local v0, mac:Ljavax/crypto/Mac;
    iget-boolean v2, p0, Ljavax/crypto/Mac;->isInitMac:Z

    iput-boolean v2, v0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 450
    return-object v0
.end method

.method public final doFinal([BI)V
    .registers 8
    .parameter "output"
    .parameter "outOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 375
    iget-boolean v2, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v2, :cond_10

    .line 376
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "crypto.01"

    invoke-static {v3}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_10
    if-nez p1, :cond_1e

    .line 379
    new-instance v2, Ljavax/crypto/ShortBufferException;

    const-string v3, "crypto.08"

    invoke-static {v3}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 381
    :cond_1e
    if-ltz p2, :cond_23

    array-length v2, p1

    if-lt p2, v2, :cond_33

    .line 382
    :cond_23
    new-instance v2, Ljavax/crypto/ShortBufferException;

    const-string v3, "crypto.09"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 385
    :cond_33
    iget-object v2, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v1

    .line 386
    .local v1, t:I
    array-length v2, p1

    sub-int/2addr v2, p2

    if-le v1, v2, :cond_4d

    .line 387
    new-instance v2, Ljavax/crypto/ShortBufferException;

    const-string v3, "crypto.0A"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 391
    :cond_4d
    iget-object v2, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v2}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    .line 392
    .local v0, result:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    return-void
.end method

.method public final doFinal()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 344
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_10

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.01"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_10
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 414
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_10

    .line 415
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.0B"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_10
    if-eqz p1, :cond_19

    .line 418
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 420
    :cond_19
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Ljavax/crypto/Mac;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getMacLength()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineGetMacLength()I

    move-result v0

    return v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Ljavax/crypto/Mac;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(Ljava/security/Key;)V
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 231
    if-nez p1, :cond_e

    .line 232
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "crypto.05"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_e
    :try_start_e
    iget-object v1, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/crypto/Mac;->isInitMac:Z
    :try_end_17
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_17} :catch_18

    .line 240
    return-void

    .line 237
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 238
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p1, :cond_e

    .line 211
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "crypto.05"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_e
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/MacSpi;->engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    .line 215
    return-void
.end method

.method public final reset()V
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0}, Ljavax/crypto/MacSpi;->engineReset()V

    .line 435
    return-void
.end method

.method public final update(B)V
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 252
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_10

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.01"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_10
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(B)V

    .line 256
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "input"

    .prologue
    .line 319
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_10

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.01"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_10
    if-eqz p1, :cond_18

    .line 323
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/MacSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 327
    return-void

    .line 325
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.07"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update([B)V
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 299
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_10

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.01"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_10
    if-eqz p1, :cond_19

    .line 303
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    .line 305
    :cond_19
    return-void
.end method

.method public final update([BII)V
    .registers 6
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 277
    iget-boolean v0, p0, Ljavax/crypto/Mac;->isInitMac:Z

    if-nez v0, :cond_10

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.01"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_10
    if-nez p1, :cond_13

    .line 287
    :goto_12
    return-void

    .line 283
    :cond_13
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_28

    .line 284
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.06"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_28
    iget-object v0, p0, Ljavax/crypto/Mac;->spiImpl:Ljavax/crypto/MacSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/MacSpi;->engineUpdate([BII)V

    goto :goto_12
.end method
