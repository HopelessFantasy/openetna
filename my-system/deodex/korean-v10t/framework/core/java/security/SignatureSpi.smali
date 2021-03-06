.class public abstract Ljava/security/SignatureSpi;
.super Ljava/lang/Object;
.source "SignatureSpi.java"


# instance fields
.field protected appRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 340
    instance-of v0, p0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_9

    .line 341
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 343
    :cond_9
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineInitSign(Ljava/security/PrivateKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 87
    iput-object p2, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 88
    invoke-virtual {p0, p1}, Ljava/security/SignatureSpi;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 89
    return-void
.end method

.method protected abstract engineInitVerify(Ljava/security/PublicKey;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineSign([BII)I
    .registers 8
    .parameter "outbuf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Ljava/security/SignatureSpi;->engineSign()[B

    move-result-object v0

    .line 205
    .local v0, tmp:[B
    if-nez v0, :cond_9

    move v1, v3

    .line 218
    :goto_8
    return v1

    .line 208
    :cond_9
    array-length v1, v0

    if-ge p3, v1, :cond_18

    .line 209
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.2D"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_18
    if-gez p2, :cond_26

    .line 212
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.1C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_26
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_37

    .line 215
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "security.05"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_37
    array-length v1, v0

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    array-length v1, v0

    goto :goto_8
.end method

.method protected abstract engineSign()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 9
    .parameter "input"

    .prologue
    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_7

    .line 160
    :goto_6
    return-void

    .line 140
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 141
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 142
    .local v4, tmp:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 143
    .local v2, offset:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 144
    .local v3, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 146
    .local v1, limit:I
    add-int v5, v2, v3

    sub-int v6, v1, v3

    :try_start_21
    invoke-virtual {p0, v4, v5, v6}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_24
    .catch Ljava/security/SignatureException; {:try_start_21 .. :try_end_24} :catch_28

    .line 150
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 147
    :catch_28
    move-exception v0

    .line 148
    .local v0, e:Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 152
    .end local v0           #e:Ljava/security/SignatureException;
    .end local v1           #limit:I
    .end local v2           #offset:I
    .end local v3           #position:I
    .end local v4           #tmp:[B
    :cond_2f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v5, v6

    new-array v4, v5, [B

    .line 153
    .restart local v4       #tmp:[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    const/4 v5, 0x0

    :try_start_3e
    array-length v6, v4

    invoke-virtual {p0, v4, v5, v6}, Ljava/security/SignatureSpi;->engineUpdate([BII)V
    :try_end_42
    .catch Ljava/security/SignatureException; {:try_start_3e .. :try_end_42} :catch_43

    goto :goto_6

    .line 156
    :catch_43
    move-exception v5

    move-object v0, v5

    .line 157
    .restart local v0       #e:Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected abstract engineUpdate([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected abstract engineVerify([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method protected engineVerify([BII)Z
    .registers 6
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 270
    new-array v0, p3, [B

    .line 271
    .local v0, tmp:[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    invoke-virtual {p0, v0}, Ljava/security/SignatureSpi;->engineVerify([B)Z

    move-result v1

    return v1
.end method
