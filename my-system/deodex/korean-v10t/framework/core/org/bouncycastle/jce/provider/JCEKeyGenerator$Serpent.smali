.class public Lorg/bouncycastle/jce/provider/JCEKeyGenerator$Serpent;
.super Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serpent"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 351
    const-string v0, "Serpent"

    const/16 v1, 0xc0

    new-instance v2, Lorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 352
    return-void
.end method
