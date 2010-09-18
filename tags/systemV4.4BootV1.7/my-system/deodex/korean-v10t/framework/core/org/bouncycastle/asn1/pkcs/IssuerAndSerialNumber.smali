.class public Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "IssuerAndSerialNumber.java"


# instance fields
.field certSerialNumber:Lorg/bouncycastle/asn1/DERInteger;

.field name:Lorg/bouncycastle/asn1/x509/X509Name;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/bouncycastle/asn1/x509/X509Name;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509Name;Ljava/math/BigInteger;)V
    .registers 4
    .parameter "name"
    .parameter "certSerialNumber"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/bouncycastle/asn1/x509/X509Name;

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509Name;Lorg/bouncycastle/asn1/DERInteger;)V
    .registers 3
    .parameter "name"
    .parameter "certSerialNumber"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/bouncycastle/asn1/x509/X509Name;

    .line 54
    iput-object p2, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .registers 3
    .parameter "obj"

    .prologue
    .line 22
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    if-eqz v0, :cond_8

    .line 24
    check-cast p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    .end local p0
    move-object v0, p0

    .line 28
    :goto_7
    return-object v0

    .line 26
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 31
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertificateSerialNumber()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getName()Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 71
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->name:Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->certSerialNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
