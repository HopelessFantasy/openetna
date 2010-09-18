.class public Lorg/bouncycastle/asn1/ocsp/TBSRequest;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "TBSRequest.java"


# static fields
.field private static final V1:Lorg/bouncycastle/asn1/DERInteger;


# instance fields
.field requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field requestList:Lorg/bouncycastle/asn1/ASN1Sequence;

.field requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lorg/bouncycastle/asn1/DERInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "seq"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, index:I
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_63

    .line 42
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 44
    .local v2, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-nez v3, :cond_5e

    .line 46
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 59
    .end local v2           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_28
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_3f

    .line 61
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    move v0, v1

    .line 64
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_3f
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 66
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-ne v3, v4, :cond_5d

    .line 68
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 70
    :cond_5d
    return-void

    .line 51
    .end local v1           #index:I
    .restart local v0       #index:I
    .restart local v2       #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_5e
    sget-object v3, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_28

    .line 56
    .end local v2           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_63
    sget-object v3, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_28
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 5
    .parameter "requestorName"
    .parameter "requestList"
    .parameter "requestExtensions"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 32
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 33
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .registers 3
    .parameter "obj"

    .prologue
    .line 82
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    if-eqz v0, :cond_a

    .line 84
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    .end local p0
    move-object v0, p0

    .line 88
    :goto_9
    return-object v0

    .line 86
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 91
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/TBSRequest;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 76
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getRequestList()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 126
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 131
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    sget-object v2, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->V1:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 133
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 136
    :cond_1b
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_29

    .line 138
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 141
    :cond_29
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestList:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 143
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_3d

    .line 145
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->requestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 148
    :cond_3d
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
