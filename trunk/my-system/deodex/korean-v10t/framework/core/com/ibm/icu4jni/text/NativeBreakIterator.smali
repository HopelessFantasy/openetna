.class final Lcom/ibm/icu4jni/text/NativeBreakIterator;
.super Ljava/lang/Object;
.source "NativeBreakIterator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static native cloneImpl(I)I
.end method

.method static native closeBreakIteratorImpl(I)V
.end method

.method static native currentImpl(I)I
.end method

.method static native firstImpl(I)I
.end method

.method static native followingImpl(II)I
.end method

.method private static native getAvailableLocalesCountImpl()I
.end method

.method private static native getAvailableLocalesImpl(I)Ljava/lang/String;
.end method

.method static getAvailableLocalesImpl()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 26
    invoke-static {}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getAvailableLocalesCountImpl()I

    move-result v0

    .line 27
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 29
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_12

    .line 30
    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeBreakIterator;->getAvailableLocalesImpl(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 32
    :cond_12
    return-object v2
.end method

.method static native getCharacterInstanceImpl(Ljava/lang/String;)I
.end method

.method static native getLineInstanceImpl(Ljava/lang/String;)I
.end method

.method static native getSentenceInstanceImpl(Ljava/lang/String;)I
.end method

.method static native getWordInstanceImpl(Ljava/lang/String;)I
.end method

.method static native isBoundaryImpl(II)Z
.end method

.method static native lastImpl(I)I
.end method

.method static native nextImpl(II)I
.end method

.method static native precedingImpl(II)I
.end method

.method static native previousImpl(I)I
.end method

.method static native setTextImpl(ILjava/lang/String;)V
.end method
