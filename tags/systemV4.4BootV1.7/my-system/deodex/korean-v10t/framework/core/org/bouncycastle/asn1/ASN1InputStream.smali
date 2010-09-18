.class public Lorg/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# instance fields
.field private END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

.field eofFound:Z

.field limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream$1;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "input"
    .parameter "limit"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream$1;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 72
    iput p2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 73
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "input"

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 59
    return-void
.end method

.method private buildConstructedOctetString()Lorg/bouncycastle/asn1/BERConstructedOctetString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 333
    .local v1, octs:Ljava/util/Vector;
    :goto_5
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 335
    .local v0, o:Lorg/bouncycastle/asn1/DERObject;
    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v0, v2, :cond_13

    .line 343
    new-instance v2, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v2

    .line 340
    :cond_13
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private buildDerConstructedOctetString([B)Lorg/bouncycastle/asn1/BERConstructedOctetString;
    .registers 6
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 353
    .local v2, octs:Ljava/util/Vector;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 356
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :goto_a
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .local v1, o:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v1, :cond_14

    .line 358
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_a

    .line 361
    :cond_14
    new-instance v3, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    return-object v3
.end method

.method private readIndefiniteLengthFully()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    .local v2, bOut:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v1

    .line 312
    .local v1, b1:I
    :goto_9
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .local v0, b:I
    if-ltz v0, :cond_13

    .line 314
    if-nez v1, :cond_18

    if-nez v0, :cond_18

    .line 323
    :cond_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 319
    :cond_18
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    move v1, v0

    goto :goto_9
.end method

.method private readTagNumber(I)I
    .registers 6
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    and-int/lit8 v1, p1, 0x1f

    .line 506
    .local v1, tagNo:I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2b

    .line 508
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    .line 510
    .local v0, b:I
    const/4 v1, 0x0

    .line 512
    :goto_b
    if-ltz v0, :cond_1b

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1b

    .line 514
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 515
    shl-int/lit8 v1, v1, 0x7

    .line 516
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v0

    goto :goto_b

    .line 519
    :cond_1b
    if-gez v0, :cond_28

    .line 521
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    .line 522
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    :cond_28
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 528
    .end local v0           #b:I
    :cond_2b
    return v1
.end method


# virtual methods
.method protected buildObject(II[B)Lorg/bouncycastle/asn1/DERObject;
    .registers 13
    .parameter "tag"
    .parameter "tagNo"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 161
    and-int/lit8 v6, p1, 0x40

    if-eqz v6, :cond_c

    .line 163
    new-instance v6, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    invoke-direct {v6, p1, p3}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    .line 297
    :goto_b
    return-object v6

    .line 166
    :cond_c
    packed-switch p1, :pswitch_data_138

    .line 246
    :pswitch_f
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_130

    .line 248
    array-length v6, p3

    if-nez v6, :cond_ef

    .line 250
    and-int/lit8 v6, p1, 0x20

    if-nez v6, :cond_e3

    .line 253
    new-instance v6, Lorg/bouncycastle/asn1/DERTaggedObject;

    sget-object v7, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6, v8, p2, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_b

    .line 170
    :pswitch_22
    sget-object v6, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    goto :goto_b

    .line 173
    :pswitch_25
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 174
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 176
    .local v5, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 178
    .local v3, obj:Lorg/bouncycastle/asn1/DERObject;
    :goto_33
    if-eqz v3, :cond_3d

    .line 180
    invoke-virtual {v5, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 181
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    goto :goto_33

    .line 184
    :cond_3d
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_b

    .line 186
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #obj:Lorg/bouncycastle/asn1/DERObject;
    .end local v5           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :pswitch_43
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 187
    .restart local v0       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 189
    .restart local v5       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 191
    .restart local v3       #obj:Lorg/bouncycastle/asn1/DERObject;
    :goto_51
    if-eqz v3, :cond_5b

    .line 193
    invoke-virtual {v5, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 194
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    goto :goto_51

    .line 197
    :cond_5b
    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v5, v8}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_b

    .line 200
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #obj:Lorg/bouncycastle/asn1/DERObject;
    .end local v5           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :pswitch_61
    invoke-static {p3}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance([B)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v6

    goto :goto_b

    .line 203
    :pswitch_66
    new-instance v6, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_b

    .line 205
    :pswitch_6c
    new-instance v6, Lorg/bouncycastle/asn1/DEREnumerated;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DEREnumerated;-><init>([B)V

    goto :goto_b

    .line 207
    :pswitch_72
    new-instance v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    goto :goto_b

    .line 209
    :pswitch_78
    aget-byte v4, p3, v8

    .line 210
    .local v4, padBits:I
    array-length v6, p3

    sub-int/2addr v6, v7

    new-array v2, v6, [B

    .line 212
    .local v2, data:[B
    array-length v6, p3

    sub-int/2addr v6, v7

    invoke-static {p3, v7, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    new-instance v6, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v6, v2, v4}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_b

    .line 216
    .end local v2           #data:[B
    .end local v4           #padBits:I
    :pswitch_89
    new-instance v6, Lorg/bouncycastle/asn1/DERNumericString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto/16 :goto_b

    .line 218
    :pswitch_90
    new-instance v6, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto/16 :goto_b

    .line 220
    :pswitch_97
    new-instance v6, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto/16 :goto_b

    .line 222
    :pswitch_9e
    new-instance v6, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto/16 :goto_b

    .line 224
    :pswitch_a5
    new-instance v6, Lorg/bouncycastle/asn1/DERT61String;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto/16 :goto_b

    .line 226
    :pswitch_ac
    new-instance v6, Lorg/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto/16 :goto_b

    .line 228
    :pswitch_b3
    new-instance v6, Lorg/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto/16 :goto_b

    .line 230
    :pswitch_ba
    new-instance v6, Lorg/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto/16 :goto_b

    .line 232
    :pswitch_c1
    new-instance v6, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto/16 :goto_b

    .line 234
    :pswitch_c8
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto/16 :goto_b

    .line 236
    :pswitch_cf
    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildDerConstructedOctetString([B)Lorg/bouncycastle/asn1/BERConstructedOctetString;

    move-result-object v6

    goto/16 :goto_b

    .line 238
    :pswitch_d5
    new-instance v6, Lorg/bouncycastle/asn1/DERUTCTime;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    goto/16 :goto_b

    .line 240
    :pswitch_dc
    new-instance v6, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v6, p3}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>([B)V

    goto/16 :goto_b

    .line 258
    :cond_e3
    new-instance v6, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-direct {v6, v8, p2, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_b

    .line 265
    :cond_ef
    and-int/lit8 v6, p1, 0x20

    if-nez v6, :cond_ff

    .line 267
    new-instance v6, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v6, v8, p2, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_b

    .line 270
    :cond_ff
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 272
    .restart local v0       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 278
    .local v1, dObj:Lorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->available()I

    move-result v6

    if-nez v6, :cond_115

    .line 280
    new-instance v6, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v6, p2, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_b

    .line 286
    :cond_115
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 288
    .restart local v5       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_11a
    if-eqz v1, :cond_124

    .line 290
    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 291
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    goto :goto_11a

    .line 294
    :cond_124
    new-instance v6, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v6, v8, p2, v7}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_b

    .line 297
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #dObj:Lorg/bouncycastle/asn1/DEREncodable;
    .end local v5           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_130
    new-instance v6, Lorg/bouncycastle/asn1/DERUnknownTag;

    invoke-direct {v6, p1, p3}, Lorg/bouncycastle/asn1/DERUnknownTag;-><init>(I[B)V

    goto/16 :goto_b

    .line 166
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_61
        :pswitch_66
        :pswitch_78
        :pswitch_c8
        :pswitch_22
        :pswitch_72
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_6c
        :pswitch_f
        :pswitch_90
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_89
        :pswitch_97
        :pswitch_a5
        :pswitch_f
        :pswitch_9e
        :pswitch_d5
        :pswitch_dc
        :pswitch_f
        :pswitch_ac
        :pswitch_b3
        :pswitch_ba
        :pswitch_f
        :pswitch_c1
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_cf
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_25
        :pswitch_43
    .end packed-switch
.end method

.method protected readFully([B)V
    .registers 6
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    array-length v0, p1

    .line 132
    .local v0, left:I
    if-nez v0, :cond_4

    .line 149
    :cond_3
    :goto_3
    return-void

    .line 137
    :cond_4
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read([BII)I

    move-result v1

    .local v1, len:I
    if-lez v1, :cond_10

    .line 139
    sub-int/2addr v0, v1

    if-nez v0, :cond_4

    goto :goto_3

    .line 145
    :cond_10
    if-eqz v0, :cond_3

    .line 147
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "EOF encountered in middle of object"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readLength()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v1

    .line 79
    .local v1, length:I
    if-gez v1, :cond_e

    .line 81
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_e
    const/16 v4, 0x80

    if-ne v1, v4, :cond_14

    .line 86
    const/4 v4, -0x1

    .line 122
    :goto_13
    return v4

    .line 89
    :cond_14
    const/16 v4, 0x7f

    if-le v1, v4, :cond_54

    .line 91
    and-int/lit8 v3, v1, 0x7f

    .line 93
    .local v3, size:I
    const/4 v4, 0x4

    if-le v3, v4, :cond_25

    .line 95
    new-instance v4, Ljava/io/IOException;

    const-string v5, "DER length more than 4 bytes"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_25
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v3, :cond_3e

    .line 101
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v2

    .line 103
    .local v2, next:I
    if-gez v2, :cond_37

    .line 105
    new-instance v4, Ljava/io/IOException;

    const-string v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_37
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 111
    .end local v2           #next:I
    :cond_3e
    if-gez v1, :cond_48

    .line 113
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted steam - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_48
    iget v4, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->limit:I

    if-lt v1, v4, :cond_54

    .line 118
    new-instance v4, Ljava/io/IOException;

    const-string v5, "corrupted steam - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #i:I
    .end local v3           #size:I
    :cond_54
    move v4, v1

    .line 122
    goto :goto_13
.end method

.method public readObject()Lorg/bouncycastle/asn1/DERObject;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 367
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    .line 368
    .local v5, tag:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_19

    .line 370
    iget-boolean v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    if-eqz v8, :cond_14

    .line 372
    new-instance v8, Ljava/io/EOFException;

    const-string v9, "attempt to read past end of file."

    invoke-direct {v8, v9}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 375
    :cond_14
    const/4 v8, 0x1

    iput-boolean v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->eofFound:Z

    .line 377
    const/4 v8, 0x0

    .line 497
    :goto_18
    return-object v8

    .line 380
    :cond_19
    const/4 v6, 0x0

    .line 382
    .local v6, tagNo:I
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_22

    .line 384
    invoke-direct {p0, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(I)I

    move-result v6

    .line 387
    :cond_22
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v2

    .line 389
    .local v2, length:I
    if-gez v2, :cond_bb

    .line 391
    sparse-switch v5, :sswitch_data_ce

    .line 433
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_b3

    .line 438
    and-int/lit8 v8, v5, 0x20

    if-nez v8, :cond_78

    .line 440
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readIndefiniteLengthFully()[B

    move-result-object v0

    .line 442
    .local v0, bytes:[B
    new-instance v8, Lorg/bouncycastle/asn1/BERTaggedObject;

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v9, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v8, v10, v6, v9}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_18

    .line 395
    .end local v0           #bytes:[B
    :sswitch_42
    sget-object v8, Lorg/bouncycastle/asn1/BERNull;->THE_ONE:Lorg/bouncycastle/asn1/BERNull;

    goto :goto_18

    .line 398
    :sswitch_45
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 402
    .local v7, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_4a
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 404
    .local v4, obj:Lorg/bouncycastle/asn1/DERObject;
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v4, v8, :cond_58

    .line 411
    new-instance v8, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    goto :goto_18

    .line 409
    :cond_58
    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_4a

    .line 413
    .end local v4           #obj:Lorg/bouncycastle/asn1/DERObject;
    .end local v7           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :sswitch_5c
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 417
    .restart local v7       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_61
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 419
    .restart local v4       #obj:Lorg/bouncycastle/asn1/DERObject;
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v4, v8, :cond_6f

    .line 426
    new-instance v8, Lorg/bouncycastle/asn1/BERSet;

    invoke-direct {v8, v7, v10}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_18

    .line 424
    :cond_6f
    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_61

    .line 428
    .end local v4           #obj:Lorg/bouncycastle/asn1/DERObject;
    .end local v7           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :sswitch_73
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildConstructedOctetString()Lorg/bouncycastle/asn1/BERConstructedOctetString;

    move-result-object v8

    goto :goto_18

    .line 448
    :cond_78
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 450
    .local v1, dObj:Lorg/bouncycastle/asn1/DERObject;
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v1, v8, :cond_86

    .line 452
    new-instance v8, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v8, v6}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(I)V

    goto :goto_18

    .line 455
    :cond_86
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 461
    .local v3, next:Lorg/bouncycastle/asn1/DERObject;
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v3, v8, :cond_94

    .line 463
    new-instance v8, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-direct {v8, v6, v1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_18

    .line 469
    :cond_94
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 471
    .restart local v7       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v7, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 475
    :cond_9c
    invoke-virtual {v7, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 476
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 478
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    if-ne v3, v8, :cond_9c

    .line 480
    new-instance v8, Lorg/bouncycastle/asn1/BERTaggedObject;

    new-instance v9, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v9, v7}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v8, v10, v6, v9}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto/16 :goto_18

    .line 483
    .end local v1           #dObj:Lorg/bouncycastle/asn1/DERObject;
    .end local v3           #next:Lorg/bouncycastle/asn1/DERObject;
    .end local v7           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_b3
    new-instance v8, Ljava/io/IOException;

    const-string v9, "unknown BER object encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 488
    :cond_bb
    if-nez v5, :cond_c3

    if-nez v2, :cond_c3

    .line 490
    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1InputStream;->END_OF_STREAM:Lorg/bouncycastle/asn1/DERObject;

    goto/16 :goto_18

    .line 493
    :cond_c3
    new-array v0, v2, [B

    .line 495
    .restart local v0       #bytes:[B
    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readFully([B)V

    .line 497
    invoke-virtual {p0, v5, v6, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->buildObject(II[B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    goto/16 :goto_18

    .line 391
    :sswitch_data_ce
    .sparse-switch
        0x5 -> :sswitch_42
        0x24 -> :sswitch_73
        0x30 -> :sswitch_45
        0x31 -> :sswitch_5c
    .end sparse-switch
.end method
