.class public Ljava/security/spec/DSAParameterSpec;
.super Ljava/lang/Object;
.source "DSAParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ljava/security/interfaces/DSAParams;


# instance fields
.field private final g:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "p"
    .parameter "q"
    .parameter "g"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Ljava/security/spec/DSAParameterSpec;->p:Ljava/math/BigInteger;

    .line 50
    iput-object p2, p0, Ljava/security/spec/DSAParameterSpec;->q:Ljava/math/BigInteger;

    .line 51
    iput-object p3, p0, Ljava/security/spec/DSAParameterSpec;->g:Ljava/math/BigInteger;

    .line 52
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Ljava/security/spec/DSAParameterSpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method
