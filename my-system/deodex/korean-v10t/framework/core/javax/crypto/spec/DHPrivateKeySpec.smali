.class public Ljavax/crypto/spec/DHPrivateKeySpec;
.super Ljava/lang/Object;
.source "DHPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "x"
    .parameter "p"
    .parameter "g"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->x:Ljava/math/BigInteger;

    .line 48
    iput-object p2, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->p:Ljava/math/BigInteger;

    .line 49
    iput-object p3, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->g:Ljava/math/BigInteger;

    .line 50
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Ljavax/crypto/spec/DHPrivateKeySpec;->x:Ljava/math/BigInteger;

    return-object v0
.end method
