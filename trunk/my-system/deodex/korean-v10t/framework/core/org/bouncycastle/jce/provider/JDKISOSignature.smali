.class public Lorg/bouncycastle/jce/provider/JDKISOSignature;
.super Ljava/security/Signature;
.source "JDKISOSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKISOSignature$MD5WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKISOSignature$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 6
    .parameter "name"
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p2, v1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;Z)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    .line 36
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "param"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 5
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 51
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 53
    .local v0, param:Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 54
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 5
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 42
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 44
    .local v0, param:Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 45
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->generateSignature()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 79
    .local v1, sig:[B
    return-object v1

    .line 81
    .end local v1           #sig:[B
    :catch_7
    move-exception v2

    move-object v0, v2

    .line 83
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 60
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 61
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
    .line 69
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->update([BII)V

    .line 70
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 4
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/crypto/signers/ISO9796d2Signer;->verifySignature([B)Z

    move-result v0

    .line 93
    .local v0, yes:Z
    return v0
.end method
