.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC2"
.end annotation


# instance fields
.field spec:Ljavax/crypto/spec/RC2ParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 272
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;-><init>()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    .prologue
    const-string v3, "RC2"

    const-string v3, "BC"

    .line 295
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    if-nez v3, :cond_39

    .line 297
    const/16 v3, 0x8

    new-array v1, v3, [B

    .line 299
    .local v1, iv:[B
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->random:Ljava/security/SecureRandom;

    if-nez v3, :cond_17

    .line 301
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->random:Ljava/security/SecureRandom;

    .line 304
    :cond_17
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 308
    :try_start_1c
    const-string v3, "RC2"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 309
    .local v2, params:Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2c} :catch_2d

    .line 329
    .end local v1           #iv:[B
    :goto_2c
    return-object v2

    .line 311
    .end local v2           #params:Ljava/security/AlgorithmParameters;
    .restart local v1       #iv:[B
    :catch_2d
    move-exception v3

    move-object v0, v3

    .line 313
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iv:[B
    :cond_39
    :try_start_39
    const-string v3, "RC2"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 321
    .restart local v2       #params:Ljava/security/AlgorithmParameters;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_47

    goto :goto_2c

    .line 323
    .end local v2           #params:Ljava/security/AlgorithmParameters;
    :catch_47
    move-exception v3

    move-object v0, v3

    .line 325
    .restart local v0       #e:Ljava/lang/Exception;
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
    .line 282
    instance-of v0, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_9

    .line 284
    check-cast p1, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    .line 285
    return-void

    .line 288
    .restart local p1
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for RC2 parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
