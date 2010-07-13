.class public abstract Lcom/ibm/icu4jni/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CANONICAL_DECOMPOSITION:I = 0x11

.field public static final IDENTICAL:I = 0xf

.field public static final NO_DECOMPOSITION:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field public static final RESULT_DEFAULT:I = -0x1

.field public static final RESULT_EQUAL:I = 0x0

.field public static final RESULT_GREATER:I = 0x1

.field public static final RESULT_LESS:I = -0x1

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 13

    .prologue
    const/16 v12, 0x5f

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 400
    invoke-static {}, Lcom/ibm/icu4jni/text/NativeCollation;->getAvailableLocalesImpl()[Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, locales:[Ljava/lang/String;
    array-length v6, v4

    new-array v5, v6, [Ljava/util/Locale;

    .line 408
    .local v5, result:[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v6, v4

    if-ge v0, v6, :cond_5a

    .line 409
    aget-object v3, v4, v0

    .line 411
    .local v3, locale:Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 412
    .local v1, index:I
    invoke-virtual {v3, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 414
    .local v2, index2:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_28

    .line 415
    new-instance v6, Ljava/util/Locale;

    aget-object v7, v4, v0

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v0

    .line 408
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 416
    :cond_28
    if-ne v1, v10, :cond_3e

    if-ne v1, v2, :cond_3e

    .line 417
    new-instance v6, Ljava/util/Locale;

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    const/4 v9, 0x5

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    goto :goto_25

    .line 420
    :cond_3e
    if-ne v1, v10, :cond_25

    if-le v2, v1, :cond_25

    .line 421
    new-instance v6, Ljava/util/Locale;

    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    goto :goto_25

    .line 428
    .end local v1           #index:I
    .end local v2           #index2:I
    .end local v3           #locale:Ljava/lang/String;
    :cond_5a
    return-object v5
.end method

.method public static getInstance()Lcom/ibm/icu4jni/text/Collator;
    .registers 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ibm/icu4jni/text/Collator;->getInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/Collator;
    .registers 2
    .parameter "locale"

    .prologue
    .line 234
    new-instance v0, Lcom/ibm/icu4jni/text/RuleBasedCollator;

    invoke-direct {v0, p0}, Lcom/ibm/icu4jni/text/RuleBasedCollator;-><init>(Ljava/util/Locale;)V

    .line 235
    .local v0, result:Lcom/ibm/icu4jni/text/RuleBasedCollator;
    return-object v0
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "source"
    .parameter "target"

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu4jni/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract getAttribute(I)I
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Lcom/ibm/icu4jni/text/CollationKey;
.end method

.method public abstract getDecomposition()I
.end method

.method public abstract getStrength()I
.end method

.method public abstract hashCode()I
.end method

.method public abstract setAttribute(II)V
.end method

.method public abstract setDecomposition(I)V
.end method

.method public abstract setStrength(I)V
.end method
