.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$IDEA;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IDEA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 371
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    .prologue
    .line 384
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 386
    .local v1, iv:[B
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$IDEA;->random:Ljava/security/SecureRandom;

    if-nez v3, :cond_f

    .line 388
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$IDEA;->random:Ljava/security/SecureRandom;

    .line 391
    :cond_f
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$IDEA;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 397
    :try_start_14
    const-string v3, "IDEA"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 398
    .local v2, params:Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_25

    .line 405
    return-object v2

    .line 400
    .end local v2           #params:Ljava/security/AlgorithmParameters;
    :catch_25
    move-exception v3

    move-object v0, v3

    .line 402
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .parameter "genParamSpec"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for IDEA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
