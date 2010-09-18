.class public Lorg/bouncycastle/asn1/pkcs/CertBag;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CertBag.java"


# instance fields
.field certId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field certValue:Lorg/bouncycastle/asn1/DERObject;

.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lorg/bouncycastle/asn1/DERObject;

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERObject;)V
    .registers 3
    .parameter "certId"
    .parameter "certValue"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lorg/bouncycastle/asn1/DERObject;

    .line 32
    return-void
.end method


# virtual methods
.method public getCertId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getCertValue()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 48
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 49
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/pkcs/CertBag;->certValue:Lorg/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 51
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
