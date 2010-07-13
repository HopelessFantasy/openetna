.class public Lorg/bouncycastle/asn1/DERUnknownTag;
.super Lorg/bouncycastle/asn1/DERObject;
.source "DERUnknownTag.java"


# instance fields
.field data:[B

.field tag:I


# direct methods
.method public constructor <init>(I[B)V
    .registers 3
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 22
    iput p1, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    .line 24
    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 41
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 46
    if-eqz p1, :cond_7

    instance-of v3, p1, Lorg/bouncycastle/asn1/DERUnknownTag;

    if-nez v3, :cond_9

    :cond_7
    move v3, v5

    .line 71
    :goto_8
    return v3

    .line 51
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERUnknownTag;

    move-object v2, v0

    .line 53
    .local v2, other:Lorg/bouncycastle/asn1/DERUnknownTag;
    iget v3, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget v4, v2, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    if-eq v3, v4, :cond_15

    move v3, v5

    .line 55
    goto :goto_8

    .line 58
    :cond_15
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    array-length v3, v3

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    array-length v4, v4

    if-eq v3, v4, :cond_1f

    move v3, v5

    .line 60
    goto :goto_8

    .line 63
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    array-length v3, v3

    if-ge v1, v3, :cond_34

    .line 65
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    aget-byte v3, v3, v1

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_31

    move v3, v5

    .line 67
    goto :goto_8

    .line 63
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 71
    :cond_34
    const/4 v3, 0x1

    goto :goto_8
.end method

.method public getData()[B
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->data:[B

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lorg/bouncycastle/asn1/DERUnknownTag;->tag:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUnknownTag;->getData()[B

    move-result-object v0

    .line 77
    .local v0, b:[B
    const/4 v2, 0x0

    .line 79
    .local v2, value:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_14

    .line 81
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    rem-int/lit8 v4, v1, 0x4

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    :cond_14
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERUnknownTag;->getTag()I

    move-result v3

    xor-int/2addr v3, v2

    return v3
.end method
