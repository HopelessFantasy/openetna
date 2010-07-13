.class public final Lcom/ibm/icu4jni/charset/CharsetProviderICU;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "CharsetProviderICU.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    .line 27
    return-void
.end method

.method private final getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 5
    .parameter "icuCanonicalName"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/ibm/icu4jni/charset/NativeConverter;->getAliases(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 61
    .local v0, aliases:[Ljava/lang/String;
    invoke-static {p1}, Lcom/ibm/icu4jni/charset/NativeConverter;->getJavaCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, canonicalName:Ljava/lang/String;
    new-instance v2, Lcom/ibm/icu4jni/charset/CharsetICU;

    invoke-direct {v2, v1, p1, v0}, Lcom/ibm/icu4jni/charset/CharsetICU;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 8
    .parameter "charsetName"

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-static {p1}, Lcom/ibm/icu4jni/charset/NativeConverter;->getICUCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, icuCanonicalName:Ljava/lang/String;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f

    :cond_d
    move-object v4, v5

    .line 57
    :goto_e
    return-object v4

    .line 48
    :cond_f
    :try_start_f
    invoke-static {v2}, Lcom/ibm/icu4jni/charset/NativeConverter;->openConverter(Ljava/lang/String;)J

    move-result-wide v0

    .line 49
    .local v0, cn:J
    invoke-static {v0, v1}, Lcom/ibm/icu4jni/charset/NativeConverter;->closeConverter(J)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_16} :catch_1b

    .line 57
    invoke-direct {p0, v2}, Lcom/ibm/icu4jni/charset/CharsetProviderICU;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    goto :goto_e

    .line 50
    .end local v0           #cn:J
    :catch_1b
    move-exception v4

    move-object v3, v4

    .local v3, re:Ljava/lang/RuntimeException;
    move-object v4, v5

    .line 53
    goto :goto_e
.end method

.method public final charsets()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 113
    invoke-static {}, Lcom/ibm/icu4jni/charset/NativeConverter;->getAvailable()[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, charsets:[Ljava/lang/String;
    new-instance v1, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu4jni/charset/CharsetProviderICU$CharsetIterator;-><init>(Lcom/ibm/icu4jni/charset/CharsetProviderICU;[Ljava/lang/String;)V

    .line 115
    .local v1, iter:Ljava/util/Iterator;
    return-object v1
.end method

.method public final putCharsets(Ljava/util/Map;)V
    .registers 6
    .parameter "map"

    .prologue
    .line 72
    invoke-static {}, Lcom/ibm/icu4jni/charset/NativeConverter;->getAvailable()[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, charsets:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_1e

    .line 75
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 76
    aget-object v2, v0, v1

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/ibm/icu4jni/charset/CharsetProviderICU;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 79
    :cond_1e
    return-void
.end method
