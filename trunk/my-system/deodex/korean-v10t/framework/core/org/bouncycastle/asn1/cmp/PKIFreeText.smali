.class public Lorg/bouncycastle/asn1/cmp/PKIFreeText;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIFreeText.java"


# instance fields
.field strings:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 43
    .local v0, e:Ljava/util/Enumeration;
    :cond_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 45
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_7

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to insert non UTF8 STRING into PKIFreeText"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1d
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERUTF8String;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 57
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 58
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    if-eqz v0, :cond_8

    .line 29
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .end local p0
    move-object v0, p0

    .line 33
    :goto_7
    return-object v0

    .line 31
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 36
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 21
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStringAt(I)Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 3
    .parameter "i"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERUTF8String;

    return-object p0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->strings:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
