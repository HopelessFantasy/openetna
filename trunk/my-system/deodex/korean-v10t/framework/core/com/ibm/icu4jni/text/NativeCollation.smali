.class final Lcom/ibm/icu4jni/text/NativeCollation;
.super Ljava/lang/Object;
.source "NativeCollation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static native closeCollator(I)V
.end method

.method static native closeElements(I)V
.end method

.method static native compare(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method static native getAttribute(II)I
.end method

.method private static native getAvailableLocalesCountImpl()I
.end method

.method private static native getAvailableLocalesImpl(I)Ljava/lang/String;
.end method

.method static getAvailableLocalesImpl()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 250
    invoke-static {}, Lcom/ibm/icu4jni/text/NativeCollation;->getAvailableLocalesCountImpl()I

    move-result v0

    .line 251
    .local v0, count:I
    new-array v2, v0, [Ljava/lang/String;

    .line 253
    .local v2, result:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_12

    .line 254
    invoke-static {v1}, Lcom/ibm/icu4jni/text/NativeCollation;->getAvailableLocalesImpl(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 256
    :cond_12
    return-object v2
.end method

.method static native getCollationElementIterator(ILjava/lang/String;)I
.end method

.method static native getMaxExpansion(II)I
.end method

.method static native getNormalization(I)I
.end method

.method static native getOffset(I)I
.end method

.method static native getRules(I)Ljava/lang/String;
.end method

.method static native getSortKey(ILjava/lang/String;)[B
.end method

.method static native hashCode(I)I
.end method

.method static native next(I)I
.end method

.method static native openCollator()I
.end method

.method static native openCollator(Ljava/lang/String;)I
.end method

.method static native openCollatorFromRules(Ljava/lang/String;II)I
.end method

.method static native previous(I)I
.end method

.method static native reset(I)V
.end method

.method static native safeClone(I)I
.end method

.method static native setAttribute(III)V
.end method

.method static native setNormalization(II)V
.end method

.method static native setOffset(II)V
.end method

.method static native setText(ILjava/lang/String;)V
.end method
