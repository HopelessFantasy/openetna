.class public Lorg/bouncycastle/asn1/misc/IDEACBCPar;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "IDEACBCPar.java"


# instance fields
.field iv:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    :goto_13
    return-void

    .line 40
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_13
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "iv"

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/misc/IDEACBCPar;
    .registers 3
    .parameter "o"

    .prologue
    .line 13
    instance-of v0, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;

    if-eqz v0, :cond_8

    .line 15
    check-cast p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;

    .end local p0
    move-object v0, p0

    .line 19
    :goto_7
    return-object v0

    .line 17
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/misc/IDEACBCPar;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 22
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in IDEACBCPar factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getIV()[B
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_b

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 52
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 68
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_e

    .line 70
    iget-object v1, p0, Lorg/bouncycastle/asn1/misc/IDEACBCPar;->iv:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    :cond_e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
