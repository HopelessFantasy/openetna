.class public Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "AuthorityInformationAccess.java"


# instance fields
.field private descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/x509/AccessDescription;

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    .line 53
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v2

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 55
    :cond_21
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 6
    .parameter "oid"
    .parameter "location"

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/AccessDescription;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    .line 66
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/asn1/x509/AccessDescription;

    invoke-direct {v2, p1, p2}, Lorg/bouncycastle/asn1/x509/AccessDescription;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    aput-object v2, v0, v1

    .line 67
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .registers 3
    .parameter "obj"

    .prologue
    .line 34
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    if-eqz v0, :cond_8

    .line 36
    check-cast p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    .end local p0
    move-object v0, p0

    .line 40
    :goto_7
    return-object v0

    .line 38
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 43
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 81
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 83
    .local v1, vec:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    array-length v2, v2

    if-eq v0, v2, :cond_15

    .line 85
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 88
    :cond_15
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorityInformationAccess: Oid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->descriptions:[Lorg/bouncycastle/asn1/x509/AccessDescription;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
