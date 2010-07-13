.class Lorg/apache/harmony/security/x509/ReasonFlags$1;
.super Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.source "ReasonFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ReasonFlags;
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
    .line 106
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/x509/ReasonFlags;-><init>([Z)V

    return-object v0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 3
    .parameter "out"

    .prologue
    .line 107
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    check-cast v0, Lorg/apache/harmony/security/x509/ReasonFlags;

    invoke-static {v0}, Lorg/apache/harmony/security/x509/ReasonFlags;->access$000(Lorg/apache/harmony/security/x509/ReasonFlags;)[Z

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 108
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 109
    return-void
.end method
