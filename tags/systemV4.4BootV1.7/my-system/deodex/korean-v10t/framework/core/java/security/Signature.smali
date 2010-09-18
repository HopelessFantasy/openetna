.class public abstract Ljava/security/Signature;
.super Ljava/security/SignatureSpi;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/Signature$SignatureImpl;
    }
.end annotation


# static fields
.field private static final SERVICE:Ljava/lang/String; = "Signature"

.field protected static final SIGN:I = 0x2

.field protected static final UNINITIALIZED:I = 0x0

.field protected static final VERIFY:I = 0x3

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private provider:Ljava/security/Provider;

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Signature"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "algorithm"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 100
    iput-object p1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 101
    return-void
.end method

.method static synthetic access$002(Ljava/security/Signature;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/Signature;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p0, :cond_e

    .line 120
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "security.01"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_e
    sget-object v2, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v2

    .line 124
    :try_start_11
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    instance-of v1, v1, Ljava/security/Signature;

    if-eqz v1, :cond_2f

    .line 126
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 127
    .local v0, result:Ljava/security/Signature;
    iput-object p0, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 128
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    iput-object v1, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 133
    :goto_2d
    monitor-exit v2

    .line 134
    return-object v0

    .line 130
    .end local v0           #result:Ljava/security/Signature;
    :cond_2f
    new-instance v0, Ljava/security/Signature$SignatureImpl;

    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/SignatureSpi;

    sget-object v3, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v0, v1, v3, p0}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .restart local v0       #result:Ljava/security/Signature;
    goto :goto_2d

    .line 133
    .end local v0           #result:Ljava/security/Signature;
    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
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
    .line 157
    if-nez p0, :cond_e

    .line 158
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "security.01"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_e
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 161
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_22
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 165
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_34

    .line 166
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "security.03"

    invoke-static {v2, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_34
    invoke-static {p0, v0}, Ljava/security/Signature;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 4
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 189
    if-nez p0, :cond_e

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_e
    if-nez p1, :cond_1c

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.04"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1c
    invoke-static {p0, p1}, Ljava/security/Signature;->getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method private static getSignatureInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;
    .registers 6
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 201
    sget-object v2, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v2

    .line 202
    :try_start_3
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 203
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    instance-of v1, v1, Ljava/security/Signature;

    if-eqz v1, :cond_1d

    .line 204
    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/Signature;

    .line 205
    .local v0, result:Ljava/security/Signature;
    iput-object p0, v0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    .line 206
    iput-object p1, v0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    .line 211
    :goto_1b
    monitor-exit v2

    .line 212
    return-object v0

    .line 208
    .end local v0           #result:Ljava/security/Signature;
    :cond_1d
    new-instance v0, Ljava/security/Signature$SignatureImpl;

    sget-object v1, Ljava/security/Signature;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/SignatureSpi;

    invoke-direct {v0, v1, p1, p0}, Ljava/security/Signature$SignatureImpl;-><init>(Ljava/security/SignatureSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .restart local v0       #result:Ljava/security/Signature;
    goto :goto_1b

    .line 211
    .end local v0           #result:Ljava/security/Signature;
    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private stateToString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 562
    packed-switch p1, :pswitch_data_10

    .line 570
    :pswitch_3
    const-string v0, ""

    :goto_5
    return-object v0

    .line 564
    :pswitch_6
    const-string v0, "UNINITIALIZED"

    goto :goto_5

    .line 566
    :pswitch_9
    const-string v0, "SIGN"

    goto :goto_5

    .line 568
    :pswitch_c
    const-string v0, "VERIFY"

    goto :goto_5

    .line 562
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
    .end packed-switch
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
    .line 646
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 647
    invoke-super {p0}, Ljava/security/SignatureSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 649
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 620
    invoke-virtual {p0}, Ljava/security/Signature;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Ljava/security/Signature;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final initSign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 315
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 316
    return-void
.end method

.method public final initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 4
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 334
    const/4 v0, 0x2

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 335
    return-void
.end method

.method public final initVerify(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 249
    const/4 v0, 0x3

    iput v0, p0, Ljava/security/Signature;->state:I

    .line 250
    return-void
.end method

.method public final initVerify(Ljava/security/cert/Certificate;)V
    .registers 9
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 271
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_49

    .line 272
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 273
    .local v1, ce:Ljava/util/Set;
    const/4 v2, 0x0

    .line 274
    .local v2, critical:Z
    if-eqz v1, :cond_49

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    .line 275
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 276
    const-string v5, "2.5.29.15"

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 278
    const/4 v2, 0x1

    .line 282
    :cond_2c
    if-eqz v2, :cond_49

    .line 283
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v4

    .line 291
    .local v4, keyUsage:[Z
    if-eqz v4, :cond_49

    const/4 v5, 0x0

    aget-boolean v5, v4, v5

    if-nez v5, :cond_49

    .line 292
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "security.26"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 298
    .end local v1           #ce:Ljava/util/Set;
    .end local v2           #critical:Z
    .end local v3           #i:Ljava/util/Iterator;
    .end local v4           #keyUsage:[Z
    :cond_49
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/security/Signature;->engineInitVerify(Ljava/security/PublicKey;)V

    .line 299
    const/4 v5, 0x3

    iput v5, p0, Ljava/security/Signature;->state:I

    .line 300
    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p0, p1, p2}, Ljava/security/Signature;->engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    return-void
.end method

.method public final setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 609
    return-void
.end method

.method public final sign([BII)I
    .registers 6
    .parameter "outbuf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 385
    if-eqz p1, :cond_b

    if-ltz p2, :cond_b

    if-ltz p3, :cond_b

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_17

    .line 387
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.05"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_17
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    .line 391
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_28
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method public final sign()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 352
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 353
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_11
    invoke-virtual {p0}, Ljava/security/Signature;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIGNATURE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/Signature;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/security/Signature;->state:I

    invoke-direct {p0, v1}, Ljava/security/Signature;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final update(B)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 475
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_10

    .line 476
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_10
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(B)V

    .line 480
    return-void
.end method

.method public final update(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 542
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_10

    .line 543
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_10
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 547
    return-void
.end method

.method public final update([B)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 494
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_10

    .line 495
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_10
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 499
    return-void
.end method

.method public final update([BII)V
    .registers 6
    .parameter "data"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 518
    iget v0, p0, Ljava/security/Signature;->state:I

    if-nez v0, :cond_10

    .line 519
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_10
    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_27

    .line 524
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.05"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineUpdate([BII)V

    .line 528
    return-void
.end method

.method public final verify([B)Z
    .registers 4
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 416
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 417
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_11
    invoke-virtual {p0, p1}, Ljava/security/Signature;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method public final verify([BII)Z
    .registers 6
    .parameter "signature"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 451
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 452
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "security.27"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_11
    if-eqz p1, :cond_1c

    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_28

    .line 457
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.05"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_28
    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->engineVerify([BII)Z

    move-result v0

    return v0
.end method
