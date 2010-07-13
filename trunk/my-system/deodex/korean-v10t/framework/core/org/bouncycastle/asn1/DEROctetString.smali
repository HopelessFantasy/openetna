.class public Lorg/bouncycastle/asn1/DEROctetString;
.super Lorg/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "string"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 15
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
    .line 27
    const/4 v0, 0x4

    iget-object v1, p0, Lorg/bouncycastle/asn1/DEROctetString;->string:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 28
    return-void
.end method
