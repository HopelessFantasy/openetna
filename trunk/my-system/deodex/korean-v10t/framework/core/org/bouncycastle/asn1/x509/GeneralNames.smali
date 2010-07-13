.class public Lorg/bouncycastle/asn1/x509/GeneralNames;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "GeneralNames.java"


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 2
    .parameter "seq"

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 46
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 4
    .parameter "obj"

    .prologue
    .line 17
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_a

    .line 19
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    .end local p0
    move-object v0, p0

    .line 24
    :goto_9
    return-object v0

    .line 22
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 24
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 27
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 4

    .prologue
    .line 56
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v1, v2, [Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 58
    .local v1, names:[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_20

    .line 60
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    aput-object v2, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 63
    :cond_20
    return-object v1
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralNames;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
