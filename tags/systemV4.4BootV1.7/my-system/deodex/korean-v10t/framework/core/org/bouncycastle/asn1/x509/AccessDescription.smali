.class public Lorg/bouncycastle/asn1/x509/AccessDescription;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "AccessDescription.java"


# static fields
.field public static final id_ad_caIssuers:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad_ocsp:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

.field accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_caIssuers:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 26
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong number of elements in inner sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 4
    .parameter "oid"
    .parameter "location"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 26
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 63
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 64
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AccessDescription;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;

    if-eqz v0, :cond_8

    .line 33
    check-cast p0, Lorg/bouncycastle/asn1/x509/AccessDescription;

    .end local p0
    move-object v0, p0

    .line 37
    :goto_7
    return-object v0

    .line 35
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/x509/AccessDescription;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/AccessDescription;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 40
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 88
    .local v0, accessDescription:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessLocation:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 91
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessDescription: Oid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/AccessDescription;->accessMethod:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
