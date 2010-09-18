.class public Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;
.super Ljava/security/KeyFactorySpi;
.source "DSAKeyFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_1a

    .line 56
    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_e

    .line 58
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    .line 62
    :goto_d
    return-object v0

    .line 60
    .restart local p1
    :cond_e
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 62
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    goto :goto_d

    .line 65
    .restart local p1
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "security.19C"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_1a

    .line 84
    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_e

    .line 86
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    .line 90
    :goto_d
    return-object v0

    .line 88
    .restart local p1
    :cond_e
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 90
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    goto :goto_d

    .line 93
    .restart local p1
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "security.19D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 14
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 123
    .local p2, keySpec:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_a0

    .line 124
    if-nez p2, :cond_10

    .line 125
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "security.19E"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 128
    :cond_10
    instance-of v9, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v9, :cond_58

    .line 129
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v4, v0

    .line 131
    .local v4, privateKey:Ljava/security/interfaces/DSAPrivateKey;
    const-class v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 133
    invoke-interface {v4}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v7

    .line 135
    .local v7, x:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 137
    .local v3, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 138
    .local v2, p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 139
    .local v6, q:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 141
    .local v1, g:Ljava/math/BigInteger;
    new-instance v9, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v9, v7, v2, v6, v1}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 169
    .end local v1           #g:Ljava/math/BigInteger;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #params:Ljava/security/interfaces/DSAParams;
    .end local v4           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    .end local v6           #q:Ljava/math/BigInteger;
    .end local v7           #x:Ljava/math/BigInteger;
    :goto_39
    return-object v9

    .line 144
    .restart local v4       #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_3a
    const-class v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 145
    new-instance v9, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_39

    .line 148
    :cond_4c
    new-instance v9, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "security.19C"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 152
    .end local v4           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_58
    instance-of v9, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v9, :cond_a0

    .line 153
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v5, v0

    .line 155
    .local v5, publicKey:Ljava/security/interfaces/DSAPublicKey;
    const-class v9, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_82

    .line 157
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    .line 159
    .local v8, y:Ljava/math/BigInteger;
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    .line 161
    .restart local v3       #params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 162
    .restart local v2       #p:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 163
    .restart local v6       #q:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 165
    .restart local v1       #g:Ljava/math/BigInteger;
    new-instance v9, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v9, v8, v2, v6, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_39

    .line 168
    .end local v1           #g:Ljava/math/BigInteger;
    .end local v2           #p:Ljava/math/BigInteger;
    .end local v3           #params:Ljava/security/interfaces/DSAParams;
    .end local v6           #q:Ljava/math/BigInteger;
    .end local v8           #y:Ljava/math/BigInteger;
    :cond_82
    const-class v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_94

    .line 169
    new-instance v9, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_39

    .line 172
    :cond_94
    new-instance v9, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "security.19D"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 176
    .end local v5           #publicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_a0
    new-instance v9, Ljava/security/spec/InvalidKeySpecException;

    const-string v10, "security.19F"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_6a

    .line 194
    instance-of v5, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v5, :cond_36

    .line 196
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v3, v0

    .line 197
    .local v3, privateKey:Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 200
    .local v2, params:Ljava/security/interfaces/DSAParams;
    :try_start_e
    new-instance v5, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v5}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_26
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_e .. :try_end_26} :catch_28

    move-result-object v5

    .line 216
    .end local v3           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :goto_27
    return-object v5

    .line 203
    .restart local v3       #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :catch_28
    move-exception v5

    move-object v1, v5

    .line 205
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "security.1A0"

    invoke-static {v6, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 210
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v2           #params:Ljava/security/interfaces/DSAParams;
    .end local v3           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_36
    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v5, :cond_6a

    .line 212
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v4, v0

    .line 213
    .local v4, publicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 216
    .restart local v2       #params:Ljava/security/interfaces/DSAParams;
    :try_start_42
    new-instance v5, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v5}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_5a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_42 .. :try_end_5a} :catch_5c

    move-result-object v5

    goto :goto_27

    .line 219
    :catch_5c
    move-exception v5

    move-object v1, v5

    .line 221
    .restart local v1       #e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "security.1A1"

    invoke-static {v6, v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 226
    .end local v1           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v2           #params:Ljava/security/interfaces/DSAParams;
    .end local v4           #publicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_6a
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "security.19F"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
