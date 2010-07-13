.class public Lorg/bouncycastle/asn1/cms/CompressedData;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CompressedData.java"


# instance fields
.field private compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 43
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .registers 5
    .parameter "compressionAlgorithm"
    .parameter "encapContentInfo"

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 35
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CompressedData;
    .registers 4
    .parameter "_obj"

    .prologue
    .line 72
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;

    if-eqz v0, :cond_a

    .line 74
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/CompressedData;

    .end local p0
    move-object v0, p0

    .line 79
    :goto_9
    return-object v0

    .line 77
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/cms/CompressedData;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/CompressedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 82
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CompressedData: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/CompressedData;
    .registers 3
    .parameter "_ato"
    .parameter "_explicit"

    .prologue
    .line 60
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/CompressedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CompressedData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCompressionAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->compressionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 106
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/CompressedData;->encapContentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 108
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
