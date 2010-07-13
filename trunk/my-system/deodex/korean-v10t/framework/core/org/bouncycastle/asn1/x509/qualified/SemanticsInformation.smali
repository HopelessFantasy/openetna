.class public Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "SemanticsInformation.java"


# instance fields
.field nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

.field semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "seq"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 50
    .local v0, e:Ljava/util/Enumeration;
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_16

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "no objects in SemanticsInformation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 55
    :cond_16
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, object:Ljava/lang/Object;
    instance-of v4, v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_2e

    .line 58
    invoke-static {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 59
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 69
    .end local v3           #object:Ljava/lang/Object;
    :cond_2e
    :goto_2e
    if-eqz v3, :cond_54

    .line 71
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 72
    .local v1, generalNameSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 73
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3d
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_54

    .line 75
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    aput-object v5, v4, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 65
    .end local v1           #generalNameSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v2           #i:I
    .restart local v3       #object:Ljava/lang/Object;
    :cond_52
    const/4 v3, 0x0

    goto :goto_2e

    .line 78
    .end local v3           #object:Ljava/lang/Object;
    :cond_54
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 3
    .parameter "semanticsIdentifier"

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;[Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3
    .parameter "semanticsIdentifier"
    .parameter "generalNames"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 85
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 86
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3
    .parameter "generalNames"

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 97
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 98
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;
    .registers 3
    .parameter "obj"

    .prologue
    .line 34
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    if-eqz v0, :cond_a

    .line 36
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    .end local p0
    move-object v0, p0

    .line 41
    :goto_9
    return-object v0

    .line 39
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_18

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 44
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNameRegistrationAuthorities()[Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getSemanticsIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 114
    .local v1, seq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v3, :cond_e

    .line 116
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->semanticsIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 118
    :cond_e
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_2f

    .line 120
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v2, seqname:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    array-length v3, v3

    if-ge v0, v3, :cond_27

    .line 123
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/qualified/SemanticsInformation;->nameRegistrationAuthorities:[Lorg/bouncycastle/asn1/x509/GeneralName;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 125
    :cond_27
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 128
    .end local v0           #i:I
    .end local v2           #seqname:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2f
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v3
.end method
