.class public Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CRLEntry"
.end annotation


# instance fields
.field crlEntryExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field revocationDate:Lorg/bouncycastle/asn1/x509/Time;

.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field final synthetic this$0:Lorg/bouncycastle/asn1/x509/TBSCertList;

.field userCertificate:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter
    .parameter "seq"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->this$0:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 48
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v1, :cond_13

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_30

    .line 50
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_30
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->userCertificate:Lorg/bouncycastle/asn1/DERInteger;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->revocationDate:Lorg/bouncycastle/asn1/x509/Time;

    .line 57
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v2, :cond_58

    .line 59
    invoke-virtual {p2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 61
    :cond_58
    return-void
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->crlEntryExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getRevocationDate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->revocationDate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getUserCertificate()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->userCertificate:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
