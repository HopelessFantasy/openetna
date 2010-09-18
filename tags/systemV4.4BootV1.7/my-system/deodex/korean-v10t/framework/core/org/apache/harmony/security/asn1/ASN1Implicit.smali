.class public Lorg/apache/harmony/security/asn1/ASN1Implicit;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Implicit.java"


# static fields
.field private static final TAGGING_CONSTRUCTED:I = 0x1

.field private static final TAGGING_PRIMITIVE:I = 0x0

.field private static final TAGGING_STRING:I = 0x2


# instance fields
.field private final taggingType:I

.field private final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 6
    .parameter "tagClass"
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 78
    instance-of v0, p3, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-nez v0, :cond_b

    instance-of v0, p3, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v0, :cond_17

    .line 83
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.9F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_17
    iput-object p3, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 89
    iget v0, p3, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {p3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 90
    iget v0, p3, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {p3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    .line 102
    :goto_2c
    return-void

    .line 96
    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_2c

    .line 100
    :cond_31
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_2c
.end method

.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 4
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 64
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .registers 5
    .parameter "identifier"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    packed-switch v0, :pswitch_data_24

    .line 120
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-eq v0, p1, :cond_f

    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-ne v0, p1, :cond_21

    :cond_f
    move v0, v2

    :goto_10
    return v0

    .line 116
    :pswitch_11
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-ne v0, p1, :cond_17

    move v0, v2

    goto :goto_10

    :cond_17
    move v0, v1

    goto :goto_10

    .line 118
    :pswitch_19
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-ne v0, p1, :cond_1f

    move v0, v2

    goto :goto_10

    :cond_1f
    move v0, v1

    goto :goto_10

    :cond_21
    move v0, v1

    .line 120
    goto :goto_10

    .line 114
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->checkTag(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 130
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.100"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_32
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-ne v0, v1, :cond_4c

    .line 137
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 141
    :goto_3e
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 143
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_53

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_4b
    return-object v0

    .line 139
    :cond_4c
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    goto :goto_3e

    .line 146
    :cond_53
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4b
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 158
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 162
    :goto_a
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 163
    return-void

    .line 160
    :cond_e
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    goto :goto_a
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 167
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 171
    return-void
.end method
