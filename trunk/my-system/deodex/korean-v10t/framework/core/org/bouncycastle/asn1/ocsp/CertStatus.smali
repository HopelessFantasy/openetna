.class public Lorg/bouncycastle/asn1/ocsp/CertStatus;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CertStatus.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private tagNo:I

.field private value:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 25
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    .line 27
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "tagNo"
    .parameter "value"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 40
    iput p1, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 41
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 3
    .parameter "choice"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 49
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 64
    :goto_10
    return-void

    .line 53
    :pswitch_11
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_10

    .line 57
    :pswitch_16
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_10

    .line 61
    :pswitch_1e
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_10

    .line 49
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/RevokedInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    .line 34
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .registers 3
    .parameter "obj"

    .prologue
    .line 69
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    if-eqz v0, :cond_a

    .line 71
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    .end local p0
    move-object v0, p0

    .line 75
    :goto_9
    return-object v0

    .line 73
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_16

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertStatus;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lorg/bouncycastle/asn1/ASN1TaggedObject;)V

    goto :goto_9

    .line 78
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStatus()Lorg/bouncycastle/asn1/DEREncodable;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 109
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/CertStatus;->value:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    return-object v0
.end method
