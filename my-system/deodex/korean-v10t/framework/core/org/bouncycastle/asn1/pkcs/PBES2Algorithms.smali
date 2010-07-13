.class public Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;
.super Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.source "PBES2Algorithms.java"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "obj"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 29
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v3, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 31
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 33
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 37
    .local v1, funcSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 39
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->id_PBKDF2:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    .line 46
    :goto_3e
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v4, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    .line 47
    return-void

    .line 43
    :cond_4c
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v3, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_3e
.end method


# virtual methods
.method public getDERObject()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 66
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 67
    .local v1, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    .local v0, subV:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 71
    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 72
    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 73
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 75
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method

.method public getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->scheme:Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method

.method public getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->func:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PBES2Algorithms;->objectId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method
