.class public Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;
.super Lorg/apache/harmony/security/asn1/ASN1BitString;
.source "ASN1BitString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASN1NamedBitList"
.end annotation


# static fields
.field private static final INDEFINITE_SIZE:I = -0x1

.field private static final SET_MASK:[B

.field private static final emptyString:Lorg/apache/harmony/security/asn1/BitString;


# instance fields
.field private final maxBits:I

.field private final minBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 120
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    .line 123
    new-instance v0, Lorg/apache/harmony/security/asn1/BitString;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    return-void

    .line 120
    :array_14
    .array-data 0x1
        0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 133
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 134
    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "minBits"

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 138
    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 140
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "minBits"
    .parameter "maxBits"

    .prologue
    .line 142
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1BitString;-><init>()V

    .line 143
    iput p1, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    .line 144
    iput p2, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    .line 145
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 16
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 149
    const/4 v7, 0x0

    .line 151
    .local v7, value:[Z
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v6, v8, v9

    .line 152
    .local v6, unusedBits:I
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x8

    sub-int v0, v8, v6

    .line 154
    .local v0, bitsNumber:I
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-ne v8, v11, :cond_2c

    .line 155
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-ne v8, v11, :cond_20

    .line 156
    new-array v7, v0, [Z

    .line 172
    :goto_1d
    if-nez v0, :cond_41

    .line 194
    :cond_1f
    return-object v7

    .line 158
    :cond_20
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    if-le v0, v8, :cond_27

    .line 159
    new-array v7, v0, [Z

    goto :goto_1d

    .line 161
    :cond_27
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->minBits:I

    new-array v7, v8, [Z

    goto :goto_1d

    .line 165
    :cond_2c
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    if-le v0, v8, :cond_3c

    .line 166
    new-instance v8, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v9, "security.97"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 169
    :cond_3c
    iget v8, p0, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->maxBits:I

    new-array v7, v8, [Z

    goto :goto_1d

    .line 177
    :cond_41
    const/4 v1, 0x1

    .line 178
    .local v1, i:I
    const/4 v2, 0x0

    .line 179
    .local v2, j:I
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v9, v1

    aget-byte v4, v8, v9

    .line 180
    .local v4, octet:B
    iget v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->length:I

    sub-int v5, v8, v10

    .local v5, size:I
    :goto_4e
    if-ge v1, v5, :cond_70

    .line 182
    const/4 v3, 0x0

    .local v3, k:I
    :goto_51
    if-ge v3, v13, :cond_64

    .line 183
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_62

    move v8, v10

    :goto_5b
    aput-boolean v8, v7, v2

    .line 182
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_62
    move v8, v12

    .line 183
    goto :goto_5b

    .line 185
    :cond_64
    add-int/lit8 v1, v1, 0x1

    .line 186
    iget-object v8, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v9, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    add-int/2addr v9, v1

    aget-byte v4, v8, v9

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 190
    .end local v3           #k:I
    :cond_70
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_71
    sub-int v8, v13, v6

    if-ge v3, v8, :cond_1f

    .line 191
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v8, v8, v3

    and-int/2addr v8, v4

    if-eqz v8, :cond_84

    move v8, v10

    :goto_7d
    aput-boolean v8, v7, v2

    .line 190
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_84
    move v8, v12

    .line 191
    goto :goto_7d
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .registers 14
    .parameter "out"

    .prologue
    const/16 v11, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x1

    .line 199
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Z

    move-object v0, p0

    check-cast v0, [Z

    move-object v6, v0

    .line 201
    .local v6, toEncode:[Z
    array-length v8, v6

    sub-int v3, v8, v10

    .line 202
    .local v3, index:I
    :goto_f
    if-le v3, v9, :cond_18

    aget-boolean v8, v6, v3

    if-nez v8, :cond_18

    .line 203
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 206
    :cond_18
    if-ne v3, v9, :cond_21

    .line 207
    sget-object v8, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->emptyString:Lorg/apache/harmony/security/asn1/BitString;

    iput-object v8, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 208
    iput v10, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 233
    :goto_20
    return-void

    .line 210
    :cond_21
    const/4 v8, 0x7

    rem-int/lit8 v9, v3, 0x8

    sub-int v7, v8, v9

    .line 211
    .local v7, unusedBits:I
    div-int/lit8 v8, v3, 0x8

    add-int/lit8 v8, v8, 0x1

    new-array v1, v8, [B

    .line 213
    .local v1, bytes:[B
    const/4 v4, 0x0

    .line 214
    .local v4, j:I
    array-length v8, v1

    sub-int v3, v8, v10

    .line 215
    const/4 v2, 0x0

    .local v2, i:I
    :goto_31
    if-ge v2, v3, :cond_4c

    .line 216
    const/4 v5, 0x0

    .local v5, k:I
    :goto_34
    if-ge v5, v11, :cond_49

    .line 217
    aget-boolean v8, v6, v4

    if-eqz v8, :cond_44

    .line 218
    aget-byte v8, v1, v2

    sget-object v9, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v9, v9, v5

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    .line 216
    :cond_44
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 215
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 224
    .end local v5           #k:I
    :cond_4c
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_4d
    sub-int v8, v11, v7

    if-ge v5, v8, :cond_64

    .line 225
    aget-boolean v8, v6, v4

    if-eqz v8, :cond_5f

    .line 226
    aget-byte v8, v1, v3

    sget-object v9, Lorg/apache/harmony/security/asn1/ASN1BitString$ASN1NamedBitList;->SET_MASK:[B

    aget-byte v9, v9, v5

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 224
    :cond_5f
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 230
    :cond_64
    new-instance v8, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v8, v1, v7}, Lorg/apache/harmony/security/asn1/BitString;-><init>([BI)V

    iput-object v8, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->content:Ljava/lang/Object;

    .line 231
    array-length v8, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    goto :goto_20
.end method
