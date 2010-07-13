.class public Lorg/apache/harmony/security/asn1/BerInputStream;
.super Ljava/lang/Object;
.source "BerInputStream.java"


# static fields
.field private static final BUF_INCREASE_SIZE:I = 0x4000

.field protected static final INDEFINIT_LENGTH:I = -0x1


# instance fields
.field protected buffer:[B

.field public choiceIndex:I

.field public content:Ljava/lang/Object;

.field protected contentOffset:I

.field protected in:Ljava/io/InputStream;

.field protected isIndefinedLength:Z

.field protected isVerify:Z

.field protected length:I

.field protected offset:I

.field public oidElement:I

.field private pool:[[Ljava/lang/Object;

.field public tag:I

.field protected tagOffset:I

.field public times:[I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/16 v0, 0x4000

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 7
    .parameter "in"
    .parameter "initialSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 127
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    .line 128
    new-array v1, p2, [B

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 130
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 132
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 135
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v1, v2, :cond_28

    .line 136
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    new-array v0, v1, [B

    .line 137
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 144
    .end local v0           #newBuffer:[B
    :cond_28
    return-void

    .line 141
    :cond_29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isIndefinedLength:Z

    .line 142
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.112"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 76
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 7
    .parameter "encoded"
    .parameter "offset"
    .parameter "expectedLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 94
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 95
    iput p2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 97
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 100
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    add-int v0, p2, p3

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_27

    .line 102
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.111"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_27
    return-void
.end method

.method private final decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V
    .registers 9
    .parameter "collection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 742
    .local v0, begOffset:I
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v5

    .line 744
    .local v1, endOffset:I
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 746
    .local v3, type:Lorg/apache/harmony/security/asn1/ASN1Type;
    iget-boolean v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v5, :cond_17

    .line 747
    :goto_c
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_31

    .line 748
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 749
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    goto :goto_c

    .line 753
    :cond_17
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 755
    .local v2, seqTagOffset:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 756
    .local v4, values:Ljava/util/ArrayList;
    :goto_1e
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-le v1, v5, :cond_2d

    .line 757
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 758
    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 761
    :cond_2d
    iput-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 763
    iput v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 766
    .end local v2           #seqTagOffset:I
    .end local v4           #values:Ljava/util/ArrayList;
    :cond_31
    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v5, v1, :cond_41

    .line 767
    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v6, "security.134"

    invoke-static {v6, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 769
    :cond_41
    return-void
.end method

.method public static getLength([B)I
    .registers 6
    .parameter "encoding"

    .prologue
    .line 233
    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 234
    .local v1, length:I
    const/4 v2, 0x0

    .line 235
    .local v2, numOctets:I
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_21

    .line 236
    and-int/lit8 v2, v1, 0x7f

    .line 239
    const/4 v3, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 240
    const/4 v0, 0x3

    .local v0, i:I
    :goto_12
    add-int/lit8 v3, v2, 0x2

    if-ge v0, v3, :cond_21

    .line 241
    shl-int/lit8 v3, v1, 0x8

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int v1, v3, v4

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 245
    .end local v0           #i:I
    :cond_21
    add-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    return v3
.end method

.method private strToInt(II)I
    .registers 9
    .parameter "off"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/security/asn1/ASN1Exception;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v3, 0x0

    .line 491
    .local v3, result:I
    move v2, p1

    .local v2, i:I
    add-int v1, p1, p2

    .local v1, end:I
    :goto_4
    if-ge v2, v1, :cond_27

    .line 492
    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    aget-byte v4, v4, v2

    const/16 v5, 0x30

    sub-int v0, v4, v5

    .line 493
    .local v0, c:I
    if-ltz v0, :cond_14

    const/16 v4, 0x9

    if-le v0, v4, :cond_20

    .line 494
    :cond_14
    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v5, "security.126"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 496
    :cond_20
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 498
    .end local v0           #c:I
    :cond_27
    return v3
.end method


# virtual methods
.method public compactBuffer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 941
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-eq v1, v2, :cond_15

    .line 942
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    new-array v0, v1, [B

    .line 944
    .local v0, newBuffer:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 946
    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 948
    .end local v0           #newBuffer:[B
    :cond_15
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 985
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v1, :cond_8

    move-object v1, v3

    .line 994
    :goto_7
    return-object v1

    .line 989
    :cond_8
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 990
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_20

    .line 991
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    goto :goto_7

    .line 989
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_23
    move-object v1, v3

    .line 994
    goto :goto_7
.end method

.method public final getBuffer()[B
    .registers 2

    .prologue
    .line 807
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    return-object v0
.end method

.method public final getContentOffset()I
    .registers 2

    .prologue
    .line 847
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    return v0
.end method

.method public getEncoded()[B
    .registers 6

    .prologue
    .line 796
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    sub-int/2addr v1, v2

    new-array v0, v1, [B

    .line 797
    .local v0, encoded:[B
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 798
    return-object v0
.end method

.method public final getEndOffset()I
    .registers 3

    .prologue
    .line 834
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLength()I
    .registers 2

    .prologue
    .line 816
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    return v0
.end method

.method public final getOffset()I
    .registers 2

    .prologue
    .line 825
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    return v0
.end method

.method public final getTagOffset()I
    .registers 2

    .prologue
    .line 843
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    return v0
.end method

.method public next()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "security.113"

    .line 192
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 195
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 198
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 199
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v4, 0x80

    if-eq v3, v4, :cond_5f

    .line 201
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_62

    .line 202
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    and-int/lit8 v2, v3, 0x7f

    .line 204
    .local v2, numOctets:I
    const/4 v3, 0x5

    if-le v2, v3, :cond_33

    .line 205
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v4, "security.113"

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v5, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_33
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 211
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3a
    if-ge v1, v2, :cond_4a

    .line 212
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->read()I

    move-result v0

    .line 213
    .local v0, ch:I
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 216
    .end local v0           #ch:I
    :cond_4a
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const v4, 0xffffff

    if-le v3, v4, :cond_62

    .line 217
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v4, "security.113"

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v5, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    .end local v1           #i:I
    .end local v2           #numOctets:I
    :cond_5f
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    .line 224
    :cond_62
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    .line 226
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    return v3
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter "key"
    .parameter "entry"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    if-nez v2, :cond_17

    .line 961
    const/16 v2, 0xa

    filled-new-array {v4, v2}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    .line 964
    :cond_17
    const/4 v0, 0x0

    .line 965
    .local v0, i:I
    :goto_18
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ge v0, v2, :cond_39

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-eqz v2, :cond_39

    .line 966
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_36

    .line 967
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    .line 981
    :goto_35
    return-void

    .line 965
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 972
    :cond_39
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    if-ne v0, v2, :cond_72

    .line 973
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/Object;

    .line 974
    .local v1, newPool:[[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aget-object v3, v1, v5

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 975
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aget-object v3, v1, v6

    iget-object v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 976
    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    goto :goto_35

    .line 978
    .end local v1           #newPool:[[Ljava/lang/Object;
    :cond_72
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v5

    aput-object p1, v2, v0

    .line 979
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->pool:[[Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object p2, v2, v0

    goto :goto_35
.end method

.method protected read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "security.13B"

    .line 887
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_15

    .line 888
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.13B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 891
    :cond_15
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v1, :cond_26

    .line 892
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 901
    :goto_25
    return v1

    .line 894
    :cond_26
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 895
    .local v0, octet:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 896
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.13B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 899
    :cond_3b
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    move v1, v0

    .line 901
    goto :goto_25
.end method

.method public readBitString()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4c

    .line 257
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v0, :cond_17

    .line 258
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.114"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_17
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 265
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    if-le v0, v1, :cond_31

    .line 266
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.115"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_31
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_76

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_76

    .line 271
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.116"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_4c
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_5e

    .line 276
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.117"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_5e
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.118"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_76
    return-void
.end method

.method public readBoolean()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 329
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_1d

    .line 330
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.11C"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1d
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v1, :cond_2f

    .line 336
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.11D"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_2f
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 340
    return-void
.end method

.method public readContent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_16

    .line 913
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.13B"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_16
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_22

    .line 917
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 924
    :goto_21
    return-void

    .line 919
    :cond_22
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-eq v0, v1, :cond_3e

    .line 920
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.13C"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_3e
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    goto :goto_21
.end method

.method public readEnumerated()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    .line 292
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.119"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 302
    :cond_1e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-nez v1, :cond_30

    .line 303
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11A"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_30
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 309
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_60

    .line 311
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 312
    .local v0, bits:I
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    if-gez v1, :cond_4c

    .line 313
    add-int/lit16 v0, v0, 0x100

    .line 316
    :cond_4c
    if-eqz v0, :cond_52

    const/16 v1, 0x1ff

    if-ne v0, v1, :cond_60

    .line 317
    :cond_52
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11B"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    .end local v0           #bits:I
    :cond_60
    return-void
.end method

.method public readGeneralizedTime()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, 0x10

    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 359
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_ef

    .line 362
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 367
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v2, v7

    aget-byte v1, v1, v2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_26

    .line 369
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11E"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_26
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_46

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_38

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_46

    .line 376
    :cond_38
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11F"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_46
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v6, :cond_68

    .line 382
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xe

    aget-byte v0, v1, v2

    .line 383
    .local v0, char14:B
    const/16 v1, 0x2e

    if-eq v0, v1, :cond_68

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_68

    .line 384
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.11F"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    .end local v0           #char14:B
    :cond_68
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v1, :cond_71

    .line 391
    const/4 v1, 0x7

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 393
    :cond_71
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v3, v8}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 394
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x4

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v7

    .line 395
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v4

    .line 396
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x3

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0x8

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 397
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v8

    .line 398
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v2, 0x5

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v3, v3, 0xc

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v3

    aput v3, v1, v2

    .line 400
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v1, v6, :cond_dd

    .line 402
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xf

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v1, v5

    .line 404
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_de

    .line 405
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0x64

    aput v2, v1, v5

    .line 419
    :cond_dd
    :goto_dd
    return-void

    .line 406
    :cond_de
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_dd

    .line 407
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v2, v2, v5

    mul-int/lit8 v2, v2, 0xa

    aput v2, v1, v5

    goto :goto_dd

    .line 412
    :cond_ef
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v2, 0x38

    if-ne v1, v2, :cond_101

    .line 413
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.120"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_101
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.121"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readInteger()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 508
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    .line 509
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.127"

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_1e
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v2, v4, :cond_30

    .line 515
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.128"

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :cond_30
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 522
    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-le v2, v4, :cond_6a

    .line 524
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    aget-byte v0, v2, v3

    .line 525
    .local v0, firstByte:B
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    int-to-byte v1, v2

    .line 527
    .local v1, secondByte:B
    if-nez v0, :cond_52

    if-eqz v1, :cond_59

    :cond_52
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6a

    const/16 v2, -0x80

    if-ne v1, v2, :cond_6a

    .line 529
    :cond_59
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v3, "security.129"

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    iget v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 533
    .end local v0           #firstByte:B
    .end local v1           #secondByte:B
    :cond_6a
    return-void
.end method

.method public readOID()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 563
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1e

    .line 564
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.12C"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_1e
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v1, v4, :cond_30

    .line 570
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.12D"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_30
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 576
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4d

    .line 577
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.12E"

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 580
    :cond_4d
    iput v4, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    .line 581
    const/4 v0, 0x0

    .local v0, i:I
    :goto_50
    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    if-ge v0, v1, :cond_6d

    .line 594
    :goto_54
    iget-object v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v2, v0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_64

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 581
    :cond_64
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->oidElement:I

    goto :goto_50

    .line 598
    :cond_6d
    return-void
.end method

.method public readOctetString()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 543
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 551
    return-void

    .line 544
    :cond_9
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1b

    .line 545
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.12A"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_1b
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.12B"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 12
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 608
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v7, 0x30

    if-eq v6, v7, :cond_1f

    .line 609
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.12F"

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 614
    :cond_1f
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    .line 615
    .local v0, begOffset:I
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    add-int v1, v0, v6

    .line 617
    .local v1, endOffset:I
    iget-object v4, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 619
    .local v4, type:[Lorg/apache/harmony/security/asn1/ASN1Type;
    const/4 v2, 0x0

    .line 621
    .local v2, i:I
    iget-boolean v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v6, :cond_7c

    .line 623
    :goto_2c
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_65

    array-length v6, v4

    if-ge v2, v6, :cond_65

    .line 625
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 626
    :goto_36
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_5b

    .line 628
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_4a

    array-length v6, v4

    sub-int/2addr v6, v8

    if-ne v2, v6, :cond_58

    .line 629
    :cond_4a
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.130"

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 632
    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 635
    :cond_5b
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 639
    :cond_63
    add-int/lit8 v2, v2, 0x1

    :cond_65
    array-length v6, v4

    if-ge v2, v6, :cond_f0

    .line 640
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_63

    .line 641
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.131"

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 648
    :cond_7c
    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 650
    .local v3, seqTagOffset:I
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/Object;

    .line 651
    .local v5, values:[Ljava/lang/Object;
    :goto_81
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-ge v6, v1, :cond_d5

    array-length v6, v4

    if-ge v2, v6, :cond_d5

    .line 653
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 654
    :goto_8b
    aget-object v6, v4, v2

    iget v7, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v6

    if-nez v6, :cond_bc

    .line 656
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_9f

    array-length v6, v4

    sub-int/2addr v6, v8

    if-ne v2, v6, :cond_ad

    .line 657
    :cond_9f
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.132"

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 662
    :cond_ad
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_b9

    .line 663
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 665
    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    .line 667
    :cond_bc
    aget-object v6, v4, v2

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    .line 651
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    .line 676
    :cond_c7
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    if-eqz v6, :cond_d3

    .line 677
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->DEFAULT:[Ljava/lang/Object;

    aget-object v6, v6, v2

    aput-object v6, v5, v2

    .line 671
    :cond_d3
    add-int/lit8 v2, v2, 0x1

    :cond_d5
    array-length v6, v4

    if-ge v2, v6, :cond_ec

    .line 672
    iget-object v6, p1, Lorg/apache/harmony/security/asn1/ASN1Sequence;->OPTIONAL:[Z

    aget-boolean v6, v6, v2

    if-nez v6, :cond_c7

    .line 673
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.133"

    iget v8, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 680
    :cond_ec
    iput-object v5, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 682
    iput v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    .line 685
    .end local v3           #seqTagOffset:I
    .end local v5           #values:[Ljava/lang/Object;
    :cond_f0
    iget v6, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    if-eq v6, v1, :cond_100

    .line 686
    new-instance v6, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v7, "security.134"

    invoke-static {v7, v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 688
    :cond_100
    return-void
.end method

.method public readSequenceOf(Lorg/apache/harmony/security/asn1/ASN1SequenceOf;)V
    .registers 6
    .parameter "sequenceOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1e

    .line 699
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.135"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_1e
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 704
    return-void
.end method

.method public readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V
    .registers 6
    .parameter "set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1e

    .line 715
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.136"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_1e
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.137"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 6
    .parameter "setOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1e

    .line 731
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.138"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_1e
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->decodeValueCollection(Lorg/apache/harmony/security/asn1/ASN1ValueCollection;)V

    .line 736
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .registers 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 779
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->id:I

    if-ne v0, v1, :cond_a

    .line 780
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 788
    return-void

    .line 781
    :cond_a
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, v1, :cond_1c

    .line 782
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.139"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_1c
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.13A"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readUTCTime()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 428
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_c9

    .line 430
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    packed-switch v0, :pswitch_data_f4

    .line 439
    :pswitch_e
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.123"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :pswitch_1c
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.122"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_28
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readContent()V

    .line 450
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->offset:I

    sub-int/2addr v1, v4

    aget-byte v0, v0, v1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_57

    .line 451
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN.1 UTCTime wrongly encoded at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_57
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    if-nez v0, :cond_60

    .line 456
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    .line 459
    :cond_60
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v2

    .line 460
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v0, v0, v2

    const/16 v1, 0x31

    if-le v0, v1, :cond_c0

    .line 461
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x76c

    aput v1, v0, v2

    .line 466
    :goto_7a
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v4

    .line 467
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    iget v1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v1, v1, 0x4

    invoke-direct {p0, v1, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v1

    aput v1, v0, v3

    .line 468
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x3

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 469
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x4

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0x8

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 471
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_bf

    .line 472
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    const/4 v1, 0x5

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/security/asn1/BerInputStream;->strToInt(II)I

    move-result v2

    aput v2, v0, v1

    .line 482
    :cond_bf
    return-void

    .line 463
    :cond_c0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    aget v1, v0, v2

    add-int/lit16 v1, v1, 0x7d0

    aput v1, v0, v2

    goto :goto_7a

    .line 476
    :cond_c9
    iget v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_db

    .line 477
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.124"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_db
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.125"

    iget v2, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    nop

    :pswitch_data_f4
    .packed-switch 0xb
        :pswitch_28
        :pswitch_e
        :pswitch_28
        :pswitch_e
        :pswitch_1c
        :pswitch_e
        :pswitch_1c
    .end packed-switch
.end method

.method public final reset([B)V
    .registers 2
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    .line 155
    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 156
    return-void
.end method

.method public final setVerify()V
    .registers 2

    .prologue
    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    .line 869
    return-void
.end method
