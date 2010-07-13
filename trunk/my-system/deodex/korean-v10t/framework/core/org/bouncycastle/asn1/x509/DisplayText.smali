.class public Lorg/bouncycastle/asn1/x509/DisplayText;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "DisplayText.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final CONTENT_TYPE_BMPSTRING:I = 0x1

.field public static final CONTENT_TYPE_IA5STRING:I = 0x0

.field public static final CONTENT_TYPE_UTF8STRING:I = 0x2

.field public static final CONTENT_TYPE_VISIBLESTRING:I = 0x3

.field public static final DISPLAY_TEXT_MAXIMUM_SIZE:I = 0xc8


# instance fields
.field contentType:I

.field contents:Lorg/bouncycastle/asn1/DERString;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "text"

    .prologue
    const/16 v1, 0xc8

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_10

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_10
    iput p1, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    .line 80
    packed-switch p1, :pswitch_data_3e

    .line 95
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    .line 98
    :goto_1c
    return-void

    .line 83
    :pswitch_1d
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_1c

    .line 86
    :pswitch_25
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_1c

    .line 89
    :pswitch_2d
    new-instance v0, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_1c

    .line 92
    :pswitch_35
    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    goto :goto_1c

    .line 80
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_35
        :pswitch_25
        :pswitch_2d
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "text"

    .prologue
    const/16 v1, 0xc8

    .line 107
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_10

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 114
    :cond_10
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contentType:I

    .line 115
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERString;)V
    .registers 2
    .parameter "de"

    .prologue
    .line 126
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 127
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    .line 128
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;
    .registers 3
    .parameter "de"

    .prologue
    .line 132
    instance-of v0, p0, Lorg/bouncycastle/asn1/DERString;

    if-eqz v0, :cond_c

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/x509/DisplayText;

    check-cast p0, Lorg/bouncycastle/asn1/DERString;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DisplayText;-><init>(Lorg/bouncycastle/asn1/DERString;)V

    .line 138
    :goto_b
    return-object v0

    .line 136
    .restart local p0
    :cond_c
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;

    if-eqz v0, :cond_14

    .line 138
    check-cast p0, Lorg/bouncycastle/asn1/x509/DisplayText;

    .end local p0
    move-object v0, p0

    goto :goto_b

    .line 141
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DisplayText;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DisplayText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DisplayText;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 1

    .prologue
    .line 153
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/DisplayText;->contents:Lorg/bouncycastle/asn1/DERString;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERObject;

    return-object p0
.end method
