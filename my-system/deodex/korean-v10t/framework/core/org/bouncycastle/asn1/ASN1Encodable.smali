.class public abstract Lorg/bouncycastle/asn1/ASN1Encodable;
.super Ljava/lang/Object;
.source "ASN1Encodable.java"

# interfaces
.implements Lorg/bouncycastle/asn1/DEREncodable;


# static fields
.field public static final BER:Ljava/lang/String; = "BER"

.field public static final DER:Ljava/lang/String; = "DER"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 65
    if-eqz p1, :cond_6

    instance-of v2, p1, Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_8

    .line 67
    :cond_6
    const/4 v2, 0x0

    .line 72
    :goto_7
    return v2

    .line 70
    :cond_8
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DEREncodable;

    move-object v1, v0

    .line 72
    .local v1, other:Lorg/bouncycastle/asn1/DEREncodable;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-interface {v1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7
.end method

.method public getDEREncoded()[B
    .registers 3

    .prologue
    .line 49
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 53
    :goto_6
    return-object v1

    .line 51
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 53
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDERObject()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .local v0, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const-string v2, "DER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 37
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :goto_19
    return-object v2

    :cond_1a
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v2

    goto :goto_19
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObject;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract toASN1Object()Lorg/bouncycastle/asn1/DERObject;
.end method
