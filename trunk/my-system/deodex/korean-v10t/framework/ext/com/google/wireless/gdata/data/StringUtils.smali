.class public final Lcom/google/wireless/gdata/data/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "string"

    .prologue
    .line 20
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .registers 5
    .parameter "string"

    .prologue
    const/4 v3, 0x1

    .line 32
    if-nez p0, :cond_5

    move v2, v3

    .line 41
    :goto_4
    return v2

    .line 35
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 36
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1b

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_18

    .line 38
    const/4 v2, 0x0

    goto :goto_4

    .line 36
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    move v2, v3

    .line 41
    goto :goto_4
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 45
    if-eqz p0, :cond_8

    .line 47
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 52
    :goto_6
    return v0

    .line 48
    :catch_7
    move-exception v0

    :cond_8
    move v0, p1

    .line 52
    goto :goto_6
.end method
