.class public Lorg/bouncycastle/util/encoders/UrlBase64Encoder;
.super Lorg/bouncycastle/util/encoders/Base64Encoder;
.source "UrlBase64Encoder.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/util/encoders/Base64Encoder;-><init>()V

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    array-length v1, v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    .line 21
    const/16 v0, 0x2e

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->padding:B

    .line 23
    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->initialiseDecodingTable()V

    .line 24
    return-void
.end method
