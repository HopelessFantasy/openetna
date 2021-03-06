.class public Lorg/bouncycastle/x509/X509Attribute;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Attribute.java"


# instance fields
.field attr:Lorg/bouncycastle/asn1/x509/Attribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .parameter "oid"
    .parameter "value"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509Attribute;->attr:Lorg/bouncycastle/asn1/x509/Attribute;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 6
    .parameter "oid"
    .parameter "value"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    new-instance v0, Lorg/bouncycastle/asn1/x509/Attribute;

    new-instance v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509Attribute;->attr:Lorg/bouncycastle/asn1/x509/Attribute;

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "at"

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509Attribute;->attr:Lorg/bouncycastle/asn1/x509/Attribute;

    .line 26
    return-void
.end method


# virtual methods
.method public getOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/bouncycastle/x509/X509Attribute;->attr:Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Attribute;->getAttrType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 5

    .prologue
    .line 63
    iget-object v3, p0, Lorg/bouncycastle/x509/X509Attribute;->attr:Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    .line 64
    .local v1, s:Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    new-array v2, v3, [Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 66
    .local v2, values:[Lorg/bouncycastle/asn1/ASN1Encodable;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_d
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_1e

    .line 68
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    aput-object p0, v2, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 71
    :cond_1e
    return-object v2
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/bouncycastle/x509/X509Attribute;->attr:Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Attribute;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
