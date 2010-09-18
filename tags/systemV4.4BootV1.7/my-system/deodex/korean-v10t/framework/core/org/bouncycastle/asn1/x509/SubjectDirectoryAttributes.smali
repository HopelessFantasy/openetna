.class public Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectDirectoryAttributes.java"


# instance fields
.field private attributes:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .registers 5
    .parameter "attributes"

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    .line 95
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 97
    .local v0, e:Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e

    .line 101
    :cond_1e
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    .line 75
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 77
    .local v0, e:Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 79
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 80
    .local v1, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    new-instance v3, Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_e

    .line 82
    .end local v1           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_27
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;
    .registers 4
    .parameter "obj"

    .prologue
    .line 39
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;

    if-eqz v0, :cond_a

    .line 41
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;

    .end local p0
    move-object v0, p0

    .line 46
    :goto_9
    return-object v0

    .line 44
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 49
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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
.method public getAttributes()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 125
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 126
    .local v1, vec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/SubjectDirectoryAttributes;->attributes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 128
    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 131
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/x509/Attribute;

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_b

    .line 134
    :cond_1b
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method
