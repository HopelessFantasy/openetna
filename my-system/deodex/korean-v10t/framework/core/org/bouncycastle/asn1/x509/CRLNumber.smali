.class public Lorg/bouncycastle/asn1/x509/CRLNumber;
.super Lorg/bouncycastle/asn1/DERInteger;
.source "CRLNumber.java"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "number"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCRLNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLNumber;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
