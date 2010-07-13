.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 481
    if-nez p1, :cond_f

    .line 482
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "crypto.0C"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 484
    :cond_f
    if-nez p2, :cond_1d

    .line 485
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "crypto.0D"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 487
    :cond_1d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 488
    .local v5, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 490
    .local v3, limit:I
    sub-int v6, v3, v5

    if-gtz v6, :cond_2b

    move v6, v7

    .line 514
    :goto_2a
    return v6

    .line 496
    :cond_2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 497
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 498
    .local v0, bInput:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 499
    .local v4, offset:I
    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .line 500
    .local v1, bOutput:[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 506
    .end local v4           #offset:I
    :goto_44
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_65

    .line 507
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "crypto.0E"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 502
    .end local v0           #bInput:[B
    .end local v1           #bOutput:[B
    :cond_57
    sub-int v6, v3, v5

    new-array v0, v6, [B

    .line 503
    .restart local v0       #bInput:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 504
    sub-int v6, v3, v5

    invoke-virtual {p0, v0, v7, v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v1

    .restart local v1       #bOutput:[B
    goto :goto_44

    .line 510
    :cond_65
    :try_start_65
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_68
    .catch Ljava/nio/BufferOverflowException; {:try_start_65 .. :try_end_68} :catch_6a

    .line 514
    array-length v6, v1

    goto :goto_2a

    .line 511
    :catch_6a
    move-exception v2

    .line 512
    .local v2, e:Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "crypto.0F"

    invoke-static {v7, v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 586
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "crypto.12"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 567
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "crypto.11"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 358
    if-nez p1, :cond_f

    .line 359
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "crypto.0C"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 361
    :cond_f
    if-nez p2, :cond_1d

    .line 362
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "crypto.0D"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 364
    :cond_1d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 365
    .local v5, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 366
    .local v3, limit:I
    sub-int v6, v3, v5

    if-gtz v6, :cond_2b

    move v6, v7

    .line 389
    :goto_2a
    return v6

    .line 371
    :cond_2b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 372
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 373
    .local v0, bInput:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    .line 374
    .local v4, offset:I
    add-int v6, v4, v5

    sub-int v7, v3, v5

    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    .line 375
    .local v1, bOutput:[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 381
    .end local v4           #offset:I
    :goto_44
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    array-length v7, v1

    if-ge v6, v7, :cond_65

    .line 382
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "crypto.0E"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    .end local v0           #bInput:[B
    .end local v1           #bOutput:[B
    :cond_57
    sub-int v6, v3, v5

    new-array v0, v6, [B

    .line 378
    .restart local v0       #bInput:[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 379
    sub-int v6, v3, v5

    invoke-virtual {p0, v0, v7, v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v1

    .restart local v1       #bOutput:[B
    goto :goto_44

    .line 385
    :cond_65
    :try_start_65
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_68
    .catch Ljava/nio/BufferOverflowException; {:try_start_65 .. :try_end_68} :catch_6a

    .line 389
    array-length v6, v1

    goto :goto_2a

    .line 386
    :catch_6a
    move-exception v2

    .line 387
    .local v2, e:Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    const-string v7, "crypto.0F"

    invoke-static {v7, v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "crypto.10"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
