.class public Lorg/bouncycastle/asn1/DERTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1TaggedObject;
.source "DERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "tagNo"

    .prologue
    .line 45
    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    .line 23
    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .parameter "explicit"
    .parameter "tagNo"
    .parameter "obj"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    .line 36
    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 52
    iget-boolean v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->empty:Z

    if-nez v3, :cond_40

    .line 54
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 57
    .local v2, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 60
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 62
    .local v1, bytes:[B
    iget-boolean v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->explicit:Z

    if-eqz v3, :cond_27

    .line 64
    iget v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v3, v3, 0xa0

    invoke-virtual {p1, v3, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 87
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    .end local v2           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :goto_26
    return-void

    .line 71
    .restart local v0       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #bytes:[B
    .restart local v2       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :cond_27
    aget-byte v3, v1, v4

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_38

    .line 73
    iget v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v3, v3, 0xa0

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 80
    :goto_34
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->write([B)V

    goto :goto_26

    .line 77
    :cond_38
    iget v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    goto :goto_34

    .line 85
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    .end local v2           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :cond_40
    iget v3, p0, Lorg/bouncycastle/asn1/DERTaggedObject;->tagNo:I

    or-int/lit16 v3, v3, 0xa0

    new-array v4, v4, [B

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    goto :goto_26
.end method
