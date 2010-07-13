.class public Lorg/apache/harmony/archive/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ASCIIIgnoreCaseRegionMatches(Ljava/lang/String;ILjava/lang/String;II)Z
    .registers 7
    .parameter "s1"
    .parameter "start1"
    .parameter "s2"
    .parameter "start2"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .line 25
    if-eqz p0, :cond_34

    if-eqz p2, :cond_34

    .line 26
    if-ltz p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    if-le p4, v0, :cond_10

    :cond_e
    move v0, v1

    .line 36
    :goto_f
    return v0

    .line 29
    :cond_10
    if-ltz p3, :cond_19

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p4, v0, :cond_1b

    :cond_19
    move v0, v1

    .line 30
    goto :goto_f

    .line 33
    :cond_1b
    add-int v0, p1, p4

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 34
    add-int v0, p3, p4

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p0}, Lorg/apache/harmony/archive/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/harmony/archive/util/Util;->toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    .line 38
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static toASCIILowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 43
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_25

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 46
    .local v1, c:C
    const/16 v4, 0x41

    if-gt v4, v1, :cond_21

    const/16 v4, 0x5a

    if-gt v1, v4, :cond_21

    .line 47
    add-int/lit8 v4, v1, 0x20

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 49
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 52
    .end local v1           #c:C
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toASCIIUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "s"

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 57
    .local v3, len:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v3, :cond_27

    .line 59
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 60
    .local v1, c:C
    const/16 v4, 0x61

    if-gt v4, v1, :cond_23

    const/16 v4, 0x7a

    if-gt v1, v4, :cond_23

    .line 61
    const/16 v4, 0x20

    sub-int v4, v1, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 63
    :cond_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 66
    .end local v1           #c:C
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
