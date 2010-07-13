.class public Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "IetfAttrSyntax.java"


# static fields
.field public static final VALUE_OCTETS:I = 0x1

.field public static final VALUE_OID:I = 0x2

.field public static final VALUE_UTF8:I = 0x3


# instance fields
.field policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field valueChoice:I

.field values:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .parameter "seq"

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 27
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 28
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    .line 29
    const/4 v4, -0x1

    iput v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, i:I
    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_38

    .line 40
    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v4, v6}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 49
    :cond_28
    :goto_28
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v4, :cond_4c

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Non-IetfAttrSyntax encoding"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_38
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    .line 45
    invoke-virtual {p1, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 54
    :cond_4c
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 56
    .restart local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, e:Ljava/util/Enumeration;
    :goto_56
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObject;

    .line 61
    .local v2, obj:Lorg/bouncycastle/asn1/DERObject;
    instance-of v4, v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_79

    .line 63
    const/4 v3, 0x2

    .line 78
    .local v3, type:I
    :goto_67
    iget v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    if-gez v4, :cond_6d

    .line 80
    iput v3, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    .line 83
    :cond_6d
    iget v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    if-eq v3, v4, :cond_8d

    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mix of value types in IetfAttrSyntax"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    .end local v3           #type:I
    :cond_79
    instance-of v4, v2, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v4, :cond_7f

    .line 67
    const/4 v3, 0x3

    .restart local v3       #type:I
    goto :goto_67

    .line 69
    .end local v3           #type:I
    :cond_7f
    instance-of v4, v2, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v4, :cond_85

    .line 71
    const/4 v3, 0x1

    .restart local v3       #type:I
    goto :goto_67

    .line 75
    .end local v3           #type:I
    :cond_85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bad value type encoding IetfAttrSyntax"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    .restart local v3       #type:I
    :cond_8d
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_56

    .line 90
    .end local v2           #obj:Lorg/bouncycastle/asn1/DERObject;
    .end local v3           #type:I
    :cond_93
    return-void
.end method


# virtual methods
.method public getPolicyAuthority()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getValueType()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->valueChoice:I

    return v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 5

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 106
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 108
    .local v1, tmp:[Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v2, v1

    if-eq v0, v2, :cond_59

    .line 110
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    aput-object v2, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 115
    .end local v0           #i:I
    .end local v1           #tmp:[Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_20
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 117
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 119
    .local v1, tmp:[Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_30
    array-length v2, v1

    if-eq v0, v2, :cond_59

    .line 121
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 128
    .end local v0           #i:I
    .end local v1           #tmp:[Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_40
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Lorg/bouncycastle/asn1/DERUTF8String;

    .line 130
    .local v1, tmp:[Lorg/bouncycastle/asn1/DERUTF8String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_49
    array-length v2, v1

    if-eq v0, v2, :cond_59

    .line 132
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERUTF8String;

    aput-object v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 135
    .end local v1           #tmp:[Lorg/bouncycastle/asn1/DERUTF8String;
    :cond_59
    return-object v1
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 7

    .prologue
    .line 156
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 158
    .local v1, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v3, :cond_14

    .line 160
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->policyAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 163
    :cond_14
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 165
    .local v2, v2:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .end local p0
    .local v0, i:Ljava/util/Enumeration;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 167
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1f

    .line 170
    :cond_2f
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 172
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v3
.end method
