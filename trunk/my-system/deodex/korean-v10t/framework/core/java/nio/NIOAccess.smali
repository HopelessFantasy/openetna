.class Ljava/nio/NIOAccess;
.super Ljava/lang/Object;
.source "NIOAccess.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBaseArray(Ljava/nio/Buffer;)Ljava/lang/Object;
    .registers 2
    .parameter "b"

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/nio/Buffer;->_array()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getBaseArrayOffset(Ljava/nio/Buffer;)I
    .registers 3
    .parameter "b"

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/nio/Buffer;->_arrayOffset()I

    move-result v0

    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v0, v1

    return v0
.end method

.method static getBasePointer(Ljava/nio/Buffer;)J
    .registers 6
    .parameter "b"

    .prologue
    const-wide/16 v3, 0x0

    .line 40
    instance-of v2, p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-eqz v2, :cond_20

    .line 41
    move-object v0, p0

    check-cast v0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    .line 42
    .local v1, address:Lorg/apache/harmony/luni/platform/PlatformAddress;
    if-nez v1, :cond_12

    move-wide v2, v3

    .line 47
    .end local v1           #address:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :goto_11
    return-wide v2

    .line 45
    .restart local v1       #address:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :cond_12
    invoke-virtual {v1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    iget v4, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-long v2, v2

    goto :goto_11

    .end local v1           #address:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :cond_20
    move-wide v2, v3

    .line 47
    goto :goto_11
.end method

.method static getRemainingBytes(Ljava/nio/Buffer;)I
    .registers 3
    .parameter "b"

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    iget v1, p0, Ljava/nio/Buffer;->position:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    shl-int/2addr v0, v1

    return v0
.end method
