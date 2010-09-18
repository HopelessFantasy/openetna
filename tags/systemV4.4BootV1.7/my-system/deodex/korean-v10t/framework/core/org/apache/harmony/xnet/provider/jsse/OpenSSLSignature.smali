.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.super Ljava/security/Signature;
.source "OpenSSLSignature.java"


# instance fields
.field private ctx:I

.field private dsa:I

.field private evpAlgorithm:Ljava/lang/String;

.field private rsa:I

.field private singleByte:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-string v3, "MD2withRSA"

    .line 80
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    .line 82
    const-string v1, "with"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 84
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_19
    const-string v1, "MD2withRSA"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "MD2withRSAEncryption"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "1.2.840.113549.1.1.2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "MD2/RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 93
    :cond_39
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "MD2withRSA"

    invoke-direct {v1, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_41
    const-string v1, "1.3.14.3.2.26with1.2.840.10040.4.1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "SHA1withDSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    const-string v1, "SHAwithDSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 104
    :cond_59
    const-string v1, "DSA-SHA"

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    .line 109
    :goto_5d
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_new()I

    move-result v1

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    .line 110
    return-void

    .line 106
    :cond_64
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    goto :goto_5d
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    .registers 2
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 12
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 141
    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_47

    .line 143
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 144
    .local v2, dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 145
    .local v1, dsaParams:Ljava/security/interfaces/DSAParams;
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_3b

    .line 166
    .end local v1           #dsaParams:Ljava/security/interfaces/DSAParams;
    .end local v2           #dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    :goto_33
    :try_start_33
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyInit(ILjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_7d

    .line 170
    return-void

    .line 149
    :catch_3b
    move-exception v5

    move-object v3, v5

    .line 150
    .local v3, ex:Ljava/lang/Exception;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 152
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_47
    instance-of v5, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v5, :cond_75

    .line 154
    :try_start_4b
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v4, v0

    .line 155
    .local v4, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B)I

    move-result v5

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_68} :catch_69

    goto :goto_33

    .line 158
    .end local v4           #rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :catch_69
    move-exception v5

    move-object v3, v5

    .line 159
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_75
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "Need DSA or RSA public key"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :catch_7d
    move-exception v5

    move-object v3, v5

    .line 168
    .restart local v3       #ex:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method protected engineSign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(B)V
    .registers 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineUpdate([BII)V

    .line 116
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 6
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 123
    :cond_b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyUpdate(I[BII)V

    .line 125
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 10
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 183
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v3, :cond_13

    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    move v1, v3

    .line 185
    .local v1, handle:I
    :goto_9
    if-nez v1, :cond_17

    .line 187
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Need DSA or RSA public key"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    .end local v1           #handle:I
    :cond_13
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    move v1, v3

    goto :goto_9

    .line 191
    .restart local v1       #handle:I
    :cond_17
    :try_start_17
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {v3, p1, v4, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyFinal(I[BIII)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_25

    move-result v2

    .line 192
    .local v2, result:I
    if-ne v2, v7, :cond_23

    move v3, v7

    :goto_22
    return v3

    :cond_23
    move v3, v6

    goto :goto_22

    .line 193
    .end local v2           #result:I
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 194
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 203
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    if-eqz v0, :cond_c

    .line 204
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    .line 207
    :cond_c
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v0, :cond_15

    .line 208
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    .line 211
    :cond_15
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-eqz v0, :cond_1e

    .line 212
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_free(I)V

    .line 214
    :cond_1e
    return-void
.end method
