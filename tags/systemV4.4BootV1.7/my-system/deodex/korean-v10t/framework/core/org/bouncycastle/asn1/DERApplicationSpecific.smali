.class public Lorg/bouncycastle/asn1/DERApplicationSpecific;
.super Lorg/bouncycastle/asn1/DERObject;
.source "DERApplicationSpecific.java"


# instance fields
.field private octets:[B

.field private tag:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 6
    .parameter "tag"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 28
    or-int/lit8 v2, p1, 0x20

    iput v2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .local v1, dos:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p2}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 36
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3
    .parameter "tag"
    .parameter "octets"

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 19
    iput p1, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 20
    iput-object p2, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 21
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
    .line 64
    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    or-int/lit8 v0, v0, 0x40

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 65
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 70
    if-eqz p1, :cond_7

    instance-of v3, p1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    if-nez v3, :cond_9

    :cond_7
    move v3, v5

    .line 95
    :goto_8
    return v3

    .line 75
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    move-object v2, v0

    .line 77
    .local v2, other:Lorg/bouncycastle/asn1/DERApplicationSpecific;
    iget v3, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget v4, v2, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    if-eq v3, v4, :cond_15

    move v3, v5

    .line 79
    goto :goto_8

    .line 82
    :cond_15
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v3, v3

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v4, v4

    if-eq v3, v4, :cond_1f

    move v3, v5

    .line 84
    goto :goto_8

    .line 87
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    array-length v3, v3

    if-ge v1, v3, :cond_34

    .line 89
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    aget-byte v3, v3, v1

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_31

    move v3, v5

    .line 91
    goto :goto_8

    .line 87
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 95
    :cond_34
    const/4 v3, 0x1

    goto :goto_8
.end method

.method public getApplicationTag()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getContents()[B
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    return-object v0
.end method

.method public getObject()Lorg/bouncycastle/asn1/DERObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v0

    .line 101
    .local v0, b:[B
    const/4 v2, 0x0

    .line 103
    .local v2, value:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_14

    .line 105
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    rem-int/lit8 v4, v1, 0x4

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 108
    :cond_14
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v3

    xor-int/2addr v3, v2

    return v3
.end method

.method public isConstructed()Z
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lorg/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
