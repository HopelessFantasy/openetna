.class public Lorg/bouncycastle/asn1/ocsp/ResponderID;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "ResponderID.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private value:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/DEREncodable;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/DEREncodable;

    .line 29
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .registers 5
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    .line 34
    if-eqz p0, :cond_7

    instance-of v2, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    if-eqz v2, :cond_b

    .line 36
    :cond_7
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    .end local p0
    move-object v2, p0

    .line 56
    :goto_a
    return-object v2

    .line 38
    .restart local p0
    :cond_b
    instance-of v2, p0, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v2, :cond_17

    .line 40
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    check-cast p0, Lorg/bouncycastle/asn1/DEROctetString;

    .end local p0
    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_a

    .line 42
    .restart local p0
    :cond_17
    instance-of v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_39

    .line 44
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-object v1, v0

    .line 46
    .local v1, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-ne v2, v3, :cond_2f

    .line 48
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x509/X509Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    goto :goto_a

    .line 52
    :cond_2f
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_a

    .line 56
    .end local v1           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_39
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponderID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ocsp/ResponderID;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    goto :goto_a
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/ResponderID;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponderID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponderID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_10

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    .line 81
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponderID;->value:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v3, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_f
.end method
