.class public abstract Ljava/security/MessageDigest;
.super Ljava/security/MessageDigestSpi;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/MessageDigest$1;,
        Ljava/security/MessageDigest$MessageDigestImpl;
    }
.end annotation


# static fields
.field private static final SERVICE:Ljava/lang/String; = "MessageDigest"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "MessageDigest"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithm"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 61
    iput-object p1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 62
    return-void
.end method

.method static synthetic access$102(Ljava/security/MessageDigest;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 7
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p0, :cond_e

    .line 81
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.01"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_e
    sget-object v3, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v3

    .line 85
    :try_start_11
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/MessageDigest;

    if-eqz v2, :cond_30

    .line 87
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/MessageDigest;

    .line 88
    .local v0, result:Ljava/security/MessageDigest;
    iput-object p0, v0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 89
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    iput-object v2, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 90
    monitor-exit v3

    move-object v1, v0

    .line 94
    .end local v0           #result:Ljava/security/MessageDigest;
    .local v1, result:Ljava/lang/Object;
    :goto_2f
    return-object v1

    .line 92
    .end local v1           #result:Ljava/lang/Object;
    :cond_30
    new-instance v0, Ljava/security/MessageDigest$MessageDigestImpl;

    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/MessageDigestSpi;

    sget-object v4, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v4, v4, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, p0, v5}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V

    .line 94
    .restart local v0       #result:Ljava/security/MessageDigest;
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_2f

    .line 96
    .end local v0           #result:Ljava/security/MessageDigest;
    .end local v1           #result:Ljava/lang/Object;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_43

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
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
    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;
    .registers 7
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 147
    if-nez p1, :cond_e

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.04"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_e
    if-nez p0, :cond_1c

    .line 151
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.01"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_1c
    sget-object v3, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v3

    .line 155
    :try_start_1f
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v4, 0x0

    invoke-virtual {v2, p0, p1, v4}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 156
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    instance-of v2, v2, Ljava/security/MessageDigest;

    if-eqz v2, :cond_3a

    .line 157
    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/MessageDigest;

    .line 158
    .local v0, result:Ljava/security/MessageDigest;
    iput-object p0, v0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    .line 159
    iput-object p1, v0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    .line 160
    monitor-exit v3

    move-object v1, v0

    .line 164
    .end local v0           #result:Ljava/security/MessageDigest;
    .local v1, result:Ljava/lang/Object;
    :goto_39
    return-object v1

    .line 162
    .end local v1           #result:Ljava/lang/Object;
    :cond_3a
    new-instance v0, Ljava/security/MessageDigest$MessageDigestImpl;

    sget-object v2, Ljava/security/MessageDigest;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/MessageDigestSpi;

    const/4 v4, 0x0

    invoke-direct {v0, v2, p1, p0, v4}, Ljava/security/MessageDigest$MessageDigestImpl;-><init>(Ljava/security/MessageDigestSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/MessageDigest$1;)V

    .line 164
    .restart local v0       #result:Ljava/security/MessageDigest;
    monitor-exit v3

    move-object v1, v0

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_39

    .line 166
    .end local v0           #result:Ljava/security/MessageDigest;
    .end local v1           #result:Ljava/lang/Object;
    :catchall_49
    move-exception v2

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_49

    throw v2
.end method

.method public static isEqual([B[B)Z
    .registers 6
    .parameter "digesta"
    .parameter "digestb"

    .prologue
    const/4 v3, 0x0

    .line 315
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_7

    move v1, v3

    .line 323
    :goto_6
    return v1

    .line 318
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_16

    .line 319
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_13

    move v1, v3

    .line 320
    goto :goto_6

    .line 318
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 323
    :cond_16
    const/4 v1, 0x1

    goto :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 371
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 372
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 374
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public digest([BII)I
    .registers 8
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    .line 265
    if-eqz p1, :cond_b

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 270
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.05"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method public digest()[B
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method public digest([B)[B
    .registers 3
    .parameter "input"

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 289
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getDigestLength()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 355
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineGetDigestLength()I

    move-result v1

    .line 356
    .local v1, l:I
    if-eqz v1, :cond_9

    move v3, v1

    .line 366
    :goto_8
    return v3

    .line 359
    :cond_9
    instance-of v3, p0, Ljava/lang/Cloneable;

    if-nez v3, :cond_f

    move v3, v4

    .line 360
    goto :goto_8

    .line 363
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 364
    .local v2, md:Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v3, v3
    :try_end_1a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_f .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 365
    .end local v2           #md:Ljava/security/MessageDigest;
    :catch_1b
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/CloneNotSupportedException;
    move v3, v4

    .line 366
    goto :goto_8
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Ljava/security/MessageDigest;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/security/MessageDigest;->engineReset()V

    .line 177
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE DIGEST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/MessageDigest;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(B)V

    .line 189
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 2
    .parameter "input"

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 387
    return-void
.end method

.method public update([B)V
    .registers 4
    .parameter "input"

    .prologue
    .line 227
    if-nez p1, :cond_e

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.06"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_e
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 231
    return-void
.end method

.method public update([BII)V
    .registers 8
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 206
    if-eqz p1, :cond_b

    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 211
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.05"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->engineUpdate([BII)V

    .line 215
    return-void
.end method
