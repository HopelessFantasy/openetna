.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .registers 9
    .parameter "object"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p2, :cond_12

    .line 98
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "crypto.13"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_12
    :try_start_12
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 105
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 106
    .local v0, ap:Ljava/security/AlgorithmParameters;
    if-nez v0, :cond_41

    move-object v4, v5

    :goto_29
    iput-object v4, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 107
    if-nez v0, :cond_46

    move-object v4, v5

    :goto_2e
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 115
    return-void

    .line 106
    :cond_41
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v4

    goto :goto_29

    .line 107
    :cond_46
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;
    :try_end_49
    .catch Ljavax/crypto/BadPaddingException; {:try_start_12 .. :try_end_49} :catch_4b

    move-result-object v4

    goto :goto_2e

    .line 110
    .end local v0           #ap:Ljava/security/AlgorithmParameters;
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_4b
    move-exception v4

    move-object v2, v4

    .line 113
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .registers 4
    .parameter "so"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-nez p1, :cond_11

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.14"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_11
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 130
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 131
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 132
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 70
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 165
    if-nez p1, :cond_e

    .line 166
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "crypto.05"

    invoke-static {v6}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    :cond_e
    :try_start_e
    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 172
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v5, :cond_44

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_44

    .line 173
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 175
    .local v3, params:Ljava/security/AlgorithmParameters;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 176
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 180
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :goto_2f
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 181
    .local v4, serialized:[B
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 178
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #serialized:[B
    :cond_44
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_48
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_48} :catch_49
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_48} :catch_55
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_48} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_48} :catch_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_48} :catch_79

    goto :goto_2f

    .line 185
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_49
    move-exception v5

    move-object v1, v5

    .line 188
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_55
    move-exception v5

    move-object v1, v5

    .line 192
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_61
    move-exception v5

    move-object v1, v5

    .line 196
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 197
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_6d
    move-exception v5

    move-object v1, v5

    .line 200
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 201
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_79
    move-exception v5

    move-object v1, v5

    .line 203
    .local v1, e:Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_14

    .line 265
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "crypto.15"

    invoke-static {v6}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_14
    :try_start_14
    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v5, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 270
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v5, :cond_4a

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4a

    .line 271
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 273
    .local v3, params:Ljava/security/AlgorithmParameters;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 274
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 278
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :goto_35
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 279
    .local v4, serialized:[B
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 282
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 276
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #serialized:[B
    :cond_4a
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_4e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_14 .. :try_end_4e} :catch_4f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14 .. :try_end_4e} :catch_5b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_4e} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14 .. :try_end_4e} :catch_73
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_4e} :catch_7f

    goto :goto_35

    .line 283
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_4f
    move-exception v5

    move-object v1, v5

    .line 286
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 287
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_5b
    move-exception v5

    move-object v1, v5

    .line 290
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 291
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_67
    move-exception v5

    move-object v1, v5

    .line 294
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_73
    move-exception v5

    move-object v1, v5

    .line 298
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 299
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_7f
    move-exception v5

    move-object v1, v5

    .line 301
    .local v1, e:Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 229
    if-nez p1, :cond_e

    .line 230
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "crypto.13"

    invoke-static {v3}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_e
    iget-object v2, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 233
    .local v1, serialized:[B
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    .local v0, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
