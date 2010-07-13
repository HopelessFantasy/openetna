.class public Lorg/bouncycastle/asn1/x509/Attribute;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "Attribute.java"


# instance fields
.field private attrType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private attrValues:Lorg/bouncycastle/asn1/ASN1Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V
    .registers 3
    .parameter "attrType"
    .parameter "attrValues"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 56
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    .line 57
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;
    .registers 3
    .parameter "o"

    .prologue
    .line 26
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Attribute;

    if-eqz v0, :cond_a

    .line 28
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/Attribute;

    .end local p0
    move-object v0, p0

    .line 33
    :goto_9
    return-object v0

    .line 31
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/x509/Attribute;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 36
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAttrType()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 82
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/Attribute;->attrValues:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
