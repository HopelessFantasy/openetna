.class public Lorg/bouncycastle/jce/provider/BrokenPBE$Util;
.super Ljava/lang/Object;
.source "BrokenPBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/BrokenPBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;
    .registers 6
    .parameter "type"
    .parameter "hash"

    .prologue
    const-string v3, "unknown digest scheme for PBE encryption."

    .line 296
    if-nez p0, :cond_25

    .line 298
    packed-switch p1, :pswitch_data_74

    .line 307
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PKCS5 scheme 1 only supports only MD5 and SHA1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :pswitch_f
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 353
    .local v0, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :goto_19
    return-object v0

    .line 304
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_1a
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 305
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_19

    .line 310
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_25
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2e

    .line 312
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_19

    .line 314
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_2e
    const/4 v1, 0x3

    if-ne p0, v1, :cond_52

    .line 316
    packed-switch p1, :pswitch_data_7c

    .line 330
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :pswitch_3c
    new-instance v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 320
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_19

    .line 322
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_47
    new-instance v0, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/OldPKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 323
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_19

    .line 335
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :cond_52
    packed-switch p1, :pswitch_data_84

    .line 349
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown digest scheme for PBE encryption."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :pswitch_5d
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 339
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_19

    .line 341
    .end local v0           #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    :pswitch_68
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 342
    .restart local v0       #generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    goto :goto_19

    .line 298
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1a
    .end packed-switch

    .line 316
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_47
    .end packed-switch

    .line 335
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_5d
        :pswitch_68
    .end packed-switch
.end method

.method static makePBEMacParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;III)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 13
    .parameter "pbeKey"
    .parameter "spec"
    .parameter "type"
    .parameter "hash"
    .parameter "keySize"

    .prologue
    .line 426
    if-eqz p1, :cond_6

    instance-of v6, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v6, :cond_e

    .line 428
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 431
    :cond_e
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v5, v0

    .line 432
    .local v5, pbeParam:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p2, p3}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 433
    .local v1, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v3

    .line 436
    .local v3, key:[B
    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v6

    invoke-virtual {v5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v7

    invoke-virtual {v1, v3, v6, v7}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 438
    invoke-virtual {v1, p4}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    .line 440
    .local v4, param:Lorg/bouncycastle/crypto/CipherParameters;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2a
    array-length v6, v3

    if-eq v2, v6, :cond_33

    .line 442
    const/4 v6, 0x0

    aput-byte v6, v3, v2

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 445
    :cond_33
    return-object v4
.end method

.method static makePBEParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;IILjava/lang/String;II)Lorg/bouncycastle/crypto/CipherParameters;
    .registers 16
    .parameter "pbeKey"
    .parameter "spec"
    .parameter "type"
    .parameter "hash"
    .parameter "targetAlgorithm"
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 369
    if-eqz p1, :cond_6

    instance-of v7, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v7, :cond_e

    .line 371
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Need a PBEParameter spec with a PBE key."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 374
    :cond_e
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v6, v0

    .line 375
    .local v6, pbeParam:Ljavax/crypto/spec/PBEParameterSpec;
    invoke-static {p2, p3}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/PBEParametersGenerator;

    move-result-object v1

    .line 376
    .local v1, generator:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getEncoded()[B

    move-result-object v4

    .line 379
    .local v4, key:[B
    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v7

    invoke-virtual {v6}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v8

    invoke-virtual {v1, v4, v7, v8}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 381
    if-eqz p6, :cond_52

    .line 383
    invoke-virtual {v1, p5, p6}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .line 390
    .local v5, param:Lorg/bouncycastle/crypto/CipherParameters;
    :goto_2b
    const-string v7, "DES"

    invoke-virtual {p4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 392
    instance-of v7, v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v7, :cond_57

    .line 394
    move-object v0, v5

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 396
    .local v3, kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    .line 406
    .end local v3           #kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_48
    :goto_48
    const/4 v2, 0x0

    .local v2, i:I
    :goto_49
    array-length v7, v4

    if-eq v2, v7, :cond_63

    .line 408
    const/4 v7, 0x0

    aput-byte v7, v4, v2

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 387
    .end local v2           #i:I
    .end local v5           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_52
    invoke-virtual {v1, p5}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v5

    .restart local v5       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_2b

    .line 400
    :cond_57
    move-object v0, v5

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v3, v0

    .line 402
    .restart local v3       #kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jce/provider/BrokenPBE$Util;->setOddParity([B)V

    goto :goto_48

    .line 411
    .end local v3           #kParam:Lorg/bouncycastle/crypto/params/KeyParameter;
    .restart local v2       #i:I
    :cond_63
    return-object v5
.end method

.method private static setOddParity([B)V
    .registers 6
    .parameter "bytes"

    .prologue
    .line 276
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_25

    .line 278
    aget-byte v0, p0, v1

    .line 279
    .local v0, b:I
    and-int/lit16 v2, v0, 0xfe

    shr-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v0, 0x2

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x4

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x6

    xor-int/2addr v3, v4

    shr-int/lit8 v4, v0, 0x7

    xor-int/2addr v3, v4

    xor-int/lit8 v3, v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    .end local v0           #b:I
    :cond_25
    return-void
.end method
