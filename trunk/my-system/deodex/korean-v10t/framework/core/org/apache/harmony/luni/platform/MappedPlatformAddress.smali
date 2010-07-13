.class public Lorg/apache/harmony/luni/platform/MappedPlatformAddress;
.super Lorg/apache/harmony/luni/platform/PlatformAddress;
.source "MappedPlatformAddress.java"


# direct methods
.method constructor <init>(IJ)V
    .registers 4
    .parameter "address"
    .parameter "size"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(IJ)V

    .line 27
    return-void
.end method


# virtual methods
.method public duplicate()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 4

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:I

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(IJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final free()V
    .registers 5

    .prologue
    .line 45
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, p0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:I

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->unmap(IJ)V

    .line 48
    :cond_11
    return-void
.end method

.method public final mmapFlush()V
    .registers 5

    .prologue
    .line 40
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 41
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:I

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->flush(IJ)V

    .line 42
    return-void
.end method

.method public final mmapIsLoaded()Z
    .registers 5

    .prologue
    .line 35
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 36
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:I

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->isLoaded(IJ)Z

    move-result v0

    return v0
.end method

.method public final mmapLoad()V
    .registers 5

    .prologue
    .line 30
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 31
    sget-object v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:I

    iget-wide v2, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->load(IJ)V

    .line 32
    return-void
.end method

.method public final offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 7
    .parameter "offset"

    .prologue
    .line 55
    iget v0, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->osaddr:I

    add-int/2addr v0, p1

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->size:J

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->mapOn(IJ)Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    move-result-object v0

    return-object v0
.end method
