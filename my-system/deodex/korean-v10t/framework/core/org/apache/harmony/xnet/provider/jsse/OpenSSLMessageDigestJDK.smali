.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigest;
.source "OpenSSLMessageDigestJDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA256;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA224;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$SHA1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$MD5;
    }
.end annotation


# instance fields
.field private ctx:I

.field private singleByte:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 7
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 46
    const-string v1, "MD2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "1.2.840.113549.2.2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 48
    :cond_18
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1e
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_new()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    .line 53
    :try_start_24
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(ILjava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_39} :catch_3a

    .line 57
    return-void

    .line 54
    :catch_3a
    move-exception v1

    move-object v0, v1

    .line 55
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

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

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;
    .registers 2
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected engineDigest()[B
    .registers 4

    .prologue
    .line 61
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestSize(I)I

    move-result v1

    new-array v0, v1, [B

    .line 62
    .local v0, result:[B
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestFinal(I[BI)I

    .line 63
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->engineReset()V

    .line 64
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestSize(I)I

    move-result v0

    return v0
.end method

.method protected engineReset()V
    .registers 5

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestInit(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    aput-byte p1, v0, v2

    .line 80
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    .line 81
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 85
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_DigestUpdate(I[BII)V

    .line 86
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigestJDK;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_free(I)V

    .line 92
    return-void
.end method
