.class public Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "ExtendedKeyUsage.java"


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field usageTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Vector;)V
    .registers 6
    .parameter "usages"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 75
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 76
    .local v2, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 78
    .local v0, e:Ljava/util/Enumeration;
    :goto_13
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 80
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERObject;

    .line 82
    .local v1, o:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 86
    .end local v1           #o:Lorg/bouncycastle/asn1/DERObject;
    :cond_28
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 60
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 62
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 64
    .local v0, e:Ljava/util/Enumeration;
    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 66
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, o:Ljava/lang/Object;
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 70
    .end local v1           #o:Ljava/lang/Object;
    :cond_20
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)V
    .registers 3
    .parameter "usage"

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .registers 4
    .parameter "obj"

    .prologue
    .line 36
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    if-eqz v0, :cond_a

    .line 38
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    .end local p0
    move-object v0, p0

    .line 43
    :goto_9
    return-object v0

    .line 41
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 46
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ExtendedKeyUsage: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasKeyPurposeId(Lorg/bouncycastle/asn1/x509/KeyPurposeId;)Z
    .registers 3
    .parameter "keyPurposeId"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->usageTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/ExtendedKeyUsage;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
