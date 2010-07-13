.class public Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "OtherKeyAttribute.java"


# instance fields
.field private keyAttr:Lorg/bouncycastle/asn1/DEREncodable;

.field private keyAttrId:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/DEREncodable;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "keyAttrId"
    .parameter "keyAttr"

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/DEREncodable;

    .line 52
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .registers 3
    .parameter "o"

    .prologue
    .line 26
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v0, :cond_a

    .line 28
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

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
    new-instance v0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

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
.method public getKeyAttr()Lorg/bouncycastle/asn1/DEREncodable;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getKeyAttrId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttrId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->keyAttr:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
