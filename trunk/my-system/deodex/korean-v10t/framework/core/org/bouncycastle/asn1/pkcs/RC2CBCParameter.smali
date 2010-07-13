.class public Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "RC2CBCParameter.java"


# instance fields
.field iv:Lorg/bouncycastle/asn1/ASN1OctetString;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(I[B)V
    .registers 4
    .parameter "parameterVersion"
    .parameter "iv"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 52
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 59
    :goto_16
    return-void

    .line 56
    :cond_17
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 57
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_16
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "iv"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;
    .registers 3
    .parameter "o"

    .prologue
    .line 23
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_c

    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 28
    .restart local p0
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in RC2CBCParameter factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIV()[B
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public getRC2ParameterVersion()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 80
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_e

    .line 82
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    :cond_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/RC2CBCParameter;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 87
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
