.class public Lorg/apache/harmony/luni/util/BinarySearch;
.super Ljava/lang/Object;
.source "BinarySearch.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch(Ljava/lang/String;C)I
    .registers 8
    .parameter "data"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 34
    const/4 v1, 0x0

    .local v1, low:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v4, v5

    .line 35
    .local v0, high:I
    :goto_8
    if-gt v1, v0, :cond_1e

    .line 36
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 37
    .local v2, mid:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 38
    .local v3, target:C
    if-ne p1, v3, :cond_16

    move v4, v2

    .line 45
    .end local v2           #mid:I
    .end local v3           #target:C
    :goto_15
    return v4

    .line 40
    .restart local v2       #mid:I
    .restart local v3       #target:C
    :cond_16
    if-ge p1, v3, :cond_1b

    .line 41
    sub-int v0, v2, v5

    goto :goto_8

    .line 43
    :cond_1b
    add-int/lit8 v1, v2, 0x1

    goto :goto_8

    .line 45
    .end local v2           #mid:I
    .end local v3           #target:C
    :cond_1e
    const/4 v4, -0x1

    goto :goto_15
.end method

.method public static binarySearchRange(Ljava/lang/String;C)I
    .registers 8
    .parameter "data"
    .parameter "c"

    .prologue
    const/4 v5, 0x1

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, value:C
    const/4 v1, 0x0

    .local v1, low:I
    const/4 v2, -0x1

    .local v2, mid:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v0, v4, v5

    .line 60
    .local v0, high:I
    :goto_a
    if-gt v1, v0, :cond_20

    .line 61
    add-int v4, v1, v0

    shr-int/lit8 v2, v4, 0x1

    .line 62
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 63
    if-le p1, v3, :cond_19

    .line 64
    add-int/lit8 v1, v2, 0x1

    goto :goto_a

    .line 65
    :cond_19
    if-ne p1, v3, :cond_1d

    move v4, v2

    .line 70
    :goto_1c
    return v4

    .line 68
    :cond_1d
    sub-int v0, v2, v5

    goto :goto_a

    .line 70
    :cond_20
    if-ge p1, v3, :cond_26

    move v4, v5

    :goto_23
    sub-int v4, v2, v4

    goto :goto_1c

    :cond_26
    const/4 v4, 0x0

    goto :goto_23
.end method
