.class public Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "SubjectKeyIdentifier.java"


# instance fields
.field private keyidentifier:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .parameter "keyid"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 7
    .parameter "spki"

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 72
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 73
    .local v1, digest:Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 75
    .local v2, resBuf:[B
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    .line 76
    .local v0, bytes:[B
    array-length v3, v0

    invoke-interface {v1, v0, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 77
    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 78
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "keyid"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 4
    .parameter "obj"

    .prologue
    .line 32
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    if-eqz v0, :cond_a

    .line 34
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    .end local p0
    move-object v0, p0

    .line 44
    :goto_9
    return-object v0

    .line 37
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_16

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_9

    .line 42
    .restart local p0
    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_22

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_9

    .line 47
    .restart local p0
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid SubjectKeyIdentifier: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyIdentifier()[B
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/SubjectKeyIdentifier;->keyidentifier:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method
