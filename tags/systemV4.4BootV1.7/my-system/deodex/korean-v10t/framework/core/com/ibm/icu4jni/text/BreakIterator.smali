.class public abstract Lcom/ibm/icu4jni/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static BI_CHAR_INSTANCE:I

.field protected static BI_LINE_INSTANCE:I

.field protected static BI_SENT_INSTANCE:I

.field protected static BI_WORD_INSTANCE:I


# instance fields
.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/ibm/icu4jni/text/BreakIterator;->BI_CHAR_INSTANCE:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/ibm/icu4jni/text/BreakIterator;->BI_WORD_INSTANCE:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/ibm/icu4jni/text/BreakIterator;->BI_LINE_INSTANCE:I

    .line 28
    const/4 v0, 0x4

    sput v0, Lcom/ibm/icu4jni/text/BreakIterator;->BI_SENT_INSTANCE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu4jni/text/BreakIterator;->type:I

    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .registers 12

    .prologue
    const/16 v11, 0x5f

    const/4 v10, 0x0

    .line 34
    invoke-static {}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getAvailableLocalesImpl()[Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, locales:[Ljava/lang/String;
    array-length v6, v4

    new-array v5, v6, [Ljava/util/Locale;

    .line 42
    .local v5, result:[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    array-length v6, v4

    if-ge v0, v6, :cond_59

    .line 43
    aget-object v3, v4, v0

    .line 45
    .local v3, locale:Ljava/lang/String;
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 46
    .local v1, index:I
    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 48
    .local v2, index2:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_27

    .line 49
    new-instance v6, Ljava/util/Locale;

    aget-object v7, v4, v0

    invoke-direct {v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v0

    .line 42
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 50
    :cond_27
    if-lez v1, :cond_3d

    if-ne v1, v2, :cond_3d

    .line 51
    new-instance v6, Ljava/util/Locale;

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    goto :goto_24

    .line 54
    :cond_3d
    if-lez v1, :cond_24

    if-le v2, v1, :cond_24

    .line 55
    new-instance v6, Ljava/util/Locale;

    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    goto :goto_24

    .line 62
    .end local v1           #index:I
    .end local v2           #index2:I
    .end local v3           #locale:Ljava/lang/String;
    :cond_59
    return-object v5
.end method

.method public static getCharacterInstance()Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 3

    .prologue
    .line 66
    const-string v1, ""

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getCharacterInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_CHAR_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getCharacterInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 72
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_CHAR_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getLineInstance()Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 3

    .prologue
    .line 76
    const-string v1, ""

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getLineInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_LINE_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getLineInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getLineInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_LINE_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getSentenceInstance()Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 3

    .prologue
    .line 86
    const-string v1, ""

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getSentenceInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 87
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_SENT_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getSentenceInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_SENT_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getWordInstance()Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 3

    .prologue
    .line 96
    const-string v1, ""

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getWordInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_WORD_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method

.method public static getWordInstance(Ljava/util/Locale;)Lcom/ibm/icu4jni/text/BreakIterator;
    .registers 4
    .parameter "where"

    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getWordInstanceImpl(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, iter:I
    new-instance v1, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;

    sget v2, Lcom/ibm/icu4jni/text/BreakIterator;->BI_WORD_INSTANCE:I

    invoke-direct {v1, v0, v2}, Lcom/ibm/icu4jni/text/RuleBasedBreakIterator;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public abstract isBoundary(I)Z
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public abstract preceding(I)I
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .parameter "newText"

    .prologue
    .line 106
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu4jni/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 107
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
