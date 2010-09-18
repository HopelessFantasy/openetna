.class public Lorg/apache/harmony/luni/platform/PlatformAddressFactory;
.super Ljava/lang/Object;
.source "PlatformAddressFactory.java"


# static fields
.field private static final CACHE_MASK:I = 0xff

.field private static final CACHE_SIZE:I = 0x100

.field private static final MAX_PROBES:I = 0x5

.field private static cache:[Lorg/apache/harmony/luni/platform/PlatformAddress;

.field private static replacementIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->replacementIndex:I

    .line 55
    const/16 v0, 0x100

    new-array v0, v0, [Lorg/apache/harmony/luni/platform/PlatformAddress;

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->cache:[Lorg/apache/harmony/luni/platform/PlatformAddress;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alloc(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 5
    .parameter "size"

    .prologue
    .line 120
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    invoke-interface {v2, p0}, Lorg/apache/harmony/luni/platform/IMemorySystem;->malloc(I)I

    move-result v1

    .line 130
    .local v1, osAddress:I
    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->make(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 132
    .local v0, newMemory:Lorg/apache/harmony/luni/platform/PlatformAddress;
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v2, v0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 133
    return-object v0
.end method

.method public static alloc(IB)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 7
    .parameter "size"
    .parameter "init"

    .prologue
    .line 145
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    invoke-interface {v2, p0}, Lorg/apache/harmony/luni/platform/IMemorySystem;->malloc(I)I

    move-result v1

    .line 146
    .local v1, osAddress:I
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    int-to-long v3, p0

    invoke-interface {v2, v1, p1, v3, v4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->memset(IBJ)V

    .line 149
    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->make(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 151
    .local v0, newMemory:Lorg/apache/harmony/luni/platform/PlatformAddress;
    sget-object v2, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v2, v0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 152
    return-object v0
.end method

.method public static allocMap(IJJI)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 15
    .parameter "fd"
    .parameter "start"
    .parameter "size"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/harmony/luni/platform/IMemorySystem;->mmap(IJJI)I

    move-result v8

    .line 108
    .local v8, osAddress:I
    invoke-static {v8, p3, p4}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(IJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v7

    .line 109
    .local v7, newMemory:Lorg/apache/harmony/luni/platform/PlatformAddress;
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, v7}, Lorg/apache/harmony/luni/platform/IMemorySpy;->alloc(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 110
    return-object v7
.end method

.method private static make(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 4
    .parameter "value"
    .parameter "size"

    .prologue
    .line 67
    if-nez p0, :cond_5

    .line 68
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 71
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(IJ)V

    goto :goto_4
.end method

.method public static mapOn(IJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;
    .registers 4
    .parameter "value"
    .parameter "size"

    .prologue
    .line 102
    new-instance v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;-><init>(IJ)V

    .line 103
    .local v0, addr:Lorg/apache/harmony/luni/platform/MappedPlatformAddress;
    return-object v0
.end method

.method public static on(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 3
    .parameter "value"

    .prologue
    .line 98
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized on(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 10
    .parameter "value"
    .parameter "size"

    .prologue
    .line 77
    const-class v3, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;

    monitor-enter v3

    if-nez p0, :cond_9

    .line 78
    :try_start_5
    sget-object v4, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4f

    .line 92
    :goto_7
    monitor-exit v3

    return-object v4

    .line 80
    :cond_9
    shr-int/lit8 v1, p0, 0x5

    .line 81
    .local v1, idx:I
    const/4 v2, 0x0

    .local v2, probe:I
    :goto_c
    const/4 v4, 0x5

    if-ge v2, v4, :cond_37

    .line 82
    :try_start_f
    sget-object v4, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->cache:[Lorg/apache/harmony/luni/platform/PlatformAddress;

    add-int v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    aget-object v0, v4, v5

    .line 83
    .local v0, cachedObj:Lorg/apache/harmony/luni/platform/PlatformAddress;
    if-nez v0, :cond_28

    .line 84
    sget-object v4, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->cache:[Lorg/apache/harmony/luni/platform/PlatformAddress;

    add-int v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    new-instance v6, Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-direct {v6, p0, p1, p2}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(IJ)V

    aput-object v6, v4, v5

    move-object v4, v6

    goto :goto_7

    .line 87
    :cond_28
    iget v4, v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    if-ne v4, p0, :cond_34

    iget-wide v4, v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_34

    move-object v4, v0

    .line 88
    goto :goto_7

    .line 81
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 91
    .end local v0           #cachedObj:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :cond_37
    sget v4, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->replacementIndex:I

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v4, v4, 0x5

    sput v4, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->replacementIndex:I

    .line 92
    sget-object v4, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->cache:[Lorg/apache/harmony/luni/platform/PlatformAddress;

    sget v5, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->replacementIndex:I

    add-int/2addr v5, v1

    and-int/lit16 v5, v5, 0xff

    new-instance v6, Lorg/apache/harmony/luni/platform/PlatformAddress;

    invoke-direct {v6, p0, p1, p2}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(IJ)V

    aput-object v6, v4, v5
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_4f

    move-object v4, v6

    goto :goto_7

    .line 77
    .end local v1           #idx:I
    .end local v2           #probe:I
    :catchall_4f
    move-exception v4

    monitor-exit v3

    throw v4
.end method
