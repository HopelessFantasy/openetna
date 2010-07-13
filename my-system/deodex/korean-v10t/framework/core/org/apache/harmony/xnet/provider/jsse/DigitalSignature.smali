.class public Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private md5:Ljava/security/MessageDigest;

.field private md5_hash:[B

.field private sha:Ljava/security/MessageDigest;

.field private sha_hash:[B

.field private signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .parameter "keyExchange"

    .prologue
    const/4 v1, 0x0

    const-string v2, "SHA-1"

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    .line 60
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    .line 61
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 62
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 73
    :try_start_e
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-eq p1, v1, :cond_1e

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA:I

    if-eq p1, v1, :cond_1e

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA:I

    if-eq p1, v1, :cond_1e

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA_EXPORT:I

    if-ne p1, v1, :cond_37

    .line 78
    :cond_1e
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    .line 79
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    .line 80
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 99
    :cond_36
    :goto_36
    return-void

    .line 81
    :cond_37
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS:I

    if-eq p1, v1, :cond_3f

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS_EXPORT:I

    if-ne p1, v1, :cond_36

    .line 84
    :cond_3f
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    .line 85
    const-string v1, "NONEwithDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4f} :catch_50

    goto :goto_36

    .line 91
    :catch_50
    move-exception v1

    move-object v0, v1

    .line 92
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v2, 0x50

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "INTERNAL ERROR: Unexpected exception on digital signature"

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method


# virtual methods
.method public init(Ljava/security/PrivateKey;)V
    .registers 5
    .parameter "key"

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_a

    .line 108
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 115
    :cond_9
    :goto_9
    return-void

    .line 109
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    .line 110
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_9

    .line 112
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public init(Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter "cert"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_a

    .line 124
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 131
    :cond_9
    :goto_9
    return-void

    .line 125
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    .line 126
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_9

    .line 128
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public setMD5([B)V
    .registers 2
    .parameter "data"

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 156
    return-void
.end method

.method public setSHA([B)V
    .registers 2
    .parameter "data"

    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 164
    return-void
.end method

.method public sign()[B
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 172
    :try_start_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-nez v1, :cond_1a

    .line 173
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 174
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 176
    :cond_1a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v1, :cond_29

    .line 177
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_5c

    .line 178
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 183
    :cond_29
    :goto_29
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-nez v1, :cond_42

    .line 184
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 185
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 187
    :cond_42
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-eqz v1, :cond_51

    .line 188
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_70

    .line 189
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 194
    :cond_51
    :goto_51
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_7c

    .line 195
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 202
    :goto_5b
    return-object v1

    .line 179
    :cond_5c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_29

    .line 180
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_68

    goto :goto_29

    .line 200
    :catch_68
    move-exception v1

    move-object v0, v1

    .line 201
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    new-array v1, v5, [B

    goto :goto_5b

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    :cond_70
    :try_start_70
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_51

    .line 191
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B

    goto :goto_51

    .line 196
    :cond_7c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_87

    .line 197
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v1

    goto :goto_5b

    .line 199
    :cond_87
    const/4 v1, 0x0

    new-array v1, v1, [B
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_8a} :catch_68

    goto :goto_5b
.end method

.method public update([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v1, :cond_9

    .line 140
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    :cond_9
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v1, :cond_12

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 148
    :cond_12
    :goto_12
    return-void

    .line 145
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 146
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public verifySignature([B)Z
    .registers 11
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 213
    :try_start_2
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v3, :cond_d

    .line 214
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v3, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    .line 239
    :goto_c
    return v3

    .line 215
    :cond_d
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v3, :cond_52

    .line 216
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 218
    .local v0, decrypt:[B
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v3, :cond_46

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-eqz v3, :cond_46

    .line 219
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v3, v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [B

    .line 220
    .local v2, md5_sha:[B
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :goto_3e
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_50

    move v3, v8

    .line 228
    goto :goto_c

    .line 222
    .end local v2           #md5_sha:[B
    :cond_46
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v3, :cond_4d

    .line 223
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .restart local v2       #md5_sha:[B
    goto :goto_3e

    .line 225
    .end local v2           #md5_sha:[B
    :cond_4d
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .restart local v2       #md5_sha:[B
    goto :goto_3e

    :cond_50
    move v3, v7

    .line 230
    goto :goto_c

    .line 232
    .end local v0           #decrypt:[B
    .end local v2           #md5_sha:[B
    :cond_52
    if-eqz p1, :cond_57

    array-length v3, p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_5b

    if-nez v3, :cond_59

    :cond_57
    move v3, v8

    .line 233
    goto :goto_c

    :cond_59
    move v3, v7

    .line 235
    goto :goto_c

    .line 237
    :catch_5b
    move-exception v3

    move-object v1, v3

    .line 238
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v7

    .line 239
    goto :goto_c
.end method
