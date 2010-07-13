.class public Lorg/apache/harmony/luni/platform/PlatformAddress;
.super Ljava/lang/Object;
.source "PlatformAddress.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/ICommonDataTypes;
.implements Ljava/lang/Comparable;


# static fields
.field public static final NULL:Lorg/apache/harmony/luni/platform/PlatformAddress; = null

#the value of this static final field might be set in the static constructor
.field static final SIZEOF:I = 0x0

.field static final UNKNOWN:J = -0x1L

.field public static final memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

.field static final osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;


# instance fields
.field final osaddr:I

.field final size:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 34
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getPointerSize()I

    move-result v0

    sput v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->SIZEOF:I

    .line 39
    new-instance v0, Lorg/apache/harmony/luni/platform/PlatformAddress;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;-><init>(IJ)V

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 41
    new-instance v0, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/RuntimeMemorySpy;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    .line 43
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    return-void
.end method

.method constructor <init>(IJ)V
    .registers 4
    .parameter "address"
    .parameter "size"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    .line 54
    iput-wide p2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    .line 55
    return-void
.end method


# virtual methods
.method public final autoFree()V
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, p0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->autoFree(Lorg/apache/harmony/luni/platform/PlatformAddress;)V

    .line 66
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 272
    if-nez p1, :cond_8

    .line 273
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 275
    :cond_8
    instance-of v1, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    if-eqz v1, :cond_1e

    .line 276
    check-cast p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    .end local p1
    iget v0, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    .line 277
    .local v0, otherPA:I
    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    if-ne v1, v0, :cond_16

    .line 278
    const/4 v1, 0x0

    .line 280
    :goto_15
    return v1

    :cond_16
    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    if-ge v1, v0, :cond_1c

    const/4 v1, -0x1

    goto :goto_15

    :cond_1c
    const/4 v1, 0x1

    goto :goto_15

    .line 283
    .end local v0           #otherPA:I
    .restart local p1
    :cond_1e
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
.end method

.method public duplicate()Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 4

    .prologue
    .line 69
    iget v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 87
    instance-of v0, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/apache/harmony/luni/platform/PlatformAddress;

    .end local p1
    iget v0, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public free()V
    .registers 3

    .prologue
    .line 102
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    invoke-interface {v0, p0}, Lorg/apache/harmony/luni/platform/IMemorySpy;->free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->free(I)V

    .line 105
    :cond_f
    return-void
.end method

