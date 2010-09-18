.class Lorg/apache/harmony/security/x501/AttributeTypeAndValue$1;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(I)V

    return-void
.end method


# virtual methods
.method public checkTag(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Choice;->checkTag(I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 399
    sget-object v2, Lorg/apache/harmony/security/x501/DirectoryString;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #str:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 405
    .restart local v1       #str:Ljava/lang/String;
    :goto_13
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 406
    .local v0, bytesEncoded:[B
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getBuffer()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getTagOffset()I

    move-result v3

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    new-instance v2, Lorg/apache/harmony/security/x501/AttributeValue;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/harmony/security/x501/AttributeValue;-><init>(Ljava/lang/String;[BI)V

    return-object v2

    .line 402
    .end local v0           #bytesEncoded:[B
    :cond_33
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    goto :goto_13
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 422
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 424
    .local v0, av:Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_10

    .line 425
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 426
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeANY()V

    .line 432
    :goto_f
    return-void

    .line 428
    :cond_10
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 429
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 430
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeString()V

    goto :goto_f
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "security.17A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "security.179"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I
    .registers 4
    .parameter "out"

    .prologue
    .line 464
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 466
    .local v0, av:Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_b

    .line 467
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 469
    :goto_a
    return v1

    :cond_b
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->getEncodedLength(Lorg/apache/harmony/security/asn1/BerOutputStream;)I

    move-result v1

    goto :goto_a
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 5
    .parameter "out"

    .prologue
    .line 436
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 438
    .local v0, av:Lorg/apache/harmony/security/x501/AttributeValue;
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    if-eqz v1, :cond_e

    .line 439
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->encoded:[B

    array-length v1, v1

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 455
    .end local p0
    :goto_d
    return-void

    .line 442
    .restart local p0
    :cond_e
    invoke-virtual {v0}, Lorg/apache/harmony/security/x501/AttributeValue;->getTag()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2a

    .line 444
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    iput-object v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 446
    sget-object v1, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 448
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    iput-object p0, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    .line 449
    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    goto :goto_d

    .line 451
    .restart local p0
    :cond_2a
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->rawString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    .line 452
    iget-object v1, v0, Lorg/apache/harmony/security/x501/AttributeValue;->bytes:[B

    array-length v1, v1

    iput v1, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_d
.end method
