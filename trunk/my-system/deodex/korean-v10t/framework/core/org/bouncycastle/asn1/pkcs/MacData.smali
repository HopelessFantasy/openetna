.class public Lorg/bouncycastle/asn1/pkcs/MacData;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "MacData.java"


# instance fields
.field digInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;

.field iterationCount:Ljava/math/BigInteger;

.field salt:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->digInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->salt:[B

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    .line 52
    :goto_2f
    return-void

    .line 50
    :cond_30
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    goto :goto_2f
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V
    .registers 6
    .parameter "digInfo"
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->digInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;

    .line 60
    iput-object p2, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->salt:[B

    .line 61
    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    .line 62
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/MacData;
    .registers 3
    .parameter "obj"

    .prologue
    .line 25
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;

    if-eqz v0, :cond_8

    .line 27
    check-cast p0, Lorg/bouncycastle/asn1/pkcs/MacData;

    .end local p0
    move-object v0, p0

    .line 31
    :goto_7
    return-object v0

    .line 29
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/MacData;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 34
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/DigestInfo;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->digInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->salt:[B

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 83
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->digInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->salt:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/MacData;->iterationCount:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 87
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
