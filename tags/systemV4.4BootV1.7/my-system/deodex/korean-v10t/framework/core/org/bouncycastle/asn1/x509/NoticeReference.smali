.class public Lorg/bouncycastle/asn1/x509/NoticeReference;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "NoticeReference.java"


# instance fields
.field private noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private organization:Lorg/bouncycastle/asn1/x509/DisplayText;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "displayTextType"
    .parameter "orgName"
    .parameter "numbers"

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 91
    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 93
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 9
    .parameter "orgName"
    .parameter "numbers"

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 45
    new-instance v5, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 47
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, o:Ljava/lang/Object;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 50
    .local v0, av:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_35

    .line 52
    invoke-virtual {p2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 54
    .local v2, it:Ljava/util/Enumeration;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_35

    .line 56
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 57
    .local v3, nm:Ljava/lang/Integer;
    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v5}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    .line 58
    .local v1, di:Lorg/bouncycastle/asn1/DERInteger;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1c

    .line 62
    .end local v1           #di:Lorg/bouncycastle/asn1/DERInteger;
    .end local v2           #it:Ljava/util/Enumeration;
    .end local v3           #nm:Ljava/lang/Integer;
    :cond_35
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v5, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "orgName"
    .parameter "numbers"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 76
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "as"

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 108
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    .line 110
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

    .line 114
    :cond_27
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 116
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NoticeReference;
    .registers 3
    .parameter "as"

    .prologue
    .line 121
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    if-eqz v0, :cond_8

    .line 123
    check-cast p0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    .end local p0
    move-object v0, p0

    .line 127
    :goto_7
    return-object v0

    .line 125
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 127
    new-instance v0, Lorg/bouncycastle/asn1/x509/NoticeReference;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/NoticeReference;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 130
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getNoticeNumbers()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getOrganization()Lorg/bouncycastle/asn1/x509/DisplayText;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 150
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 151
    .local v0, av:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->organization:Lorg/bouncycastle/asn1/x509/DisplayText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/NoticeReference;->noticeNumbers:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 153
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
