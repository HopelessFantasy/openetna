.class public Lorg/bouncycastle/asn1/x509/DistributionPointName;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "DistributionPointName.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final FULL_NAME:I = 0x0

.field public static final NAME_RELATIVE_TO_CRL_ISSUER:I = 0x1


# instance fields
.field name:Lorg/bouncycastle/asn1/DEREncodable;

.field type:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 67
    iput p1, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 68
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lorg/bouncycastle/asn1/DEREncodable;

    .line 69
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 59
    iput p1, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 60
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lorg/bouncycastle/asn1/DEREncodable;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 94
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    .line 96
    iget v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    if-nez v0, :cond_15

    .line 98
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lorg/bouncycastle/asn1/DEREncodable;

    .line 104
    :goto_14
    return-void

    .line 102
    :cond_15
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_14
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .registers 3
    .parameter "obj"

    .prologue
    .line 40
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v0, :cond_a

    .line 42
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    .end local p0
    move-object v0, p0

    .line 46
    :goto_9
    return-object v0

    .line 44
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_16

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_9

    .line 49
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .prologue
    .line 88
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lorg/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 108
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->type:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPointName;->name:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method
