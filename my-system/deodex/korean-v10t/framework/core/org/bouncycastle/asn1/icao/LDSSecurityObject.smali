.class public Lorg/bouncycastle/asn1/icao/LDSSecurityObject;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "LDSSecurityObject.java"

# interfaces
.implements Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;


# static fields
.field public static final ub_DataGroups:I = 0x10


# instance fields
.field datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

.field digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    new-instance v3, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 57
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-nez v3, :cond_1b

    .line 59
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null or empty sequence passed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_1b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 65
    .local v1, e:Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 67
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 69
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 71
    .local v0, datagroupHashSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    .line 73
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v3, v3, [Lorg/bouncycastle/asn1/icao/DataGroupHash;

    iput-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    .line 74
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4b
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 76
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/icao/DataGroupHash;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/DataGroupHash;

    move-result-object v4

    aput-object v4, v3, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 79
    :cond_60
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/icao/DataGroupHash;)V
    .registers 5
    .parameter "digestAlgorithmIdentifier"
    .parameter "datagroupHash"

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 86
    iput-object p2, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    .line 88
    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->checkDatagroupHashSeqSize(I)V

    .line 89
    return-void
.end method

.method private checkDatagroupHashSeqSize(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 93
    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    const/16 v0, 0x10

    if-le p1, v0, :cond_f

    .line 95
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong size in DataGroupHashValues : not in (2..16)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_f
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/LDSSecurityObject;
    .registers 3
    .parameter "obj"

    .prologue
    .line 41
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;

    if-eqz v0, :cond_a

    .line 43
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;

    .end local p0
    move-object v0, p0

    .line 48
    :goto_9
    return-object v0

    .line 46
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_18

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 51
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDatagroupHash()[Lorg/bouncycastle/asn1/icao/DataGroupHash;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    return-object v0
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 111
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v1, seq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 114
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->digestAlgorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 116
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 117
    .local v2, seqname:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    array-length v3, v3

    if-ge v0, v3, :cond_24

    .line 119
    iget-object v3, p0, Lorg/bouncycastle/asn1/icao/LDSSecurityObject;->datagroupHash:[Lorg/bouncycastle/asn1/icao/DataGroupHash;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 121
    :cond_24
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 123
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v3
.end method
