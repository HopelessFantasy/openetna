.class public abstract Ljava/nio/charset/Charset;
.super Ljava/lang/Object;
.source "Charset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/charset/Charset$IgnoreCaseComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROVIDER_CONFIGURATION_FILE_COMMENT:Ljava/lang/String; = "#"

.field private static final PROVIDER_CONFIGURATION_FILE_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final PROVIDER_CONFIGURATION_FILE_NAME:Ljava/lang/String; = "META-INF/services/java.nio.charset.spi.CharsetProvider"

.field private static _builtInCharsets:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static _builtInProvider:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

.field private static cachedCharsetDecoderTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedCharsetEncoderTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedCharsetTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static systemClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field private final aliasesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final canonicalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-object v0, Ljava/nio/charset/Charset;->_builtInProvider:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    .line 115
    sput-object v0, Ljava/nio/charset/Charset;->_builtInCharsets:Ljava/util/TreeMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cachedCharsetTable:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cachedCharsetDecoderTable:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/nio/charset/Charset;->cachedCharsetEncoderTable:Ljava/util/HashMap;

    .line 147
    new-instance v0, Ljava/nio/charset/Charset$1;

    invoke-direct {v0}, Ljava/nio/charset/Charset$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    sput-object v0, Ljava/nio/charset/Charset;->_builtInProvider:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    .line 153
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "canonicalName"
    .parameter "aliases"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    if-nez p1, :cond_b

    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 182
    :cond_b
    invoke-static {p1}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    .line 186
    if-eqz p2, :cond_2c

    .line 187
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    array-length v1, p2

    if-ge v0, v1, :cond_2c

    .line 188
    aget-object v1, p2, v0

    invoke-static {v1}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 192
    .end local v0           #i:I
    :cond_2c
    return-void
.end method

.method private static addCharsets(Ljava/nio/charset/spi/CharsetProvider;Ljava/util/TreeMap;)V
    .registers 5
    .parameter "cp"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/spi/CharsetProvider;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, charsets:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-virtual {p0}, Ljava/nio/charset/spi/CharsetProvider;->charsets()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/charset/Charset;>;"
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 285
    .local v0, cs:Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 286
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 289
    .end local v0           #cs:Ljava/nio/charset/Charset;
    :cond_22
    return-void
.end method

.method public static availableCharsets()Ljava/util/SortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v3, "META-INF/services/java.nio.charset.spi.CharsetProvider"

    .line 375
    sget-object v3, Ljava/nio/charset/Charset;->_builtInCharsets:Ljava/util/TreeMap;

    if-nez v3, :cond_20

    .line 376
    const-class v3, Ljava/nio/charset/Charset;

    monitor-enter v3

    .line 377
    :try_start_9
    sget-object v4, Ljava/nio/charset/Charset;->_builtInCharsets:Ljava/util/TreeMap;

    if-nez v4, :cond_1f

    .line 378
    new-instance v4, Ljava/util/TreeMap;

    invoke-static {}, Ljava/nio/charset/Charset$IgnoreCaseComparator;->getInstance()Ljava/util/Comparator;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v4, Ljava/nio/charset/Charset;->_builtInCharsets:Ljava/util/TreeMap;

    .line 380
    sget-object v4, Ljava/nio/charset/Charset;->_builtInProvider:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    sget-object v5, Ljava/nio/charset/Charset;->_builtInCharsets:Ljava/util/TreeMap;

    invoke-virtual {v4, v5}, Lcom/ibm/icu4jni/charset/CharsetProviderICU;->putCharsets(Ljava/util/Map;)V

    .line 382
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_4b

    .line 386
    :cond_20
    sget-object v3, Ljava/nio/charset/Charset;->_builtInCharsets:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 390
    .local v0, charsets:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-static {}, Ljava/nio/charset/Charset;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 391
    .local v1, contextClassLoader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 393
    .local v2, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-eqz v1, :cond_4e

    .line 394
    :try_start_2f
    const-string v3, "META-INF/services/java.nio.charset.spi.CharsetProvider"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 402
    :goto_35
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 403
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-static {v3, v1, v0}, Ljava/nio/charset/Charset;->loadConfiguredCharsets(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/util/TreeMap;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_44} :catch_45

    goto :goto_35

    .line 406
    :catch_45
    move-exception v3

    .line 409
    :cond_46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v3

    return-object v3

    .line 382
    .end local v0           #charsets:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    .end local v1           #contextClassLoader:Ljava/lang/ClassLoader;
    .end local v2           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catchall_4b
    move-exception v4

    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v4

    .line 397
    .restart local v0       #charsets:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    .restart local v1       #contextClassLoader:Ljava/lang/ClassLoader;
    .restart local v2       #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_4e
    :try_start_4e
    invoke-static {}, Ljava/nio/charset/Charset;->getSystemClassLoader()V

    .line 398
    sget-object v3, Ljava/nio/charset/Charset;->systemClassLoader:Ljava/lang/ClassLoader;

    const-string v4, "META-INF/services/java.nio.charset.spi.CharsetProvider"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_58} :catch_45

    move-result-object v2

    goto :goto_35
