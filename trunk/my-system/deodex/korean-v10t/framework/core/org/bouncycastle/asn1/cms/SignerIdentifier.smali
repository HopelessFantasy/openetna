.class public Lorg/bouncycastle/asn1/cms/SignerIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "SignerIdentifier.java"


# instance fields
.field private id:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    .line 19
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .registers 4
    .parameter "o"

    .prologue
    .line 42
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    if-eqz v0, :cond_a

    .line 44
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    .end local p0
    move-object v0, p0

    .line 59
    :goto_9
    return-object v0

    .line 47
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_16

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    goto :goto_9

    .line 52
    .restart local p0
    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_22

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_9

    .line 57
    .restart local p0
    :cond_22
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_2e

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/DERObject;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    goto :goto_9

    .line 62
    .restart local p0
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getId()Lorg/bouncycastle/asn1/DEREncodable;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_10

    .line 75
    iget-object p0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 78
    :goto_f
    return-object v0

    .restart local p0
    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_f
.end method

.method public isTagged()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->id:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
