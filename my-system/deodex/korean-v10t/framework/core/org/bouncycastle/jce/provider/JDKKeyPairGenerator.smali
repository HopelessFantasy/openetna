.class public abstract Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;,
        Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;,
        Lorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "algorithmName"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public abstract generateKeyPair()Ljava/security/KeyPair;
.end method

.method public abstract initialize(ILjava/security/SecureRandom;)V
.end method
