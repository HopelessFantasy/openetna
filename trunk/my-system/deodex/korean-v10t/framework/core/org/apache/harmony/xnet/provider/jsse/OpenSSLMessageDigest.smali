.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;
.super Ljava/lang/Object;
.source "OpenSSLMessageDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ctx:I

.field private singleByte:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "algorithm"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->singleByte:[B

    .line 64
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->algorithm:Ljava/lang/String;

    .line 68
    const-string v1, "MD2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "1.2.840.113549.2.2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 70
    :cond_1a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_33
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_new()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    .line 75
    :try_start_39
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(ILjava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4a} :catch_4b

    .line 79
    return-void

    .line 76
    :catch_4b
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;
    .registers 2
    .parameter "algorithm"

    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 82
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    invoke-static {v1, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestFinal(I[BI)I

    move-result v0

    .line 83
    .local v0, i:I
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->reset()V

    .line 84
    return v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_free(I)V

    .line 116
    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestBlockSize(I)I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestSize(I)I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->algorithm:Ljava/lang/String;

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public update(B)V
    .registers 6
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->singleByte:[B

    aput-byte p1, v0, v3

    .line 105
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->singleByte:[B

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    .line 106
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->ctx:I

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    .line 110
    return-void
.end method
