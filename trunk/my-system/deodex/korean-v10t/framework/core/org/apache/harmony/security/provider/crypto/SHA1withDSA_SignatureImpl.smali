.class public Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;
.super Ljava/security/Signature;
.source "SHA1withDSA_SignatureImpl.java"


# instance fields
.field private dsaKey:Ljava/security/interfaces/DSAKey;

.field private msgDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "SHA1withDSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    .line 55
    return-void
.end method

.method private checkSignature([BII)Z
    .registers 27
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 343
    add-int/lit8 v21, p2, 0x3

    :try_start_2
    aget-byte v9, p1, v21

    .line 344
    .local v9, n1:I
    add-int v21, p2, v9

    add-int/lit8 v21, v21, 0x5

    aget-byte v10, p1, v21

    .line 346
    .local v10, n2:I
    add-int/lit8 v21, p2, 0x0

    aget-byte v21, p1, v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    add-int/lit8 v21, p2, 0x2

    aget-byte v21, p1, v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    add-int v21, p2, v9

    add-int/lit8 v21, v21, 0x4

    aget-byte v21, p1, v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    add-int/lit8 v21, p2, 0x1

    aget-byte v21, p1, v21

    add-int v22, v9, v10

    add-int/lit8 v22, v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5a

    const/16 v21, 0x15

    move v0, v9

    move/from16 v1, v21

    if-gt v0, v1, :cond_5a

    const/16 v21, 0x15

    move v0, v10

    move/from16 v1, v21

    if-gt v0, v1, :cond_5a

    if-eqz p3, :cond_75

    add-int/lit8 v21, p2, 0x1

    aget-byte v21, p1, v21

    add-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    move/from16 v1, p3

    if-le v0, v1, :cond_75

    .line 351
    :cond_5a
    new-instance v21, Ljava/security/SignatureException;

    const-string v22, "security.16F"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_66
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_66} :catch_66

    .line 355
    .end local v9           #n1:I
    .end local v10           #n2:I
    :catch_66
    move-exception v21

    move-object/from16 v7, v21

    .line 356
    .local v7, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v21, Ljava/security/SignatureException;

    const-string v22, "security.170"

    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 354
    .end local v7           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v9       #n1:I
    .restart local v10       #n2:I
    :cond_75
    add-int/lit8 v21, v9, 0x5

    add-int v21, v21, v10

    :try_start_79
    aget-byte v21, p1, v21
    :try_end_7b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_79 .. :try_end_7b} :catch_66

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 361
    .local v6, digest:[B
    new-array v5, v9, [B

    .line 362
    .local v5, bytes:[B
    add-int/lit8 v21, p2, 0x4

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v5

    move/from16 v3, v22

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    new-instance v14, Ljava/math/BigInteger;

    invoke-direct {v14, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 365
    .local v14, r:Ljava/math/BigInteger;
    new-array v5, v10, [B

    .line 366
    add-int/lit8 v21, p2, 0x6

    add-int v21, v21, v9

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object v2, v5

    move/from16 v3, v22

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    new-instance v15, Ljava/math/BigInteger;

    invoke-direct {v15, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 369
    .local v15, s:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v12

    .line 370
    .local v12, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    .line 371
    .local v11, p:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v13

    .line 372
    .local v13, q:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    .line 373
    .local v8, g:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v20

    .line 377
    .local v20, y:Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_105

    invoke-virtual {v14, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_105

    invoke-virtual {v15}, Ljava/math/BigInteger;->signum()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_105

    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_108

    .line 379
    :cond_105
    const/16 v21, 0x0

    .line 392
    :goto_107
    return v21

    .line 382
    :cond_108
    invoke-virtual {v15, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 384
    .local v19, w:Ljava/math/BigInteger;
    new-instance v21, Ljava/math/BigInteger;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 385
    .local v16, u1:Ljava/math/BigInteger;
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 387
    .local v17, u2:Ljava/math/BigInteger;
    move-object v0, v8

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 389
    .local v18, v:Ljava/math/BigInteger;
    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    if-eqz v21, :cond_164

    .line 390
    const/16 v21, 0x0

    goto :goto_107

    .line 392
    :cond_164
    const/16 v21, 0x1

    goto :goto_107
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_e

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 12
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 90
    if-eqz p1, :cond_7

    instance-of v7, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v7, :cond_13

    .line 91
    :cond_7
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.168"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 95
    :cond_13
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    .line 96
    .local v4, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 97
    .local v3, p:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 98
    .local v5, q:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 99
    .local v1, g:Ljava/math/BigInteger;
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPrivateKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    .line 102
    .local v6, x:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 103
    .local v2, n:I
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ne v7, v9, :cond_4b

    const/16 v7, 0x200

    if-lt v2, v7, :cond_4b

    const/16 v7, 0x400

    if-gt v2, v7, :cond_4b

    and-int/lit8 v7, v2, 0x3f

    if-eqz v7, :cond_57

    .line 105
    :cond_4b
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.169"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 107
    :cond_57
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-eq v7, v9, :cond_71

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_71

    .line 108
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.16A"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 110
    :cond_71
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-ne v7, v9, :cond_7e

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8a

    .line 111
    :cond_7e
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.16B"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 114
    :cond_8a
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    .line 116
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 117
    return-void
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
    const/4 v9, 0x1

    .line 136
    if-eqz p1, :cond_7

    instance-of v7, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v7, :cond_13

    .line 137
    :cond_7
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.16C"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 141
    :cond_13
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    .line 142
    .local v4, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 143
    .local v3, p:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 144
    .local v5, q:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 145
    .local v1, g:Ljava/math/BigInteger;
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    .line 148
    .local v6, y:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 149
    .local v2, n1:I
    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ne v7, v9, :cond_4b

    const/16 v7, 0x200

    if-lt v2, v7, :cond_4b

    const/16 v7, 0x400

    if-gt v2, v7, :cond_4b

    and-int/lit8 v7, v2, 0x3f

    if-eqz v7, :cond_57

    .line 151
    :cond_4b
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.169"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    :cond_57
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-ne v7, v9, :cond_65

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_71

    .line 154
    :cond_65
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.16A"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    :cond_71
    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-eq v7, v9, :cond_83

    .line 157
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "security.16D"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 160
    :cond_83
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    .line 162
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 163
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 173
    if-nez p1, :cond_10

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v2, "param"

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_10
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "security.16E"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v14, 0x0

    .line 199
    .local v14, r:Ljava/math/BigInteger;
    const/16 v17, 0x0

    .line 200
    .local v17, s:Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 217
    .local v7, k:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    if-nez v21, :cond_17

    .line 218
    new-instance v21, Ljava/security/SecureRandom;

    invoke-direct/range {v21 .. v21}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->appRandom:Ljava/security/SecureRandom;

    .line 221
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v12

    .line 222
    .local v12, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v11

    .line 223
    .local v11, p:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v13

    .line 224
    .local v13, q:Ljava/math/BigInteger;
    invoke-interface {v12}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    .line 225
    .local v6, g:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object v5, v0

    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v20

    .line 229
    .local v20, x:Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    move-object v0, v5

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 231
    .local v5, digestBI:Ljava/math/BigInteger;
    const/16 v21, 0x14

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 235
    .local v16, randomBytes:[B
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 237
    new-instance v7, Ljava/math/BigInteger;

    .end local v7           #k:Ljava/math/BigInteger;
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 238
    .restart local v7       #k:Ljava/math/BigInteger;
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_56

    .line 241
    invoke-virtual {v6, v7, v11}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 242
    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_56

    .line 246
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 249
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_56

    .line 256
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v15

    .line 257
    .local v15, rBytes:[B
    array-length v9, v15

    .line 258
    .local v9, n1:I
    const/16 v21, 0x0

    aget-byte v21, v15, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_c9

    .line 259
    add-int/lit8 v9, v9, 0x1

    .line 261
    :cond_c9
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v18

    .line 262
    .local v18, sBytes:[B
    move-object/from16 v0, v18

    array-length v0, v0

    move v10, v0

    .line 263
    .local v10, n2:I
    const/16 v21, 0x0

    aget-byte v21, v18, v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    if-eqz v21, :cond_df

    .line 264
    add-int/lit8 v10, v10, 0x1

    .line 267
    :cond_df
    add-int/lit8 v21, v9, 0x6

    add-int v21, v21, v10

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 268
    .local v19, signature:[B
    const/16 v21, 0x0

    const/16 v22, 0x30

    aput-byte v22, v19, v21

    .line 269
    const/16 v21, 0x1

    add-int/lit8 v22, v9, 0x4

    add-int v22, v22, v10

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 270
    const/16 v21, 0x2

    const/16 v22, 0x2

    aput-byte v22, v19, v21

    .line 271
    const/16 v21, 0x3

    move v0, v9

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 272
    add-int/lit8 v21, v9, 0x4

    const/16 v22, 0x2

    aput-byte v22, v19, v21

    .line 273
    add-int/lit8 v21, v9, 0x5

    move v0, v10

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 275
    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_153

    .line 276
    const/4 v8, 0x4

    .line 280
    .local v8, n:I
    :goto_122
    const/16 v21, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v22, v0

    move-object v0, v15

    move/from16 v1, v21

    move-object/from16 v2, v19

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_155

    .line 283
    add-int/lit8 v8, v9, 0x6

    .line 287
    :goto_13f
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v19

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    return-object v19

    .line 278
    .end local v8           #n:I
    :cond_153
    const/4 v8, 0x5

    .restart local v8       #n:I
    goto :goto_122

    .line 285
    :cond_155
    add-int/lit8 v8, v9, 0x7

    goto :goto_13f
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 303
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 321
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 5
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 409
    if-nez p1, :cond_11

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v2, "sigBytes"

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_11
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .registers 5
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method
