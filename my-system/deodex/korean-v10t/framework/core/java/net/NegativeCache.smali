.class Ljava/net/NegativeCache;
.super Ljava/util/LinkedHashMap;
.source "NegativeCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final LOADING:F = 0.75f

.field private static final MAX_NEGATIVE_ENTRIES:I = 0x5

.field private static negCache:Ljava/net/NegativeCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/NegativeCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/NegCacheElement;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(IFZ)V
    .registers 4
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "accessOrder"

    .prologue
    .line 54
    .local p0, this:Ljava/net/NegativeCache;,"Ljava/net/NegativeCache<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 55
    return-void
.end method

.method static declared-synchronized checkCacheExists()V
    .registers 5

    .prologue
    .line 158
    const-class v0, Ljava/net/NegativeCache;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljava/net/NegativeCache;->negCache:Ljava/net/NegativeCache;

    if-nez v1, :cond_12

    .line 165
    new-instance v1, Ljava/net/NegativeCache;

    const/4 v2, 0x6

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/net/NegativeCache;-><init>(IFZ)V

    sput-object v1, Ljava/net/NegativeCache;->negCache:Ljava/net/NegativeCache;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 168
    :cond_12
    monitor-exit v0

    return-void

    .line 158
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getFailedMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "hostName"

    .prologue
    .line 104
    const-class v5, Ljava/net/NegativeCache;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Ljava/net/NegativeCache;->checkCacheExists()V

    .line 105
    sget-object v6, Ljava/net/NegativeCache;->negCache:Ljava/net/NegativeCache;

    invoke-virtual {v6, p0}, Ljava/net/NegativeCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NegCacheElement;

    .line 106
    .local v2, element:Ljava/net/NegCacheElement;
    if-eqz v2, :cond_31

    .line 108
    new-instance v6, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v7, "networkaddress.cache.negative.ttl"

    invoke-direct {v6, v7}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_54

    .line 111
    .local v4, ttlValue:Ljava/lang/String;
    const/16 v3, 0xa

    .line 113
    .local v3, ttl:I
    if-eqz v4, :cond_29

    .line 114
    :try_start_21
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_54
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_28} :catch_57

    move-result v3

    .line 118
    :cond_29
    :goto_29
    if-nez v3, :cond_37

    .line 119
    :try_start_2b
    sget-object v6, Ljava/net/NegativeCache;->negCache:Ljava/net/NegativeCache;

    invoke-virtual {v6}, Ljava/net/NegativeCache;->clear()V

    .line 120
    const/4 v2, 0x0

    .line 132
    .end local v3           #ttl:I
    .end local v4           #ttlValue:Ljava/lang/String;
    :cond_31
    :goto_31
    if-eqz v2, :cond_52

    .line 135
    iget-object v6, v2, Ljava/net/NegCacheElement;->hostName:Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_54

    .line 138
    :goto_35
    monitor-exit v5

    return-object v6

    .line 121
    .restart local v3       #ttl:I
    .restart local v4       #ttlValue:Ljava/lang/String;
    :cond_37
    const/4 v6, -0x1

    if-eq v3, v6, :cond_31

    .line 123
    :try_start_3a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, v2, Ljava/net/NegCacheElement;->nanoTimeAdded:J

    sub-long v0, v6, v8

    .line 124
    .local v0, delta:J
    invoke-static {v3}, Ljava/net/NegativeCache;->secondsToNanos(I)I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_31

    .line 126
    sget-object v6, Ljava/net/NegativeCache;->negCache:Ljava/net/NegativeCache;

    invoke-virtual {v6, p0}, Ljava/net/NegativeCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_54

    .line 127
    const/4 v2, 0x0

    goto :goto_31

    .line 138
    .end local v0           #delta:J
    .end local v3           #ttl:I
    .end local v4           #ttlValue:Ljava/lang/String;
    :cond_52
    const/4 v6, 0x0

    goto :goto_35

    .line 104
    .end local v2           #element:Ljava/net/NegCacheElement;
    :catchall_54
    move-exception v6

    monitor-exit v5

    throw v6

    .line 116
    .restart local v2       #element:Ljava/net/NegCacheElement;
    .restart local v3       #ttl:I
    .restart local v4       #ttlValue:Ljava/lang/String;
    :catch_57
    move-exception v6

    goto :goto_29
.end method

.method static declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "hostName"
    .parameter "failedMessage"

    .prologue
    .line 86
    const-class v0, Ljava/net/NegativeCache;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/net/NegativeCache;->checkCacheExists()V

    .line 87
    sget-object v1, Ljava/net/NegativeCache;->negCache:Ljava/net/NegativeCache;

    new-instance v2, Ljava/net/NegCacheElement;

    invoke-direct {v2, p1}, Ljava/net/NegCacheElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Ljava/net/NegativeCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 88
    monitor-exit v0

    return-void

    .line 86
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static secondsToNanos(I)I
    .registers 2
    .parameter "ttl"

    .prologue
    .line 146
    const v0, 0x3b9aca00

    mul-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Ljava/net/NegativeCache;,"Ljava/net/NegativeCache<TK;TV;>;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Ljava/net/NegativeCache;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
