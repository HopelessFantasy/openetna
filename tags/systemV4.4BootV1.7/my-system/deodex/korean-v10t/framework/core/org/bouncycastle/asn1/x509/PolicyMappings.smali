.class public Lorg/bouncycastle/asn1/x509/PolicyMappings;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "PolicyMappings.java"


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 8
    .parameter "mappings"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 49
    .local v0, dev:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 51
    .local v3, it:Ljava/util/Enumeration;
    :goto_f
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 53
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    .local v2, idp:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 55
    .local v4, sdp:Ljava/lang/String;
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 56
    .local v1, dv:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 57
    new-instance v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 58
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_f

    .line 61
    .end local v1           #dv:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v2           #idp:Ljava/lang/String;
    .end local v4           #sdp:Ljava/lang/String;
    :cond_3f
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 37
    return-void
.end method


# virtual methods
.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/PolicyMappings;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
