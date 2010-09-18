.class public Lorg/bouncycastle/jce/spec/IEKeySpec;
.super Ljava/lang/Object;
.source "IEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/bouncycastle/jce/interfaces/IESKey;


# instance fields
.field private privKey:Ljava/security/PrivateKey;

.field private pubKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .registers 3
    .parameter "privKey"
    .parameter "pubKey"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/IEKeySpec;->privKey:Ljava/security/PrivateKey;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/jce/spec/IEKeySpec;->pubKey:Ljava/security/PublicKey;

    .line 29
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    const-string v0, "IES"

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivate()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IEKeySpec;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublic()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/IEKeySpec;->pubKey:Ljava/security/PublicKey;

    return-object v0
.end method
