.class public Lorg/bouncycastle/jce/provider/PBE$Util;
.super Ljava/lang/Object;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .registers 5
    .parameter "type"
    .parameter "hash"

    .prologue
    .line 54
    if-nez p0, :cond_23

    .line 56
    packed-switch p1, :pswitch_data_62

    .line 65
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports only MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :pswitch_d
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 102
    .local v0, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :goto_17
    return-object v0

    .line 62
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_18
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 63
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_17

    .line 68
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_23
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2c

    .line 70
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_17

    .line 72
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2c
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5b

    .line 74
    packed-switch p1, :pswitch_data_6a

    .line 94
    :pswitch_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :pswitch_3a
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 78
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_17

    .line 80
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_45
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 81
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_17

    .line 91
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_50
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 92
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_17

    .line 99
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_5b
    new-instance v0, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_17

    .line 56
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_d
        :pswitch_18
    .end packed-switch

    .line 74
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_45
        :pswitch_32
        :pswitch_32
        :pswitch_50
    .end packed-switch
.end method

.method static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 10
    .parameter "keySpec"
    .parameter "type"
    .parameter "hash"
    .parameter "keySize"

    .prologue
    .line 254
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 258
    .local v0, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_28

    .line 260
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    .line 267
    .local v2, key:[B
    :goto_f
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 269
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 271
    .local v3, param:Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    array-length v4, v2

    if-eq v1, v4, :cond_31

    .line 273
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 264
    .end local v1           #i:I
    .end local v2           #key:[B
    .end local v3           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_28
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    .restart local v2       #key:[B
    goto :goto_f

    .line 276
    .restart local v1       #i:I
    .restart local v3       #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_31
    return-object v3
.end method

.method static makePBEMacParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 10
    .parameter "pbeKey"
    .parameter "spec"

    .prologue
    .line 173
    if-eqz p1, :cond_6

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_e

    .line 175
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 178
    :cond_e
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v5, v0

    .line 179
    .local v5, pbeParam:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v7

    invoke-static {v6, v7}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 180
    .local v1, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v3

    .line 183
    .local v3, key:[B
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 185
    const/4 v6, 0x2

    new-array v3, v6, [B

    .line 188
    :cond_2b
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v1, v3, v6, v7}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 190
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 192
    .local v4, param:Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3f
    array-length v6, v3

    if-eq v2, v6, :cond_48

    .line 194
    const/4 v6, 0x0

    aput-byte v6, v3, v2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 197
    :cond_48
    return-object v4
.end method

.method static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 11
    .parameter "keySpec"
    .parameter "type"
    .parameter "hash"
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 211
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v0

    .line 215
    .local v0, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2a

    .line 217
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v2

    .line 224
    .local v2, key:[B
    :goto_f
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v4

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 226
    if-eqz p4, :cond_33

    .line 228
    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .line 235
    .local v3, param:Lorg/bouncycastle/crypto/CipherParameters;
    :goto_20
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    array-length v4, v2

    if-eq v1, v4, :cond_38

    .line 237
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 221
    .end local v1           #i:I
    .end local v2           #key:[B
    .end local v3           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_2a
    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v2

    .restart local v2       #key:[B
    goto :goto_f

    .line 232
    :cond_33
    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    .restart local v3       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_20

    .line 240
    .restart local v1       #i:I
    :cond_38
    return-object v3
.end method

.method static makePBEParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 12
    .parameter "pbeKey"
    .parameter "spec"
    .parameter "targetAlgorithm"

    .prologue
    .line 114
    if-eqz p1, :cond_6

    instance-of v7, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v7, :cond_e

    .line 116
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 119
    :cond_e
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v6, v0

    .line 120
    .local v6, pbeParam:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getType()I

    move-result v7

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getDigest()I

    move-result v8

    invoke-static {v7, v8}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 121
    .local v1, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v4

    .line 124
    .local v4, key:[B
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->shouldTryWrongPKCS12()Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 126
    const/4 v7, 0x2

    new-array v4, v7, [B

    .line 129
    :cond_2b
    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v8

    invoke-virtual {v1, v4, v7, v8}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 131
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v7

    if-eqz v7, :cond_6f

    .line 133
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v7

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getIvSize()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 140
    .local v5, param:Lorg/bouncycastle/crypto/CipherParameters;
    :goto_48
    const-string v7, "DES"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 142
    instance-of v7, v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_78

    .line 144
    move-object v0, v5

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 146
    .local v3, kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    .line 156
    .end local v3           #kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_65
    :goto_65
    const/4 v2, 0x0

    .local v2, i:I
    :goto_66
    array-length v7, v4

    if-eq v2, v7, :cond_84

    .line 158
    const/4 v7, 0x0

    aput-byte v7, v4, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 137
    .end local v2           #i:I
    .end local v5           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_6f
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getKeySize()I

    move-result v7

    invoke-virtual {v1, v7}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .restart local v5       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_48

    .line 150
    :cond_78
    move-object v0, v5

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 152
    .restart local v3       #kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/crypto/params/DESParameters;->setOddParity([B)V

    goto :goto_65

    .line 161
    .end local v3           #kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    .restart local v2       #i:I
    :cond_84
    return-object v5
.end method
