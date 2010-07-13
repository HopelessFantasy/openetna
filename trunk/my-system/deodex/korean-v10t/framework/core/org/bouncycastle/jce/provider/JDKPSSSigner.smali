.class public Lorg/bouncycastle/jce/provider/JDKPSSSigner;
.super Ljava/security/Signature;
.source "JDKPSSSigner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKPSSSigner$SHA512withRSA;,
        Lorg/bouncycastle/jce/provider/JDKPSSSigner$SHA384withRSA;,
        Lorg/bouncycastle/jce/provider/JDKPSSSigner$SHA256withRSA;,
        Lorg/bouncycastle/jce/provider/JDKPSSSigner$SHA224withRSA;,
        Lorg/bouncycastle/jce/provider/JDKPSSSigner$SHA1withRSA;,
        Lorg/bouncycastle/jce/provider/JDKPSSSigner$PSSwithRSA;
    }
.end annotation


# instance fields
.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private originalSpec:Ljava/security/spec/PSSParameterSpec;

.field private paramSpec:Ljava/security/spec/PSSParameterSpec;

.field private pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

.field private saltLength:I

.field private signer:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private trailer:B


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V
    .registers 5
    .parameter "name"
    .parameter "signer"
    .parameter "paramSpec"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 58
    if-nez p3, :cond_27

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    .line 61
    sget-object p3, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    .line 69
    :goto_c
    invoke-virtual {p3}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 70
    invoke-virtual {p3}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    .line 71
    invoke-virtual {p3}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->getTrailer(I)B

    move-result v0

    iput-byte v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    .line 72
    return-void

    .line 65
    :cond_27
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    .line 66
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    goto :goto_c
.end method

.method private getTrailer(I)B
    .registers 4
    .parameter "trailerField"

    .prologue
    .line 41
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 43
    const/16 v0, -0x44

    return v0

    .line 46
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown trailer field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "param"

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineGetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 4

    .prologue
    .line 201
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v1, :cond_19

    .line 203
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v1, :cond_19

    .line 207
    :try_start_8
    const-string v1, "PSS"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    .line 208
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1c

    .line 217
    :cond_19
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v1

    .line 210
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 7
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 106
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_c

    .line 108
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v4, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 113
    return-void
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 8
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 93
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_c

    .line 95
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPrivateKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    iget-byte v4, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;IB)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 100
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 78
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_c

    .line 80
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Supplied key is not a RSAPublicKey instance"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_c
    new-instance v0, Lorg/bouncycastle/crypto/signers/PSSSigner;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->signer:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget v3, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/signers/PSSSigner;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;I)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    const/4 v1, 0x0

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/PSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 86
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 155
    instance-of v1, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v1, :cond_d7

    .line 157
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    if-eqz v1, :cond_3d

    .line 161
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 163
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parameter must be using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->originalSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_3d
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MGF1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 168
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "unknown mask generation function specified"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_65
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    instance-of v1, v1, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v1, :cond_77

    .line 173
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "unkown MGF parameters"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_77
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    .line 178
    .local v0, mgfParams:Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    .line 180
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "digest algorithm for MGF should be the same as for PSS parameters."

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_97
    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 185
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    if-nez v1, :cond_c2

    .line 187
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no match on MGF digest algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_c2
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->saltLength:I

    .line 191
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->paramSpec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->getTrailer(I)B

    move-result v1

    iput-byte v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->trailer:B

    .line 197
    return-void

    .line 195
    .end local v0           #mgfParams:Ljava/security/spec/MGF1ParameterSpec;
    .restart local p1
    :cond_d7
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Only PSSParameterSpec supported"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineSign()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->generateSignature()[B
    :try_end_5
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 138
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 140
    .local v0, e:Lorg/bouncycastle/crypto/CryptoException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 119
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->update(B)V

    .line 120
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
    .line 128
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/PSSSigner;->update([BII)V

    .line 129
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 3
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKPSSSigner;->pss:Lorg/bouncycastle/crypto/signers/PSSSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/PSSSigner;->verifySignature([B)Z

    move-result v0

    return v0
.end method
