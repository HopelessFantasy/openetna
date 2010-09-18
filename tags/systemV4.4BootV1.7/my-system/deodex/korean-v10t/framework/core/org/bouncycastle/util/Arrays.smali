.class public final Lorg/bouncycastle/util/Arrays;
.super Ljava/lang/Object;
.source "Arrays.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static areEqual([B[B)Z
    .registers 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    if-ne p0, p1, :cond_6

    move v1, v4

    .line 35
    :goto_5
    return v1

    .line 22
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_c

    move v1, v3

    .line 24
    goto :goto_5

    .line 27
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v1, p0

    if-eq v0, v1, :cond_1b

    .line 29
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_18

    move v1, v3

    .line 31
    goto :goto_5

    .line 27
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    move v1, v4

    .line 35
    goto :goto_5
.end method

.method public static fill([BB)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 44
    aput-byte p1, p0, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_9
    return-void
.end method

.method public static fill([JJ)V
    .registers 5
    .parameter "array"
    .parameter "value"

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 54
    aput-wide p1, p0, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_9
    return-void
.end method

.method public static fill([SS)V
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    .line 64
    aput-short p1, p0, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_9
    return-void
.end method
