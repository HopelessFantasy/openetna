.class public Lorg/bouncycastle/asn1/ess/ContentIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "ContentIdentifier.java"


# instance fields
.field value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 36
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "value"

    .prologue
    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ess/ContentIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ContentIdentifier;
    .registers 4
    .parameter "o"

    .prologue
    .line 15
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;

    if-eqz v0, :cond_a

    .line 17
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;

    .end local p0
    move-object v0, p0

    .line 21
    :goto_9
    return-object v0

    .line 19
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_16

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ess/ContentIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_9

    .line 24
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in \'ContentIdentifier\' factory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/ess/ContentIdentifier;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method
