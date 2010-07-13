.class Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TSTInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/TSTInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    .line 219
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/TSTInfo$1;->setOptional(I)V

    .line 220
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 9
    .parameter "in"

    .prologue
    const/4 v6, 0x3

    .line 223
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 225
    .local v3, values:[Ljava/lang/Object;
    new-array v1, v6, [I

    .line 226
    .local v1, accuracy:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v6, :cond_37

    .line 227
    aget-object v4, v3, v2

    if-eqz v4, :cond_34

    .line 228
    aget-object v4, v3, v2

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    aput v4, v1, v2

    .line 229
    if-lez v2, :cond_34

    aget v4, v1, v2

    if-ltz v4, :cond_26

    aget v4, v1, v2

    const/16 v5, 0x3e7

    if-le v4, v5, :cond_34

    .line 230
    :cond_26
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "security.1A3"

    aget v6, v1, v2

    invoke-static {v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 226
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 236
    :cond_37
    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .parameter "object"
    .parameter "values"

    .prologue
    .line 240
    check-cast p1, [I

    .end local p1
    move-object v0, p1

    check-cast v0, [I

    move-object v1, v0

    .line 241
    .local v1, accuracy:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    const/4 v3, 0x3

    if-ge v2, v3, :cond_34

    .line 242
    if-lez v2, :cond_24

    aget v3, v1, v2

    if-ltz v3, :cond_16

    aget v3, v1, v2

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_24

    .line 243
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "security.1A3"

    aget v5, v1, v2

    invoke-static {v4, v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_24
    aget v3, v1, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, p2, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 249
    :cond_34
    return-void
.end method
