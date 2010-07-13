.class public Lorg/bouncycastle/jce/provider/JCEMac;
.super Ljavax/crypto/MacSpi;
.source "JCEMac.java"

# interfaces
.implements Lorg/bouncycastle/jce/provider/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JCEMac$PBEWithSHA;,
        Lorg/bouncycastle/jce/provider/JCEMac$OldSHA512;,
        Lorg/bouncycastle/jce/provider/JCEMac$SHA512;,
        Lorg/bouncycastle/jce/provider/JCEMac$OldSHA384;,
        Lorg/bouncycastle/jce/provider/JCEMac$SHA384;,
        Lorg/bouncycastle/jce/provider/JCEMac$SHA256;,
        Lorg/bouncycastle/jce/provider/JCEMac$SHA224;,
        Lorg/bouncycastle/jce/provider/JCEMac$SHA1;,
        Lorg/bouncycastle/jce/provider/JCEMac$MD5;,
        Lorg/bouncycastle/jce/provider/JCEMac$DES9797Alg3;,
        Lorg/bouncycastle/jce/provider/JCEMac$DESede64;,
        Lorg/bouncycastle/jce/provider/JCEMac$DESedeCFB8;,
        Lorg/bouncycastle/jce/provider/JCEMac$DESCFB8;,
        Lorg/bouncycastle/jce/provider/JCEMac$DESede;,
        Lorg/bouncycastle/jce/provider/JCEMac$DES;
    }
.end annotation


# instance fields
.field private keySize:I

.field private macEngine:Lorg/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .registers 3
    .parameter "macEngine"

    .prologue
    .line 45
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 41
    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 46
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 47
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/Mac;III)V
    .registers 6
    .parameter "macEngine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "keySize"

    .prologue
    .line 54
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 41
    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    .line 56
    iput p2, p0, Lorg/bouncycastle/jce/provider/JCEMac;->pbeType:I

    .line 57
    iput p3, p0, Lorg/bouncycastle/jce/provider/JCEMac;->pbeHash:I

    .line 58
    iput p4, p0, Lorg/bouncycastle/jce/provider/JCEMac;->keySize:I

    .line 59
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEMac;->engineGetMacLength()I

    move-result v1

    new-array v0, v1, [B

    .line 134
    .local v0, out:[B
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 136
    return-object v0
.end method

.method protected engineGetMacLength()I
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 8
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 68
    if-nez p1, :cond_a

    .line 70
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "key is null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    :cond_a
    instance-of v3, p1, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    if-eqz v3, :cond_33

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jce/provider/JCEPBEKey;

    move-object v1, v0

    .line 77
    .local v1, k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 79
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JCEPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .line 103
    .end local v1           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    .end local p2
    .local v2, param:Lorg/bouncycastle/crypto/CipherParameters;
    :goto_1c
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v3, v2}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 104
    return-void

    .line 81
    .end local v2           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local v1       #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    .restart local p2
    :cond_22
    instance-of v3, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v3, :cond_2b

    .line 83
    invoke-static {v1, p2}, Lorg/bouncycastle/jce/provider/PBE$Util;->makePBEMacParameters(Lorg/bouncycastle/jce/provider/JCEPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    .restart local v2       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_1c

    .line 87
    .end local v2           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_2b
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "PBE requires PBE parameters to be set."

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    .end local v1           #k:Lorg/bouncycastle/jce/provider/JCEPBEKey;
    :cond_33
    instance-of v3, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v3, :cond_4c

    .line 92
    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2
    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .restart local v2       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_1c

    .line 94
    .end local v2           #param:Lorg/bouncycastle/crypto/CipherParameters;
    .restart local p2
    :cond_4c
    if-nez p2, :cond_58

    .line 96
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v2       #param:Lorg/bouncycastle/crypto/CipherParameters;
    goto :goto_1c

    .line 100
    .end local v2           #param:Lorg/bouncycastle/crypto/CipherParameters;
    :cond_58
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "unknown parameter type."

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineReset()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    .line 114
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "input"

    .prologue
    .line 119
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 120
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 127
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 128
    return-void
.end method
