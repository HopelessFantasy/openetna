.class public abstract Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$CAST5;,
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$IDEA;,
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$AES;,
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;,
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DES;,
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;,
        Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
    }
.end annotation


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 34
    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 409
    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 3
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 40
    iput p1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 42
    return-void
.end method