.end method

.method private static cacheCharset(Ljava/nio/charset/Charset;)V
    .registers 6
    .parameter "cs"

    .prologue
    .line 538
    sget-object v3, Ljava/nio/charset/Charset;->cachedCharsetTable:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v1

    .line 540
    .local v1, aliasesSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_25

    .line 541
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 542
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 543
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 544
    .local v0, alias:Ljava/lang/String;
    sget-object v3, Ljava/nio/charset/Charset;->cachedCharsetTable:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 547
    .end local v0           #alias:Ljava/lang/String;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_25
    return-void
.end method

.method private static checkCharsetName(Ljava/lang/String;)V
    .registers 5
    .parameter "name"

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    .line 231
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 241
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_32

    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 243
    .local v0, c:C
    invoke-static {v0}, Ljava/nio/charset/Charset;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {v0}, Ljava/nio/charset/Charset;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSpecial(C)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 244
    new-instance v3, Ljava/nio/charset/IllegalCharsetNameException;

    invoke-direct {v3, p0}, Ljava/nio/charset/IllegalCharsetNameException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 247
    .end local v0           #c:C
    :cond_32
    return-void
.end method

.method public static defaultCharset()Ljava/nio/charset/Charset;
    .registers 4

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, defaultCharset:Ljava/nio/charset/Charset;
    new-instance v3, Ljava/nio/charset/Charset$4;

    invoke-direct {v3}, Ljava/nio/charset/Charset$4;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 874
    .local v2, encoding:Ljava/lang/String;
    :try_start_c
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_f
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v0

    .line 878
    :goto_10
    return-object v0

    .line 875
    :catch_11
    move-exception v1

    .line 876
    .local v1, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_10
.end method

