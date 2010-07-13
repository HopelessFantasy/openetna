.class public Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
.super Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "KeyDerivationFunc.java"


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .parameter "seq"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 15
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "id"
    .parameter "params"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 22
    return-void
.end method
