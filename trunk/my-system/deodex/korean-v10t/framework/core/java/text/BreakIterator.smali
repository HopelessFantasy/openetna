.class public abstract Ljava/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DONE:I = -0x1

.field private static final INT_LENGTH:I = 0x4

.field private static final LONG_LENGTH:I = 0x8

.field private static final SHORT_LENGTH:I = 0x2


# instance fields
.field wrapped:Lcom/ibm/icu4jni/text/BreakIterator;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu4jni/text/BreakIterator;)V
    .registers 2
    .parameter "iterator"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Ljava/text/BreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    .line 295
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .prologue
    .line 309
    invoke-static {}, Lcom/ibm/icu4jni/text/BreakIterator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getCharacterInstance()Ljava/text/BreakIterator;
    .registers 2

    .prologue
    .line 320
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {}, Lcom/ibm/icu4jni/text/BreakIterator;->getCharacterInstance()Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 334
    if-nez p0, :cond_8

    .line 335
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 338
    :cond_8
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Lcom/ibm/icu4jni/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method protected static getInt([BI)I
    .registers 6
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 648
    if-nez p0, :cond_8

    .line 649
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 651
    :cond_8
    if-ltz p1, :cond_f

    array-length v2, p0

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    if-ge v2, p1, :cond_15

    .line 652
    :cond_f
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 654
    :cond_15
    const/4 v1, 0x0

    .line 655
    .local v1, result:I
    move v0, p1

    .local v0, i:I
    :goto_17
    add-int/lit8 v2, p1, 0x4

    if-ge v0, v2, :cond_26

    .line 656
    shl-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 658
    :cond_26
    return v1
.end method

.method public static getLineInstance()Ljava/text/BreakIterator;
    .registers 2

    .prologue
    .line 350
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {}, Lcom/ibm/icu4jni/text/BreakIterator;->getLineInstance()Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 365
    if-nez p0, :cond_8

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 369
    :cond_8
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Lcom/ibm/icu4jni/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method protected static getLong([BI)J
    .registers 10
    .parameter "buf"
    .parameter "offset"

    .prologue
    const/16 v7, 0x8

    .line 618
    if-nez p0, :cond_a

    .line 619
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 621
    :cond_a
    if-ltz p1, :cond_10

    array-length v3, p0

    sub-int/2addr v3, p1

    if-ge v3, v7, :cond_16

    .line 622
    :cond_10
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 624
    :cond_16
    const-wide/16 v1, 0x0

    .line 625
    .local v1, result:J
    move v0, p1

    .local v0, i:I
    :goto_19
    add-int/lit8 v3, p1, 0x8

    if-ge v0, v3, :cond_29

    .line 626
    shl-long v3, v1, v7

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 628
    :cond_29
    return-wide v1
.end method

.method public static getSentenceInstance()Ljava/text/BreakIterator;
    .registers 2

    .prologue
    .line 381
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {}, Lcom/ibm/icu4jni/text/BreakIterator;->getSentenceInstance()Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 396
    if-nez p0, :cond_8

    .line 397
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 400
    :cond_8
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Lcom/ibm/icu4jni/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method protected static getShort([BI)S
    .registers 6
    .parameter "buf"
    .parameter "offset"

    .prologue
    .line 678
    if-nez p0, :cond_8

    .line 679
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 681
    :cond_8
    if-ltz p1, :cond_f

    array-length v2, p0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    if-ge v2, p1, :cond_15

    .line 682
    :cond_f
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 684
    :cond_15
    const/4 v1, 0x0

    .line 685
    .local v1, result:S
    move v0, p1

    .local v0, i:I
    :goto_17
    add-int/lit8 v2, p1, 0x2

    if-ge v0, v2, :cond_26

    .line 686
    shl-int/lit8 v2, v1, 0x8

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v1, v2

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 688
    :cond_26
    return v1
.end method

.method public static getWordInstance()Ljava/text/BreakIterator;
    .registers 2

    .prologue
    .line 412
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {}, Lcom/ibm/icu4jni/text/BreakIterator;->getWordInstance()Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .parameter "where"

    .prologue
    .line 427
    if-nez p0, :cond_8

    .line 428
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 431
    :cond_8
    new-instance v0, Ljava/text/RuleBasedBreakIterator;

    invoke-static {p0}, Lcom/ibm/icu4jni/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/RuleBasedBreakIterator;-><init>(Lcom/ibm/icu4jni/text/BreakIterator;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 593
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/BreakIterator;

    .line 594
    .local v0, cloned:Ljava/text/BreakIterator;
    iget-object v2, p0, Ljava/text/BreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v2}, Lcom/ibm/icu4jni/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ibm/icu4jni/text/BreakIterator;

    iput-object p0, v0, Ljava/text/BreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 595
    return-object v0

    .line 596
    .end local v0           #cloned:Ljava/text/BreakIterator;
    :catch_11
    move-exception v2

    move-object v1, v2

    .line 597
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 448
    iget-object v0, p0, Ljava/text/BreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .registers 3
    .parameter "offset"

    .prologue
    .line 462
    iget-object v0, p0, Ljava/text/BreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 475
    iget-object v0, p0, Ljava/text/BreakIterator;->wrapped:Lcom/ibm/icu4jni/text/BreakIterator;

    invoke-virtual {v0, p1}, Lcom/ibm/icu4jni/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