.method public static forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/IllegalCharsetNameException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p0}, Ljava/nio/charset/Charset;->forNameInternal(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 571
    .local v0, c:Ljava/nio/charset/Charset;
    if-nez v0, :cond_c

    .line 572
    new-instance v1, Ljava/nio/charset/UnsupportedCharsetException;

    invoke-direct {v1, p0}, Ljava/nio/charset/UnsupportedCharsetException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_c
    return-object v0
.end method

.method private static forNameInternal(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 7
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    const-string v3, "META-INF/services/java.nio.charset.spi.CharsetProvider"

    .line 489
    if-nez p0, :cond_a

    .line 490
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 492
    :cond_a
    invoke-static {p0}, Ljava/nio/charset/Charset;->checkCharsetName(Ljava/lang/String;)V

    .line 493
    const-class v4, Ljava/nio/charset/Charset;

    monitor-enter v4

    .line 495
    :try_start_10
    invoke-static {p0}, Ljava/nio/charset/Charset;->getCachedCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 496
    .local v1, cs:Ljava/nio/charset/Charset;
    if-eqz v1, :cond_19

    .line 497
    monitor-exit v4

    move-object v3, v1

    .line 531
    :goto_18
    return-object v3

    .line 500
    :cond_19
    sget-object v3, Ljava/nio/charset/Charset;->_builtInProvider:Lcom/ibm/icu4jni/charset/CharsetProviderICU;

    invoke-virtual {v3, p0}, Lcom/ibm/icu4jni/charset/CharsetProviderICU;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_27

    .line 502
    invoke-static {v1}, Ljava/nio/charset/Charset;->cacheCharset(Ljava/nio/charset/Charset;)V

    .line 503
    monitor-exit v4

    move-object v3, v1

    goto :goto_18

    .line 507
    :cond_27
    invoke-static {}, Ljava/nio/charset/Charset;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_5c

    move-result-object v0

    .line 508
    .local v0, contextClassLoader:Ljava/lang/ClassLoader;
    const/4 v2, 0x0

    .line 510
    .local v2, e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-eqz v0, :cond_4c

    .line 511
    :try_start_2e
    const-string v3, "META-INF/services/java.nio.charset.spi.CharsetProvider"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 519
    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 520
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    invoke-static {p0, v0, v3}, Ljava/nio/charset/Charset;->searchConfiguredCharsets(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_34

    .line 523
    invoke-static {v1}, Ljava/nio/charset/Charset;->cacheCharset(Ljava/nio/charset/Charset;)V
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_49} :catch_58

    .line 524
    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5c

    move-object v3, v1

    goto :goto_18

    .line 514
    :cond_4c
    :try_start_4c
    invoke-static {}, Ljava/nio/charset/Charset;->getSystemClassLoader()V

    .line 515
    sget-object v3, Ljava/nio/charset/Charset;->systemClassLoader:Ljava/lang/ClassLoader;

    const-string v5, "META-INF/services/java.nio.charset.spi.CharsetProvider"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_5c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_56} :catch_58

    move-result-object v2

    goto :goto_34

    .line 527
    :catch_58
    move-exception v3

    .line 530
    :cond_59
    :try_start_59
    monitor-exit v4

    .line 531
    const/4 v3, 0x0

    goto :goto_18

    .line 530
    .end local v0           #contextClassLoader:Ljava/lang/ClassLoader;
    .end local v1           #cs:Ljava/nio/charset/Charset;
    .end local v2           #e:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :catchall_5c
    move-exception v3

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_5c

    throw v3
.end method

.method private static getCachedCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2
    .parameter "name"

    .prologue
    .line 553
    sget-object v0, Ljava/nio/charset/Charset;->cachedCharsetTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private getCachedCharsetDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;
    .registers 5
    .parameter "name"

    .prologue
    .line 779
    sget-object v1, Ljava/nio/charset/Charset;->cachedCharsetDecoderTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 780
    :try_start_3
    sget-object v2, Ljava/nio/charset/Charset;->cachedCharsetDecoderTable:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetDecoder;

    .line 782
    .local v0, d:Ljava/nio/charset/CharsetDecoder;
    if-nez v0, :cond_20

    .line 783
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 784
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 785
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 786
    sget-object v2, Ljava/nio/charset/Charset;->cachedCharsetDecoderTable:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_20
    monitor-exit v1

    return-object v0

    .line 789
    .end local v0           #d:Ljava/nio/charset/CharsetDecoder;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private getCachedCharsetEncoder(Ljava/lang/String;)Ljava/nio/charset/CharsetEncoder;
    .registers 5
    .parameter "name"

    .prologue
    .line 722
    sget-object v1, Ljava/nio/charset/Charset;->cachedCharsetEncoderTable:Ljava/util/HashMap;

    monitor-enter v1

    .line 723
    :try_start_3
    sget-object v2, Ljava/nio/charset/Charset;->cachedCharsetEncoderTable:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    .line 725
    .local v0, e:Ljava/nio/charset/CharsetEncoder;
    if-nez v0, :cond_20

    .line 726
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 727
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 728
    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 729
    sget-object v2, Ljava/nio/charset/Charset;->cachedCharsetEncoderTable:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :cond_20
    monitor-exit v1

    return-object v0

    .line 732
    .end local v0           #e:Ljava/nio/charset/CharsetEncoder;
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 254
    .local v0, t:Ljava/lang/Thread;
    new-instance v1, Ljava/nio/charset/Charset$2;

    invoke-direct {v1, v0}, Ljava/nio/charset/Charset$2;-><init>(Ljava/lang/Thread;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #t:Ljava/lang/Thread;
    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method private static getSystemClassLoader()V
    .registers 1

    .prologue
    .line 266
    sget-object v0, Ljava/nio/charset/Charset;->systemClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_11

    .line 267
    new-instance v0, Ljava/nio/charset/Charset$3;

    invoke-direct {v0}, Ljava/nio/charset/Charset$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    sput-object v0, Ljava/nio/charset/Charset;->systemClassLoader:Ljava/lang/ClassLoader;

    .line 274
    :cond_11
    return-void
.end method

.method private static isDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 221
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isLetter(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 213
    const/16 v0, 0x61

    if-gt v0, p0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-gt v0, p0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isSpecial(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 205
    const/16 v0, 0x2d

    if-eq v0, p0, :cond_10

    const/16 v0, 0x2e

    if-eq v0, p0, :cond_10

    const/16 v0, 0x3a

    if-eq v0, p0, :cond_10

    const/16 v0, 0x5f

    if-ne v0, p0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 3
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {p0}, Ljava/nio/charset/Charset;->forNameInternal(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 590
    .local v0, cs:Ljava/nio/charset/Charset;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static loadConfiguredCharsets(Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/util/TreeMap;)V
    .registers 13
    .parameter "configFile"
    .parameter "contextClassLoader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, charsets:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    const/4 v6, 0x0

    .line 312
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 315
    .local v4, is:Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v9, 0x2000

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_66
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_74

    .line 318
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_13
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, providerClassName:Ljava/lang/String;
    :goto_17
    if-eqz v5, :cond_5c

    .line 320
    invoke-static {v5}, Ljava/nio/charset/Charset;->trimClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-virtual {v5}, Ljava/lang/String;->length()I
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_71
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_20} :catch_54

    move-result v8

    if-lez v8, :cond_32

    .line 324
    const/4 v1, 0x0

    .line 326
    .local v1, cp:Ljava/lang/Object;
    const/4 v8, 0x1

    :try_start_25
    invoke-static {v5, v8, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 328
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_37
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_54

    move-result-object v1

    .line 342
    :goto_2d
    :try_start_2d
    check-cast v1, Ljava/nio/charset/spi/CharsetProvider;

    .end local v1           #cp:Ljava/lang/Object;
    invoke-static {v1, p2}, Ljava/nio/charset/Charset;->addCharsets(Ljava/nio/charset/spi/CharsetProvider;Ljava/util/TreeMap;)V

    .line 345
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_32
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_71
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_35} :catch_54

    move-result-object v5

    goto :goto_17

    .line 329
    .restart local v1       #cp:Ljava/lang/Object;
    :catch_37
    move-exception v8

    move-object v3, v8

    .line 333
    .local v3, ex:Ljava/lang/Exception;
    :try_start_39
    invoke-static {}, Ljava/nio/charset/Charset;->getSystemClassLoader()V

    .line 334
    const/4 v8, 0x1

    sget-object v9, Ljava/nio/charset/Charset;->systemClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v5, v8, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 336
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_48
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_46} :catch_54

    move-result-object v1

    goto :goto_2d

    .line 337
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_48
    move-exception v8

    move-object v2, v8

    .line 338
    .local v2, e:Ljava/lang/Exception;
    :try_start_4a
    new-instance v8, Ljava/lang/Error;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_71
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_54} :catch_54

    .line 347
    .end local v1           #cp:Ljava/lang/Object;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #providerClassName:Ljava/lang/String;
    :catch_54
    move-exception v8

    move-object v6, v7

    .line 351
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_56
    if-eqz v6, :cond_5b

    .line 352
    :try_start_58
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6d

    .line 358
    :cond_5b
    :goto_5b
    return-void

    .line 351
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #providerClassName:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_5c
    if-eqz v7, :cond_61

    .line 352
    :try_start_5e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_63

    :cond_61
    move-object v6, v7

    .line 356
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_5b

    .line 354
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_63
    move-exception v8

    move-object v6, v7

    .line 357
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_5b

    .line 350
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #providerClassName:Ljava/lang/String;
    :catchall_66
    move-exception v8

    .line 351
    :goto_67
    if-eqz v6, :cond_6c

    .line 352
    :try_start_69
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6f

    .line 356
    :cond_6c
    :goto_6c
    throw v8

    .line 354
    :catch_6d
    move-exception v8

    goto :goto_5b

    :catch_6f
    move-exception v9

    goto :goto_6c

    .line 350
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catchall_71
    move-exception v8

    move-object v6, v7

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_67

    .line 347
    .end local v4           #is:Ljava/io/InputStream;
    :catch_74
    move-exception v8

    goto :goto_56
.end method

.method private static searchConfiguredCharsets(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/net/URL;)Ljava/nio/charset/Charset;
    .registers 15
    .parameter "charsetName"
    .parameter "contextClassLoader"
    .parameter "configFile"

    .prologue
    const/4 v11, 0x0

    .line 419
    const/4 v7, 0x0

    .line 421
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    .line 424
    .local v5, is:Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x2000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_74
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_86

    .line 427
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_14
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, providerClassName:Ljava/lang/String;
    :goto_18
    if-eqz v6, :cond_6c

    .line 429
    invoke-static {v6}, Ljava/nio/charset/Charset;->trimClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-virtual {v6}, Ljava/lang/String;->length()I
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_83
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_5d

    move-result v9

    if-lez v9, :cond_67

    .line 432
    const/4 v1, 0x0

    .line 434
    .local v1, cp:Ljava/lang/Object;
    const/4 v9, 0x1

    :try_start_26
    invoke-static {v6, v9, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 436
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_83
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_40
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_5d

    move-result-object v1

    .line 454
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #cp:Ljava/lang/Object;
    :goto_2e
    if-eqz v1, :cond_67

    .line 456
    :try_start_30
    check-cast v1, Ljava/nio/charset/spi/CharsetProvider;

    invoke-virtual {v1, p0}, Ljava/nio/charset/spi/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_83
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_5d

    move-result-object v2

    .line 458
    .local v2, cs:Ljava/nio/charset/Charset;
    if-eqz v2, :cond_67

    .line 473
    if-eqz v8, :cond_3d

    .line 474
    :try_start_3a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_7b

    :cond_3d
    :goto_3d
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    move-object v9, v2

    .line 478
    .end local v2           #cs:Ljava/nio/charset/Charset;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #providerClassName:Ljava/lang/String;
    :goto_3f
    return-object v9

    .line 437
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #cp:Ljava/lang/Object;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #providerClassName:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_40
    move-exception v9

    move-object v4, v9

    .line 441
    .local v4, ex:Ljava/lang/Exception;
    :try_start_42
    invoke-static {}, Ljava/nio/charset/Charset;->getSystemClassLoader()V

    .line 442
    const/4 v9, 0x1

    sget-object v10, Ljava/nio/charset/Charset;->systemClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v6, v9, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 444
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_83
    .catch Ljava/lang/SecurityException; {:try_start_42 .. :try_end_4f} :catch_89
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_51
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4f} :catch_5d

    move-result-object v1

    goto :goto_2e

    .line 449
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_51
    move-exception v9

    move-object v3, v9

    .line 450
    .local v3, e:Ljava/lang/Exception;
    :try_start_53
    new-instance v9, Ljava/lang/Error;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_83
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5d} :catch_5d

    .line 468
    .end local v1           #cp:Ljava/lang/Object;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v6           #providerClassName:Ljava/lang/String;
    :catch_5d
    move-exception v9

    move-object v4, v9

    move-object v7, v8

    .line 473
    .end local v5           #is:Ljava/io/InputStream;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v4, ex:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_60
    if-eqz v7, :cond_65

    .line 474
    :try_start_62
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_7f

    :cond_65
    :goto_65
    move-object v9, v11

    .line 478
    goto :goto_3f

    .line 465
    .end local v4           #ex:Ljava/io/IOException;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #providerClassName:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_67
    :try_start_67
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_83
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_5d

    move-result-object v6

    goto :goto_18

    .line 473
    :cond_6c
    if-eqz v8, :cond_71

    .line 474
    :try_start_6e
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7d

    :cond_71
    :goto_71
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    move-object v9, v11

    .line 478
    goto :goto_3f

    .line 472
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #providerClassName:Ljava/lang/String;
    :catchall_74
    move-exception v9

    .line 473
    :goto_75
    if-eqz v7, :cond_7a

    .line 474
    :try_start_77
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_81

    .line 478
    :cond_7a
    :goto_7a
    throw v9

    .line 476
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v2       #cs:Ljava/nio/charset/Charset;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #providerClassName:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_7b
    move-exception v9

    goto :goto_3d

    .end local v2           #cs:Ljava/nio/charset/Charset;
    :catch_7d
    move-exception v9

    goto :goto_71

    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #providerClassName:Ljava/lang/String;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v4       #ex:Ljava/io/IOException;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_7f
    move-exception v9

    goto :goto_65

    .end local v4           #ex:Ljava/io/IOException;
    :catch_81
    move-exception v10

    goto :goto_7a

    .line 472
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catchall_83
    move-exception v9

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_75

    .line 468
    .end local v5           #is:Ljava/io/InputStream;
    :catch_86
    move-exception v9

    move-object v4, v9

    goto :goto_60

    .line 445
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #cp:Ljava/lang/Object;
    .local v4, ex:Ljava/lang/Exception;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #providerClassName:Ljava/lang/String;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_89
    move-exception v9

    goto :goto_2e
.end method

.method private static trimClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 295
    move-object v1, p0

    .line 296
    .local v1, trimedName:Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 298
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 299
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 301
    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public final aliases()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    iget-object v0, p0, Ljava/nio/charset/Charset;->aliasesSet:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public canEncode()Z
    .registers 2

    .prologue
    .line 691
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Ljava/nio/charset/Charset;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->compareTo(Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Ljava/nio/charset/Charset;)I
    .registers 4
    .parameter "charset"

    .prologue
    .line 809
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    iget-object v1, p1, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract contains(Ljava/nio/charset/Charset;)Z
.end method

.method public final decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .registers 6
    .parameter "buffer"

    .prologue
    .line 765
    iget-object v2, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/nio/charset/Charset;->getCachedCharsetDecoder(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 767
    .local v0, d:Ljava/nio/charset/CharsetDecoder;
    :try_start_6
    monitor-enter v0
    :try_end_7
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_6 .. :try_end_7} :catch_10

    .line 768
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 769
    :catchall_d
    move-exception v2

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    :try_start_f
    throw v2
    :try_end_10
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_f .. :try_end_10} :catch_10

    .line 770
    :catch_10
    move-exception v2

    move-object v1, v2

    .line 771
    .local v1, ex:Ljava/nio/charset/CharacterCodingException;
    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public displayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public displayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .parameter "l"

    .prologue
    .line 668
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public final encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter "s"

    .prologue
    .line 748
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;
    .registers 6
    .parameter "buffer"

    .prologue
    .line 708
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/nio/charset/Charset;->getCachedCharsetEncoder(Ljava/lang/String;)Ljava/nio/charset/CharsetEncoder;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1e

    move-result-object v0

    .line 710
    .local v0, e:Ljava/nio/charset/CharsetEncoder;
    :try_start_7
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_1e
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_7 .. :try_end_8} :catch_12

    .line 711
    :try_start_8
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v2

    .line 712
    :catchall_f
    move-exception v2

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_1e
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_11 .. :try_end_12} :catch_12

    .line 713
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 714
    .local v1, ex:Ljava/nio/charset/CharacterCodingException;
    :try_start_14
    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v1}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1e

    .line 708
    .end local v0           #e:Ljava/nio/charset/CharsetEncoder;
    .end local v1           #ex:Ljava/nio/charset/CharacterCodingException;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 829
    instance-of v2, p1, Ljava/nio/charset/Charset;

    if-eqz v2, :cond_11

    .line 830
    move-object v0, p1

    check-cast v0, Ljava/nio/charset/Charset;

    move-object v1, v0

    .line 831
    .local v1, that:Ljava/nio/charset/Charset;
    iget-object v2, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    iget-object v3, v1, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 833
    .end local v1           #that:Ljava/nio/charset/Charset;
    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isRegistered()Z
    .registers 3

    .prologue
    .line 680
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    const-string v1, "x-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    const-string v1, "X-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract newDecoder()Ljava/nio/charset/CharsetDecoder;
.end method

.method public abstract newEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Charset["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/charset/Charset;->canonicalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
