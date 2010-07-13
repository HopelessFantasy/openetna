.class public Lorg/apache/harmony/security/asn1/ASN1Sequence;
.super Lorg/apache/harmony/security/asn1/ASN1TypeCollection;
.source "ASN1Sequence.java"


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 37
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;-><init>(I[Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 40
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V

    .line 51
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_9

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 63
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V

    .line 64
    return-void
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 67
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getSequenceLength(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V

    .line 68
    return-void
.end method
