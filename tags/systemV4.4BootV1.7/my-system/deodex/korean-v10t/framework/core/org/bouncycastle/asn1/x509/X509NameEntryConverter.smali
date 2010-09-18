.class public abstract Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;
.super Ljava/lang/Object;
.source "X509NameEntryConverter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected canBePrintable(Ljava/lang/String;)Z
    .registers 8
    .parameter "str"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v1, v2, v5

    .local v1, i:I
    :goto_8
    if-ltz v1, :cond_38

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    .local v0, ch:C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_18

    move v2, v4

    .line 142
    .end local v0           #ch:C
    :goto_17
    return v2

    .line 109
    .restart local v0       #ch:C
    :cond_18
    const/16 v2, 0x61

    if-gt v2, v0, :cond_23

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_23

    .line 100
    :cond_20
    :sswitch_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 114
    :cond_23
    const/16 v2, 0x41

    if-gt v2, v0, :cond_2b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_20

    .line 119
    :cond_2b
    const/16 v2, 0x30

    if-gt v2, v0, :cond_33

    const/16 v2, 0x39

    if-le v0, v2, :cond_20

    .line 124
    :cond_33
    sparse-switch v0, :sswitch_data_3a

    move v2, v4

    .line 139
    goto :goto_17

    .end local v0           #ch:C
    :cond_38
    move v2, v5

    .line 142
    goto :goto_17

    .line 124
    :sswitch_data_3a
    .sparse-switch
        0x20 -> :sswitch_20
        0x27 -> :sswitch_20
        0x28 -> :sswitch_20
        0x29 -> :sswitch_20
        0x2b -> :sswitch_20
        0x2d -> :sswitch_20
        0x2e -> :sswitch_20
        0x3a -> :sswitch_20
        0x3d -> :sswitch_20
        0x3f -> :sswitch_20
    .end sparse-switch
.end method

.method protected convertHexEncoded(Ljava/lang/String;I)Lorg/bouncycastle/asn1/DERObject;
    .registers 12
    .parameter "str"
    .parameter "off"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x61

    .line 63
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 65
    .local v1, data:[B
    const/4 v2, 0x0

    .local v2, index:I
    :goto_12
    array-length v5, v1

    if-eq v2, v5, :cond_52

    .line 67
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 68
    .local v3, left:C
    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, p2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 70
    .local v4, right:C
    if-ge v3, v7, :cond_3c

    .line 72
    sub-int v5, v3, v8

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 78
    :goto_2e
    if-ge v4, v7, :cond_46

    .line 80
    aget-byte v5, v1, v2

    sub-int v6, v4, v8

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 65
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 76
    :cond_3c
    sub-int v5, v3, v7

    add-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_2e

    .line 84
    :cond_46
    aget-byte v5, v1, v2

    sub-int v6, v4, v7

    add-int/lit8 v6, v6, 0xa

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_39

    .line 88
    .end local v3           #left:C
    .end local v4           #right:C
    :cond_52
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 90
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    return-object v5
.end method

.method public abstract getConvertedValue(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
.end method
