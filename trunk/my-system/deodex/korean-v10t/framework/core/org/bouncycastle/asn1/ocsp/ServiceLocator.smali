.class public Lorg/bouncycastle/asn1/ocsp/ServiceLocator;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "ServiceLocator.java"


# instance fields
.field issuer:Lorg/bouncycastle/asn1/x509/X509Name;

.field locator:Lorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    return-void
.end method


# virtual methods
.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 27
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ServiceLocator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 29
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/bouncycastle/asn1/DERObject;

    if-eqz v1, :cond_13

    .line 31
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ServiceLocator;->locator:Lorg/bouncycastle/asn1/DERObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 34
    :cond_13
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
