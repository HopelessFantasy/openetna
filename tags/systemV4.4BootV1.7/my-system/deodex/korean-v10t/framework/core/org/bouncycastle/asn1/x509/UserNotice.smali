.class public Lorg/bouncycastle/asn1/x509/UserNotice;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "UserNotice.java"


# instance fields
.field private explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

.field private noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "as"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 69
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 71
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NoticeReference;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NoticeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    .line 72
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 89
    :goto_20
    return-void

    .line 74
    :cond_21
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v3, :cond_49

    .line 76
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_3e

    .line 78
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NoticeReference;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NoticeReference;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    goto :goto_20

    .line 82
    :cond_3e
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    goto :goto_20

    .line 87
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/NoticeReference;Ljava/lang/String;)V
    .registers 4
    .parameter "noticeRef"
    .parameter "str"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/NoticeReference;Lorg/bouncycastle/asn1/x509/DisplayText;)V
    .registers 3
    .parameter "noticeRef"
    .parameter "explicitText"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    .line 40
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 41
    return-void
.end method


# virtual methods
.method public getExplicitText()Lorg/bouncycastle/asn1/x509/DisplayText;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public getNoticeRef()Lorg/bouncycastle/asn1/x509/NoticeReference;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    .local v0, av:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    if-eqz v1, :cond_e

    .line 107
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->noticeRef:Lorg/bouncycastle/asn1/x509/NoticeReference;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 110
    :cond_e
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    if-eqz v1, :cond_17

    .line 112
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/UserNotice;->explicitText:Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 115
    :cond_17
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
