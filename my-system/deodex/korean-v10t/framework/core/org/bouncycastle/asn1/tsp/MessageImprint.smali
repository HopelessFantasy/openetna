.class public Lorg/bouncycastle/asn1/tsp/MessageImprint;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "MessageImprint.java"


# instance fields
.field hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field hashedMessage:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashedMessage:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 3
    .parameter "hashAlgorithm"
    .parameter "hashedMessage"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashedMessage:[B

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .registers 3
    .parameter "o"

    .prologue
    .line 24
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    if-eqz v0, :cond_a

    .line 26
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .end local p0
    move-object v0, p0

    .line 30
    :goto_9
    return-object v0

    .line 28
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 30
    new-instance v0, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 33
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad object in factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getHashedMessage()[B
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashedMessage:[B

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 70
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 72
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/MessageImprint;->hashedMessage:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
