.class public final Lorg/apache/harmony/security/asn1/BitString;
.super Ljava/lang/Object;
.source "BitString.java"


# static fields
.field private static final RESET_MASK:[B

.field private static final SET_MASK:[B


# instance fields
.field public final bytes:[B

.field public final unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 35
    new-array v0, v1, [B

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    return-void

    .line 35
    nop

    :array_12
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

    .line 37
    :array_1a
    .array-data 0x1
        0x7ft
        0xbft
        0xdft
        0xeft
        0xf7t
        0xfbt
        0xfdt
        0xfet
    .end array-data
.end method

.method public constructor <init>([BI)V
    .registers 5
    .parameter "bytes"
    .parameter "unusedBits"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-ltz p2, :cond_8

    const/4 v0, 0x7

    if-le p2, v0, :cond_14

    .line 63
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.13D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_14
    array-length v0, p1

    if-nez v0, :cond_25

    if-eqz p2, :cond_25

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.13E"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_25
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    .line 73
    iput p2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    .line 74
    return-void
.end method

.method public constructor <init>([Z)V
    .registers 5
    .parameter "values"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    .line 83
    array-length v2, p1

    div-int/lit8 v1, v2, 0x8

    .line 84
    .local v1, size:I
    iget v2, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    if-eqz v2, :cond_11

    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 87
    :cond_11
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v2, p1

    if-ge v0, v2, :cond_21

    .line 89
    aget-boolean v2, p1, v0

    invoke-virtual {p0, v0, v2}, Lorg/apache/harmony/security/asn1/BitString;->setBit(IZ)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 91
    :cond_21
    return-void
.end method


# virtual methods
.method public getBit(I)Z
    .registers 6
    .parameter "bit"

    .prologue
    .line 94
    rem-int/lit8 v1, p1, 0x8

    .line 95
    .local v1, offset:I
    div-int/lit8 v0, p1, 0x8

    .line 96
    .local v0, index:I
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v2, v2, v0

    sget-object v3, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    aget-byte v3, v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public setBit(IZ)V
    .registers 8
    .parameter "bit"
    .parameter "value"

    .prologue
    .line 100
    rem-int/lit8 v1, p1, 0x8

    .line 101
    .local v1, offset:I
    div-int/lit8 v0, p1, 0x8

    .line 102
    .local v0, index:I
    if-eqz p2, :cond_13

    .line 103
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->SET_MASK:[B

    aget-byte v4, v4, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 107
    :goto_12
    return-void

    .line 105
    :cond_13
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    aget-byte v3, v2, v0

    sget-object v4, Lorg/apache/harmony/security/asn1/BitString;->RESET_MASK:[B

    aget-byte v4, v4, v1

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_12
.end method

.method public toBooleanArray()[Z
    .registers 5

    .prologue
    .line 110
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/BitString;->bytes:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/apache/harmony/security/asn1/BitString;->unusedBits:I

    sub-int/2addr v2, v3

    new-array v1, v2, [Z

    .line 111
    .local v1, result:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 112
    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/BitString;->getBit(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 114
    :cond_17
    return-object v1
.end method
