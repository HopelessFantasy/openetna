.class public Lorg/bouncycastle/asn1/DEROutputStream;
.super Ljava/io/FilterOutputStream;
.source "DEROutputStream.java"

# interfaces
.implements Lorg/bouncycastle/asn1/DERTags;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    return-void
.end method

.method private writeLength(I)V
    .registers 6
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    const/16 v3, 0x7f

    if-le p1, v3, :cond_23

    .line 22
    const/4 v1, 0x1

    .line 23
    .local v1, size:I
    move v2, p1

    .line 25
    .local v2, val:I
    :goto_6
    ushr-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 30
    :cond_d
    or-int/lit16 v3, v1, 0x80

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 32
    const/4 v3, 0x1

    sub-int v3, v1, v3

    mul-int/lit8 v0, v3, 0x8

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_27

    .line 34
    shr-int v3, p1, v0

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 32
    add-int/lit8 v0, v0, -0x8

    goto :goto_18

    .line 39
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #val:I
    :cond_23
    int-to-byte v3, p1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 41
    :cond_27
    return-void
.end method


# virtual methods
.method writeEncoded(I[B)V
    .registers 4
    .parameter "tag"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 49
    array-length v0, p2

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeLength(I)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/DEROutputStream;->write([B)V

    .line 51
    return-void
.end method

.method protected writeNull()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 58
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_6

    .line 66
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeNull()V

    .line 80
    .end local p1
    :goto_5
    return-void

    .line 68
    .restart local p1
    :cond_6
    instance-of v0, p1, Lorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_10

    .line 70
    check-cast p1, Lorg/bouncycastle/asn1/DERObject;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/DERObject;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_5

    .line 72
    .restart local p1
    :cond_10
    instance-of v0, p1, Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_1e

    .line 74
    check-cast p1, Lorg/bouncycastle/asn1/DEREncodable;

    .end local p1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/DERObject;->encode(Lorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_5

    .line 78
    .restart local p1
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not DEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
