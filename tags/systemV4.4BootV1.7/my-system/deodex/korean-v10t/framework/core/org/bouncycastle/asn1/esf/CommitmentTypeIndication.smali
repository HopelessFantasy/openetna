.class public Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CommitmentTypeIndication.java"


# instance fields
.field private commitmentTypeId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_1b

    .line 23
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 25
    :cond_1b
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 2
    .parameter "commitmentTypeId"

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "commitmentTypeId"
    .parameter "commitmentTypeQualifier"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 38
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;
    .registers 3
    .parameter "obj"

    .prologue
    .line 44
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;

    if-eqz v0, :cond_a

    .line 46
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;

    .end local p0
    move-object v0, p0

    .line 49
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9
.end method


# virtual methods
.method public getCommitmentTypeId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getCommitmentTypeQualifier()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 74
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 76
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_13

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeIndication;->commitmentTypeQualifier:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 81
    :cond_13
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
