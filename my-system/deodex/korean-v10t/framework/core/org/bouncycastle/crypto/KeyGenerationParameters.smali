.class public Lorg/bouncycastle/crypto/KeyGenerationParameters;
.super Ljava/lang/Object;
.source "KeyGenerationParameters.java"


# instance fields
.field private random:Ljava/security/SecureRandom;

.field private strength:I


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;I)V
    .registers 3
    .parameter "random"
    .parameter "strength"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    .line 25
    iput p2, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    .line 26
    return-void
.end method


# virtual methods
.method public getRandom()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getStrength()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lorg/bouncycastle/crypto/KeyGenerationParameters;->strength:I

    return v0
.end method