.method public final getAddress(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 4
    .parameter "offset"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->getInt(I)I

    move-result v0

    .line 113
    .local v0, addr:I
    invoke-static {v0}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(I)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    return-object v1
.end method

.method public final getByte(I)B
    .registers 4
    .parameter "offset"

    .prologue
    .line 143
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 144
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getByte(I)B

    move-result v0

    return v0
.end method

.method public final getByteArray(I[BII)V
    .registers 7
    .parameter "offset"
    .parameter "bytes"
    .parameter "bytesOffset"
    .parameter "length"

    .prologue
    .line 149
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    mul-int/lit8 v1, p4, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 150
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getByteArray(I[BII)V

    .line 151
    return-void
.end method

.method public final getDouble(I)D
    .registers 4
    .parameter "offset"

    .prologue
    .line 249
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 250
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 244
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 245
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat(I)F
    .registers 4
    .parameter "offset"

    .prologue
    .line 229
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 230
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 224
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 225
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .registers 4
    .parameter "offset"

    .prologue
    .line 189
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 190
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getInt(ILorg/apache/harmony/luni/platform/Endianness;)I
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 184
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 185
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getInt(ILorg/apache/harmony/luni/platform/Endianness;)I

    move-result v0

    return v0
.end method

.method public final getLong(I)J
    .registers 4
    .parameter "offset"

    .prologue
    .line 209
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 210
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong(ILorg/apache/harmony/luni/platform/Endianness;)J
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 204
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 205
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getLong(ILorg/apache/harmony/luni/platform/Endianness;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getShort(I)S
    .registers 4
    .parameter "offset"

    .prologue
    .line 169
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 170
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final getShort(ILorg/apache/harmony/luni/platform/Endianness;)S
    .registers 5
    .parameter "offset"
    .parameter "order"

    .prologue
    .line 164
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 165
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->getShort(ILorg/apache/harmony/luni/platform/Endianness;)S

    move-result v0

    return v0
.end method

.method public final getSize()J
    .registers 3

    .prologue
    .line 268
    iget-wide v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    return-wide v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    return v0
.end method

.method public final isNULL()Z
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->NULL:Lorg/apache/harmony/luni/platform/PlatformAddress;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final moveTo(Lorg/apache/harmony/luni/platform/PlatformAddress;J)V
    .registers 7
    .parameter "dest"
    .parameter "numBytes"

    .prologue
    .line 83
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    iget v2, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->memmove(IIJ)V

    .line 84
    return-void
.end method

.method public offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 7
    .parameter "offset"

    .prologue
    .line 73
    iget v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v0, p1

    iget-wide v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/luni/platform/PlatformAddressFactory;->on(IJ)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method public final setAddress(ILorg/apache/harmony/luni/platform/PlatformAddress;)V
    .registers 6
    .parameter "offset"
    .parameter "address"

    .prologue
    .line 108
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    iget v2, p2, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setAddress(II)V

    .line 109
    return-void
.end method

.method public final setByte(IB)V
    .registers 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 117
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 118
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setByte(IB)V

    .line 119
    return-void
.end method

.method public final setByteArray(I[BII)V
    .registers 7
    .parameter "offset"
    .parameter "bytes"
    .parameter "bytesOffset"
    .parameter "length"

    .prologue
    .line 123
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    mul-int/lit8 v1, p4, 0x1

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 124
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setByteArray(I[BII)V

    .line 125
    return-void
.end method

.method public final setDouble(ID)V
    .registers 6
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 239
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 240
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setDouble(ID)V

    .line 241
    return-void
.end method

.method public final setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 7
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 234
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 235
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V

    .line 236
    return-void
.end method

.method public final setFloat(IF)V
    .registers 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 219
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 220
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setFloat(IF)V

    .line 221
    return-void
.end method

.method public final setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 214
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 215
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V

    .line 216
    return-void
.end method

.method public final setInt(II)V
    .registers 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 179
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 180
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setInt(II)V

    .line 181
    return-void
.end method

.method public final setInt(IILorg/apache/harmony/luni/platform/Endianness;)V
    .registers 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 174
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 175
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setInt(IILorg/apache/harmony/luni/platform/Endianness;)V

    .line 176
    return-void
.end method

.method public final setIntArray(I[IIIZ)V
    .registers 12
    .parameter "offset"
    .parameter "ints"
    .parameter "intsOffset"
    .parameter "length"
    .parameter "swap"

    .prologue
    .line 137
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    mul-int/lit8 v1, p4, 0x4

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 138
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setIntArray(I[IIIZ)V

    .line 139
    return-void
.end method

.method public final setLong(IJ)V
    .registers 6
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 199
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 200
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setLong(IJ)V

    .line 201
    return-void
.end method

.method public final setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 7
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 194
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/16 v1, 0x8

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 195
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V

    .line 196
    return-void
.end method

.method public final setShort(IS)V
    .registers 5
    .parameter "offset"
    .parameter "value"

    .prologue
    .line 159
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 160
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setShort(IS)V

    .line 161
    return-void
.end method

.method public final setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 6
    .parameter "offset"
    .parameter "value"
    .parameter "order"

    .prologue
    .line 154
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    const/4 v1, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 155
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V

    .line 156
    return-void
.end method

.method public final setShortArray(I[SIIZ)V
    .registers 12
    .parameter "offset"
    .parameter "shorts"
    .parameter "shortsOffset"
    .parameter "length"
    .parameter "swap"

    .prologue
    .line 130
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->memorySpy:Lorg/apache/harmony/luni/platform/IMemorySpy;

    mul-int/lit8 v1, p4, 0x2

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/harmony/luni/platform/IMemorySpy;->rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    .line 131
    sget-object v0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osMemory:Lorg/apache/harmony/luni/platform/IMemorySystem;

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    add-int/2addr v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/IMemorySystem;->setShortArray(I[SIIZ)V

    .line 133
    return-void
.end method

.method public final toInt()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    return v0
.end method

.method public final toLong()J
    .registers 3

    .prologue
    .line 260
    iget v0, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformAddress["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/luni/platform/PlatformAddress;->osaddr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
