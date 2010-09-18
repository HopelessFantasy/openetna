.class public final Lorg/apache/harmony/security/asn1/DerInputStream;
.super Lorg/apache/harmony/security/asn1/BerInputStream;
.source "DerInputStream.java"


# static fields
.field private static final UNUSED_BITS_MASK:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/harmony/security/asn1/DerInputStream;->UNUSED_BITS_MASK:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0x1t
        0x3t
        0x7t
        0xft
        0x1ft
        0x3ft
        0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    return-void
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
    .line 39
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 40
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4
    .parameter "encoded"
    .parameter "offset"
    .parameter "encodingLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([BII)V

    .line 45
    return-void
.end method


# virtual methods
.method public final next()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v0

    .line 58
    .local v0, tag:I
    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 59
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v2, "security.105"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_15
    return v0
.end method

.method public readBitString()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 77
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_15

    .line 78
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.106"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_15
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBitString()V

    .line 84
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    if-le v0, v4, :cond_47

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->offset:I

    sub-int/2addr v1, v4

    aget-byte v0, v0, v1

    sget-object v1, Lorg/apache/harmony/security/asn1/DerInputStream;->UNUSED_BITS_MASK:[B

    iget-object v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v3, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v2, v2, v3

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_47

    .line 87
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.107"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_47
    return-void
.end method

.method public readBoolean()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->buffer:[B

    iget v1, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 100
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.108"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->contentOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_22
    return-void
.end method

.method public readGeneralizedTime()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x38

    if-ne v0, v1, :cond_14

    .line 178
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.10D"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_14
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readGeneralizedTime()V

    .line 200
    return-void
.end method

.method public readOctetString()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_14

    .line 110
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.109"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_14
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readOctetString()V

    .line 114
    return-void
.end method

.method public readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V
    .registers 2
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSequence(Lorg/apache/harmony/security/asn1/ASN1Sequence;)V

    .line 127
    return-void
.end method

.method public readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V
    .registers 2
    .parameter "setOf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSetOf(Lorg/apache/harmony/security/asn1/ASN1SetOf;)V

    .line 140
    return-void
.end method

.method public readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V
    .registers 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/ASN1StringType;->constrId:I

    if-ne v0, v1, :cond_14

    .line 148
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.10A"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_14
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readString(Lorg/apache/harmony/security/asn1/ASN1StringType;)V

    .line 151
    return-void
.end method

.method public readUTCTime()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    const/16 v1, 0x37

    if-ne v0, v1, :cond_14

    .line 160
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.10B"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_14
    iget v0, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->length:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_28

    .line 165
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.10C"

    iget v2, p0, Lorg/apache/harmony/security/asn1/DerInputStream;->tagOffset:I

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_28
    invoke-super {p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readUTCTime()V

    .line 169
    return-void
.end method
