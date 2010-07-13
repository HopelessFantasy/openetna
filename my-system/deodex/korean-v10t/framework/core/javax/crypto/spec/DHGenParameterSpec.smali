.class public Ljavax/crypto/spec/DHGenParameterSpec;
.super Ljava/lang/Object;
.source "DHGenParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final exponentSize:I

.field private final primeSize:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "primeSize"
    .parameter "exponentSize"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    .line 44
    iput p2, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    .line 45
    return-void
.end method


# virtual methods
.method public getExponentSize()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->exponentSize:I

    return v0
.end method

.method public getPrimeSize()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Ljavax/crypto/spec/DHGenParameterSpec;->primeSize:I

    return v0
.end method
