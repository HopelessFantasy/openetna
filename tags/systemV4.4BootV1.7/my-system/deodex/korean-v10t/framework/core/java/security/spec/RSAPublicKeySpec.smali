.class public Ljava/security/spec/RSAPublicKeySpec;
.super Ljava/lang/Object;
.source "RSAPublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final modulus:Ljava/math/BigInteger;

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3
    .parameter "modulus"
    .parameter "publicExponent"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Ljava/security/spec/RSAPublicKeySpec;->modulus:Ljava/math/BigInteger;

    .line 49
    iput-object p2, p0, Ljava/security/spec/RSAPublicKeySpec;->publicExponent:Ljava/math/BigInteger;

    .line 50
    return-void
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljava/security/spec/RSAPublicKeySpec;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method
