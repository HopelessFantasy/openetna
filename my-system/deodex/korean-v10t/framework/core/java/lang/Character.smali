.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$valueOfCache;,
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$Subset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE_LEN:I = 0x200

.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B = null

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field private static final ISJAVAPART:I = 0x2

.field private static final ISJAVASTART:I = 0x1

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L

.field private static final typeTags:[C


# instance fields
.field private final value:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Ljava/lang/Character;->$assertionsDisabled:Z

    .line 98
    new-array v0, v1, [C

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 534
    const-string v0, "\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0000\u0000\u0000\u0000\u0000\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0003\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0002\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0000\u0000\u0000\u0000\u0003\u0000\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0003\u0000\u0000\u0000\u0000\u0002"

    invoke-virtual {v0}, Ljava/lang/String;->getValue()[C

    move-result-object v0

    sput-object v0, Ljava/lang/Character;->typeTags:[C

    .line 537
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Ljava/lang/Character;->DIRECTIONALITY:[B

    return-void

    :cond_2a
    move v0, v1

    .line 59
    goto :goto_a

    .line 537
    :array_2c
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor <init>(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 1526
    return-void
.end method

.method public static charCount(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1681
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1728
    if-nez p0, :cond_8

    .line 1729
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1731
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1732
    .local v2, len:I
    if-ltz p1, :cond_10

    if-lt p1, v2, :cond_16

    .line 1733
    :cond_10
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1736
    :cond_16
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1737
    .local v0, high:C
    if-lt v1, v2, :cond_20

    move v4, v0

    .line 1744
    :goto_1f
    return v4

    .line 1740
    :cond_20
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1741
    .local v3, low:C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1742
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1f

    :cond_2f
    move v4, v0

    .line 1744
    goto :goto_1f
.end method

.method public static codePointAt([CI)I
    .registers 7
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1768
    if-nez p0, :cond_8

    .line 1769
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1771
    :cond_8
    array-length v2, p0

    .line 1772
    .local v2, len:I
    if-ltz p1, :cond_d

    if-lt p1, v2, :cond_13

    .line 1773
    :cond_d
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1776
    :cond_13
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    aget-char v0, p0, p1

    .line 1777
    .local v0, high:C
    if-lt v1, v2, :cond_1b

    move v4, v0

    .line 1784
    :goto_1a
    return v4

    .line 1780
    :cond_1b
    aget-char v3, p0, v1

    .line 1781
    .local v3, low:C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1782
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    goto :goto_1a

    :cond_28
    move v4, v0

    .line 1784
    goto :goto_1a
.end method

.method public static codePointAt([CII)I
    .registers 7
    .parameter "seq"
    .parameter "index"
    .parameter "limit"

    .prologue
    .line 1811
    if-ltz p1, :cond_9

    if-ge p1, p2, :cond_9

    if-ltz p2, :cond_9

    array-length v3, p0

    if-le p2, v3, :cond_f

    .line 1812
    :cond_9
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1815
    :cond_f
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    aget-char v0, p0, p1

    .line 1816
    .local v0, high:C
    if-lt v1, p2, :cond_17

    move v3, v0

    .line 1823
    :goto_16
    return v3

    .line 1819
    :cond_17
    aget-char v2, p0, v1

    .line 1820
    .local v2, low:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1821
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_16

    :cond_24
    move v3, v0

    .line 1823
    goto :goto_16
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1847
    if-nez p0, :cond_8

    .line 1848
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1850
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1851
    .local v1, len:I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_11

    if-le p1, v1, :cond_17

    .line 1852
    :cond_11
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1855
    :cond_17
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1856
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_23

    move v3, v2

    .line 1863
    :goto_22
    return v3

    .line 1859
    :cond_23
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1860
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 1861
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_22

    :cond_32
    move v3, v2

    .line 1863
    goto :goto_22
.end method

.method public static codePointBefore([CI)I
    .registers 6
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1887
    if-nez p0, :cond_8

    .line 1888
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1890
    :cond_8
    array-length v1, p0

    .line 1891
    .local v1, len:I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_e

    if-le p1, v1, :cond_14

    .line 1892
    :cond_e
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1895
    :cond_14
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 1896
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1e

    move v3, v2

    .line 1903
    :goto_1d
    return v3

    .line 1899
    :cond_1e
    aget-char v0, p0, p1

    .line 1900
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1901
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_1d

    :cond_2b
    move v3, v2

    .line 1903
    goto :goto_1d
.end method

.method public static codePointBefore([CII)I
    .registers 7
    .parameter "seq"
    .parameter "index"
    .parameter "start"

    .prologue
    .line 1932
    if-nez p0, :cond_8

    .line 1933
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1935
    :cond_8
    array-length v1, p0

    .line 1936
    .local v1, len:I
    if-le p1, p2, :cond_11

    if-gt p1, v1, :cond_11

    if-ltz p2, :cond_11

    if-lt p2, v1, :cond_17

    .line 1937
    :cond_11
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1940
    :cond_17
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 1941
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-ge p1, p2, :cond_21

    move v3, v2

    .line 1948
    :goto_20
    return v3

    .line 1944
    :cond_21
    aget-char v0, p0, p1

    .line 1945
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1946
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_20

    :cond_2e
    move v3, v2

    .line 1948
    goto :goto_20
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .registers 8
    .parameter "seq"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 2049
    if-nez p0, :cond_8

    .line 2050
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2052
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2053
    .local v2, len:I
    if-ltz p1, :cond_12

    if-gt p2, v2, :cond_12

    if-le p1, p2, :cond_18

    .line 2054
    :cond_12
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2057
    :cond_18
    const/4 v3, 0x0

    .line 2058
    .local v3, result:I
    move v1, p1

    .local v1, i:I
    :goto_1a
    if-ge v1, p2, :cond_3b

    .line 2059
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2060
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2061
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_36

    .line 2062
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2063
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2064
    add-int/lit8 v3, v3, 0x1

    .line 2068
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 2058
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 2070
    .end local v0           #c:C
    :cond_3b
    return v3
.end method

.method public static codePointCount([CII)I
    .registers 9
    .parameter "seq"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 2094
    if-nez p0, :cond_8

    .line 2095
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 2097
    :cond_8
    array-length v3, p0

    .line 2098
    .local v3, len:I
    add-int v1, p1, p2

    .line 2099
    .local v1, endIndex:I
    if-ltz p1, :cond_11

    if-ltz p2, :cond_11

    if-le v1, v3, :cond_17

    .line 2100
    :cond_11
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2103
    :cond_17
    const/4 v4, 0x0

    .line 2104
    .local v4, result:I
    move v2, p1

    .local v2, i:I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 2105
    aget-char v0, p0, v2

    .line 2106
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2107
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_31

    .line 2108
    aget-char v0, p0, v2

    .line 2109
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2110
    add-int/lit8 v4, v4, 0x1

    .line 2114
    :cond_31
    add-int/lit8 v4, v4, 0x1

    .line 2104
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2116
    .end local v0           #c:C
    :cond_36
    return v4
.end method

.method public static digit(CI)I
    .registers 3
    .parameter "c"
    .parameter "radix"

    .prologue
    .line 2313
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/lang/UCharacter;->digit(II)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .registers 3
    .parameter "codePoint"
    .parameter "radix"

    .prologue
    .line 2332
    invoke-static {p0, p1}, Lcom/ibm/icu4jni/lang/UCharacter;->digit(II)I

    move-result v0

    return v0
.end method

.method public static forDigit(II)C
    .registers 4
    .parameter "digit"
    .parameter "radix"

    .prologue
    const/16 v1, 0xa

    .line 2368
    const/4 v0, 0x2

    if-gt v0, p1, :cond_17

    const/16 v0, 0x24

    if-gt p1, v0, :cond_17

    .line 2369
    if-ltz p0, :cond_17

    if-ge p0, p1, :cond_17

    .line 2370
    if-ge p0, v1, :cond_13

    add-int/lit8 v0, p0, 0x30

    :goto_11
    int-to-char v0, v0

    .line 2373
    :goto_12
    return v0

    .line 2370
    :cond_13
    add-int/lit8 v0, p0, 0x61

    sub-int/2addr v0, v1

    goto :goto_11

    .line 2373
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getDirectionality(C)B
    .registers 2
    .parameter "c"

    .prologue
    .line 2498
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v2, -0x1

    .line 2511
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    if-nez v1, :cond_9

    move v1, v2

    .line 2519
    :goto_8
    return v1

    .line 2515
    :cond_9
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getDirectionality(I)B

    move-result v0

    .line 2516
    .local v0, UCDirectionality:B
    if-ne v0, v2, :cond_11

    move v1, v2

    .line 2517
    goto :goto_8

    .line 2519
    :cond_11
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    goto :goto_8
.end method

.method public static getNumericValue(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2414
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getNumericValue(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2432
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getType(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2455
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getType(I)I
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 2468
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->getType(I)I

    move-result v0

    .line 2472
    .local v0, type:I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_a

    move v1, v0

    .line 2475
    :goto_9
    return v1

    :cond_a
    add-int/lit8 v1, v0, 0x1

    goto :goto_9
.end method

.method public static isDefined(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2574
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isDefined(I)Z

    move-result v0

    return v0
.end method

.method public static isDefined(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2589
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isDefined(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2611
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2625
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isHighSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1630
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-lt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isISOControl(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2669
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2682
    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    :cond_6
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_10

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isIdentifierIgnorable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2641
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2656
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierPart(C)Z
    .registers 6
    .parameter "c"

    .prologue
    const/16 v4, 0x80

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2697
    if-ge p0, v4, :cond_12

    .line 2698
    sget-object v1, Ljava/lang/Character;->typeTags:[C

    aget-char v1, v1, p0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_10

    move v1, v2

    .line 2702
    :goto_f
    return v1

    :cond_10
    move v1, v3

    .line 2698
    goto :goto_f

    .line 2701
    :cond_12
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 2702
    .local v0, type:I
    if-lt v0, v2, :cond_1b

    const/4 v1, 0x5

    if-le v0, v1, :cond_3c

    :cond_1b
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2b

    const/16 v1, 0xa

    if-le v0, v1, :cond_3c

    :cond_2b
    const/4 v1, 0x6

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3c

    if-lt p0, v4, :cond_38

    const/16 v1, 0x9f

    if-le p0, v1, :cond_3c

    :cond_38
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3e

    :cond_3c
    move v1, v2

    goto :goto_f

    :cond_3e
    move v1, v3

    goto :goto_f
.end method

.method public static isJavaIdentifierPart(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v2, 0x1

    .line 2720
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2721
    .local v0, type:I
    if-lt v0, v2, :cond_a

    const/4 v1, 0x5

    if-le v0, v1, :cond_27

    :cond_a
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_27

    const/16 v1, 0x17

    if-eq v0, v1, :cond_27

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1a

    const/16 v1, 0xa

    if-le v0, v1, :cond_27

    :cond_1a
    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    const/4 v1, 0x6

    if-eq v0, v1, :cond_27

    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_27
    move v1, v2

    :goto_28
    return v1

    :cond_29
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public static isJavaIdentifierStart(C)Z
    .registers 5
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2740
    const/16 v1, 0x80

    if-ge p0, v1, :cond_12

    .line 2741
    sget-object v1, Ljava/lang/Character;->typeTags:[C

    aget-char v1, v1, p0

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    move v1, v2

    .line 2745
    :goto_f
    return v1

    :cond_10
    move v1, v3

    .line 2741
    goto :goto_f

    .line 2744
    :cond_12
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 2745
    .local v0, type:I
    if-lt v0, v2, :cond_1b

    const/4 v1, 0x5

    if-le v0, v1, :cond_27

    :cond_1b
    const/16 v1, 0x1a

    if-eq v0, v1, :cond_27

    const/16 v1, 0x17

    if-eq v0, v1, :cond_27

    const/16 v1, 0xa

    if-ne v0, v1, :cond_29

    :cond_27
    move v1, v2

    goto :goto_f

    :cond_29
    move v1, v3

    goto :goto_f
.end method

.method public static isJavaIdentifierStart(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 2761
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2762
    .local v0, type:I
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_16

    const/16 v1, 0x17

    if-eq v0, v1, :cond_16

    const/16 v1, 0xa

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static isJavaLetter(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2778
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2794
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isLetter(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2815
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetter(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2829
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2846
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2860
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLowSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1646
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-lt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isLowerCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2883
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2897
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2539
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2553
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isSpace(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2912
    const/16 v0, 0xa

    if-eq p0, v0, :cond_14

    const/16 v0, 0x9

    if-eq p0, v0, :cond_14

    const/16 v0, 0xc

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x20

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSpaceChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2936
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSpaceChar(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2952
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSupplementaryCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1614
    const/high16 v0, 0x1

    if-gt v0, p0, :cond_b

    const v0, 0x10ffff

    if-lt v0, p0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isSurrogatePair(CC)Z
    .registers 3
    .parameter "high"
    .parameter "low"

    .prologue
    .line 1664
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTitleCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2978
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2992
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3013
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3028
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3046
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3061
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3084
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3098
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isValidCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1600
    if-ltz p0, :cond_9

    const v0, 0x10ffff

    if-lt v0, p0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isWhitespace(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3124
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3140
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "seq"
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2142
    if-nez p0, :cond_8

    .line 2143
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 2145
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2146
    .local v2, len:I
    if-ltz p1, :cond_10

    if-le p1, v2, :cond_16

    .line 2147
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2150
    :cond_16
    if-nez p2, :cond_1a

    move v5, p1

    .line 2189
    :goto_19
    return v5

    .line 2154
    :cond_1a
    if-lez p2, :cond_49

    .line 2155
    move v0, p2

    .line 2156
    .local v0, codePoints:I
    move v1, p1

    .line 2157
    .local v1, i:I
    :goto_1e
    if-lez v0, :cond_47

    .line 2158
    add-int/lit8 v0, v0, -0x1

    .line 2159
    if-lt v1, v2, :cond_2a

    .line 2160
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2162
    :cond_2a
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2163
    add-int/lit8 v3, v1, 0x1

    .line 2164
    .local v3, next:I
    if-ge v3, v2, :cond_44

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2165
    add-int/lit8 v1, v1, 0x1

    .line 2168
    .end local v3           #next:I
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_47
    move v5, v1

    .line 2170
    goto :goto_19

    .line 2173
    .end local v0           #codePoints:I
    .end local v1           #i:I
    :cond_49
    sget-boolean v5, Ljava/lang/Character;->$assertionsDisabled:Z

    if-nez v5, :cond_55

    if-ltz p2, :cond_55

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2174
    :cond_55
    neg-int v0, p2

    .line 2175
    .restart local v0       #codePoints:I
    move v1, p1

    .line 2176
    .restart local v1       #i:I
    :cond_57
    :goto_57
    if-lez v0, :cond_81

    .line 2177
    add-int/lit8 v0, v0, -0x1

    .line 2178
    add-int/lit8 v1, v1, -0x1

    .line 2179
    if-gez v1, :cond_65

    .line 2180
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2182
    :cond_65
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2183
    const/4 v5, 0x1

    sub-int v4, v1, v5

    .line 2184
    .local v4, prev:I
    if-ltz v4, :cond_57

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2185
    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    .end local v4           #prev:I
    :cond_81
    move v5, v1

    .line 2189
    goto :goto_19
.end method

.method public static offsetByCodePoints([CIIII)I
    .registers 11
    .parameter "seq"
    .parameter "start"
    .parameter "count"
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2224
    if-nez p0, :cond_8

    .line 2225
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 2227
    :cond_8
    add-int v1, p1, p2

    .line 2228
    .local v1, end:I
    if-ltz p1, :cond_15

    if-ltz p2, :cond_15

    array-length v5, p0

    if-gt v1, v5, :cond_15

    if-lt p3, p1, :cond_15

    if-le p3, v1, :cond_1b

    .line 2230
    :cond_15
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2233
    :cond_1b
    if-nez p4, :cond_1f

    move v5, p3

    .line 2272
    :goto_1e
    return v5

    .line 2237
    :cond_1f
    if-lez p4, :cond_4a

    .line 2238
    move v0, p4

    .line 2239
    .local v0, codePoints:I
    move v2, p3

    .line 2240
    .local v2, i:I
    :goto_23
    if-lez v0, :cond_48

    .line 2241
    add-int/lit8 v0, v0, -0x1

    .line 2242
    if-lt v2, v1, :cond_2f

    .line 2243
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2245
    :cond_2f
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2246
    add-int/lit8 v3, v2, 0x1

    .line 2247
    .local v3, next:I
    if-ge v3, v1, :cond_45

    aget-char v5, p0, v3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2248
    add-int/lit8 v2, v2, 0x1

    .line 2251
    .end local v3           #next:I
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_48
    move v5, v2

    .line 2253
    goto :goto_1e

    .line 2256
    .end local v0           #codePoints:I
    .end local v2           #i:I
    :cond_4a
    sget-boolean v5, Ljava/lang/Character;->$assertionsDisabled:Z

    if-nez v5, :cond_56

    if-ltz p4, :cond_56

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2257
    :cond_56
    neg-int v0, p4

    .line 2258
    .restart local v0       #codePoints:I
    move v2, p3

    .line 2259
    .restart local v2       #i:I
    :cond_58
    :goto_58
    if-lez v0, :cond_7e

    .line 2260
    add-int/lit8 v0, v0, -0x1

    .line 2261
    add-int/lit8 v2, v2, -0x1

    .line 2262
    if-ge v2, p1, :cond_66

    .line 2263
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2265
    :cond_66
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2266
    const/4 v5, 0x1

    sub-int v4, v2, v5

    .line 2267
    .local v4, prev:I
    if-lt v4, p1, :cond_58

    aget-char v5, p0, v4

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2268
    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    .end local v4           #prev:I
    :cond_7e
    move v5, v2

    .line 2272
    goto :goto_1e
.end method

.method public static reverseBytes(C)C
    .registers 3
    .parameter "c"

    .prologue
    .line 3153
    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static toChars(I[CI)I
    .registers 8
    .parameter "codePoint"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    const/4 v4, 0x1

    .line 1973
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1974
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1976
    :cond_d
    if-nez p1, :cond_15

    .line 1977
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1979
    :cond_15
    if-ltz p2, :cond_1a

    array-length v3, p1

    if-lt p2, v3, :cond_20

    .line 1980
    :cond_1a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1983
    :cond_20
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1984
    array-length v3, p1

    sub-int/2addr v3, v4

    if-ne p2, v3, :cond_30

    .line 1985
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1989
    :cond_30
    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .line 1990
    .local v0, cpPrime:I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 1991
    .local v1, high:I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 1992
    .local v2, low:I
    int-to-char v3, v1

    aput-char v3, p1, p2

    .line 1993
    add-int/lit8 v3, p2, 0x1

    int-to-char v4, v2

    aput-char v4, p1, v3

    .line 1994
    const/4 v3, 0x2

    .line 1998
    .end local v0           #cpPrime:I
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_4d
    return v3

    .line 1997
    :cond_4e
    int-to-char v3, p0

    aput-char v3, p1, p2

    move v3, v4

    .line 1998
    goto :goto_4d
.end method

.method public static toChars(I)[C
    .registers 8
    .parameter "codePoint"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2016
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2017
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 2020
    :cond_e
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2021
    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .line 2022
    .local v0, cpPrime:I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2023
    .local v1, high:I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2024
    .local v2, low:I
    const/4 v3, 0x2

    new-array v3, v3, [C

    int-to-char v4, v1

    aput-char v4, v3, v5

    int-to-char v4, v2

    aput-char v4, v3, v6

    .line 2026
    .end local v0           #cpPrime:I
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_31
    return-object v3

    :cond_32
    new-array v3, v6, [C

    int-to-char v4, p0

    aput-char v4, v3, v5

    goto :goto_31
.end method

.method public static toCodePoint(CC)I
    .registers 6
    .parameter "high"
    .parameter "low"

    .prologue
    .line 1702
    and-int/lit16 v2, p0, 0x3ff

    shl-int/lit8 v0, v2, 0xa

    .line 1703
    .local v0, h:I
    and-int/lit16 v1, p1, 0x3ff

    .line 1704
    .local v1, l:I
    or-int v2, v0, v1

    const/high16 v3, 0x1

    add-int/2addr v2, v3

    return v2
.end method

.method public static toLowerCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3195
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toLowerCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3211
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toLowerCase(I)I

    move-result v0

    return v0
.end method

.method public static toString(C)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 3228
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3251
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toTitleCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3266
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toTitleCase(I)I

    move-result v0

    return v0
.end method

.method public static toUpperCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3308
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toUpperCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3324
    invoke-static {p0}, Lcom/ibm/icu4jni/lang/UCharacter;->toUpperCase(I)I

    move-result v0

    return v0
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .registers 2
    .parameter "c"

    .prologue
    .line 1568
    const/16 v0, 0x200

    if-lt p0, v0, :cond_a

    .line 1569
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    .line 1571
    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Ljava/lang/Character$valueOfCache;->access$000()[Ljava/lang/Character;

    move-result-object v0

    aget-object v0, v0, p0

    goto :goto_9
.end method


# virtual methods
.method public charValue()C
    .registers 2

    .prologue
    .line 1535
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .registers 4
    .parameter "c"

    .prologue
    .line 1553
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 2348
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_e

    iget-char v0, p0, Ljava/lang/Character;->value:C

    check-cast p1, Ljava/lang/Character;

    .end local p1
    iget-char v1, p1, Ljava/lang/Character;->value:C

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2558
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3216
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
