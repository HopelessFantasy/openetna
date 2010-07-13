.class final Lorg/apache/harmony/luni/platform/OSMemory;
.super Lorg/apache/harmony/luni/platform/OSComponent;
.source "OSMemory.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IMemorySystem;


# static fields
.field public static final NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

.field public static final POINTER_SIZE:I

.field private static final singleton:Lorg/apache/harmony/luni/platform/OSMemory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lorg/apache/harmony/luni/platform/OSMemory;

    invoke-direct {v0}, Lorg/apache/harmony/luni/platform/OSMemory;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->singleton:Lorg/apache/harmony/luni/platform/OSMemory;

    .line 63
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSMemory;->getPointerSizeImpl()I

    move-result v0

    sput v0, Lorg/apache/harmony/luni/platform/OSMemory;->POINTER_SIZE:I

    .line 65
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSMemory;->isLittleEndianImpl()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 66
    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->LITTLE_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    sput-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    .line 70
    :goto_17
    return-void

    .line 68
    :cond_18
    sget-object v0, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    sput-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    goto :goto_17
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/harmony/luni/platform/OSComponent;-><init>()V

    .line 83
    return-void
.end method

.method private native flushImpl(IJ)I
.end method

.method public static getOSMemory()Lorg/apache/harmony/luni/platform/OSMemory;
    .registers 1

    .prologue
    .line 73
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->singleton:Lorg/apache/harmony/luni/platform/OSMemory;

    return-object v0
.end method

.method private static native getPointerSizeImpl()I
.end method

.method private static native isLittleEndianImpl()Z
.end method

.method private native isLoadedImpl(IJ)Z
.end method

.method private native loadImpl(IJ)I
.end method

.method private native mmapImpl(IJJI)I
.end method

.method private swap(I)I
    .registers 8
    .parameter "value"

    .prologue
    .line 656
    shr-int/lit8 v4, p1, 0x10

    int-to-short v1, v4

    .line 657
    .local v1, left:S
    int-to-short v2, p1

    .line 658
    .local v2, right:S
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v4

    shl-int/lit8 v3, v4, 0x10

    .line 659
    .local v3, topEnd:I
    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v4

    const v5, 0xffff

    and-int v0, v4, v5

    .line 660
    .local v0, btmEnd:I
    or-int v4, v3, v0

    return v4
.end method

.method private swap(J)J
    .registers 13
    .parameter "value"

    .prologue
    const/16 v8, 0x20

    .line 664
    shr-long v6, p1, v8

    long-to-int v2, v6

    .line 665
    .local v2, left:I
    long-to-int v3, p1

    .line 666
    .local v3, right:I
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v6

    int-to-long v6, v6

    shl-long v4, v6, v8

    .line 667
    .local v4, topEnd:J
    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long v0, v6, v8

    .line 668
    .local v0, btmEnd:J
    or-long v6, v4, v0

    return-wide v6
.end method

.method private swap(S)S
    .registers 5
    .parameter "value"

    .prologue
    .line 650
    shl-int/lit8 v1, p1, 0x8

    .line 651
    .local v1, topEnd:I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v0, v2, 0xff

    .line 652
    .local v0, btmEnd:I
    or-int v2, v1, v0

    int-to-short v2, v2

    return v2
.end method

.method private native unmapImpl(IJ)V
.end method


# virtual methods
.method public flush(IJ)V
    .registers 4
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 641
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->flushImpl(IJ)I

    .line 642
    return-void
.end method

.method public native free(I)V
.end method

.method public native getAddress(I)I
.end method

.method public native getByte(I)B
.end method

.method public native getByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native getDouble(I)D
.end method

.method public getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D
    .registers 7
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 538
    sget-object v2, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p2, v2, :cond_9

    .line 539
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getDouble(I)D

    move-result-wide v2

    .line 542
    :goto_8
    return-wide v2

    .line 541
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v0

    .line 542
    .local v0, doubleBits:J
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    goto :goto_8
.end method

.method public native getFloat(I)F
.end method

.method public getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F
    .registers 5
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 490
    sget-object v1, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p2, v1, :cond_9

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getFloat(I)F

    move-result v1

    .line 494
    :goto_8
    return v1

    .line 493
    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v0

    .line 494
    .local v0, floatBits:I
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    goto :goto_8
.end method

.method public native getInt(I)I
.end method

.method public getInt(ILorg/apache/harmony/luni/platform/Endianness;)I
    .registers 4
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 401
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p2, v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getInt(I)I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v0

    goto :goto_8
.end method

.method public native getLong(I)J
.end method

.method public getLong(ILorg/apache/harmony/luni/platform/Endianness;)J
    .registers 5
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 445
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p2, v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getLong(I)J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v0

    goto :goto_8
.end method

.method public getNativeOrder()Lorg/apache/harmony/luni/platform/Endianness;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    return-object v0
.end method

.method public getPointerSize()I
    .registers 2

    .prologue
    .line 117
    sget v0, Lorg/apache/harmony/luni/platform/OSMemory;->POINTER_SIZE:I

    return v0
.end method

.method public native getShort(I)S
.end method

.method public getShort(ILorg/apache/harmony/luni/platform/Endianness;)S
    .registers 4
    .parameter "address"
    .parameter "endianness"

    .prologue
    .line 357
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p2, v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getShort(I)S

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lorg/apache/harmony/luni/platform/OSMemory;->getShort(I)S

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v0

    goto :goto_8
.end method

.method public isLittleEndian()Z
    .registers 2

    .prologue
    .line 97
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSMemory;->isLittleEndianImpl()Z

    move-result v0

    return v0
.end method

.method public isLoaded(IJ)Z
    .registers 6
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 635
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->isLoadedImpl(IJ)Z

    move-result v0

    goto :goto_7
.end method

.method public load(IJ)V
    .registers 4
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 629
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->loadImpl(IJ)I

    .line 630
    return-void
.end method

.method public native malloc(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public native memmove(IIJ)V
.end method

.method public native memset(IBJ)V
.end method

.method public mmap(IJJI)I
    .registers 9
    .parameter "fileDescriptor"
    .parameter "alignment"
    .parameter "size"
    .parameter "mapMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/luni/platform/OSMemory;->mmapImpl(IJJI)I

    move-result v0

    .line 616
    .local v0, address:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 617
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 619
    :cond_d
    return v0
.end method

.method public native setAddress(II)V
.end method

.method public native setByte(IB)V
.end method

.method public native setByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native setDouble(ID)V
.end method

.method public setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 9
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 563
    sget-object v2, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p4, v2, :cond_8

    .line 564
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->setDouble(ID)V

    .line 569
    :goto_7
    return-void

    .line 566
    :cond_8
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 567
    .local v0, doubleBits:J
    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/harmony/luni/platform/OSMemory;->setLong(IJ)V

    goto :goto_7
.end method

.method public native setFloat(IF)V
.end method

.method public setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 6
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 514
    sget-object v1, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v1, :cond_8

    .line 515
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->setFloat(IF)V

    .line 520
    :goto_7
    return-void

    .line 517
    :cond_8
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 518
    .local v0, floatBits:I
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->setInt(II)V

    goto :goto_7
.end method

.method public native setInt(II)V
.end method

.method public setInt(IILorg/apache/harmony/luni/platform/Endianness;)V
    .registers 5
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 422
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v0, :cond_8

    .line 423
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->setInt(II)V

    .line 427
    :goto_7
    return-void

    .line 425
    :cond_8
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->setInt(II)V

    goto :goto_7
.end method

.method public native setIntArray(I[IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public native setLong(IJ)V
.end method

.method public setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 7
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 467
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p4, v0, :cond_8

    .line 468
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->setLong(IJ)V

    .line 472
    :goto_7
    return-void

    .line 470
    :cond_8
    invoke-direct {p0, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/luni/platform/OSMemory;->setLong(IJ)V

    goto :goto_7
.end method

.method public native setShort(IS)V
.end method

.method public setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V
    .registers 5
    .parameter "address"
    .parameter "value"
    .parameter "endianness"

    .prologue
    .line 378
    sget-object v0, Lorg/apache/harmony/luni/platform/OSMemory;->NATIVE_ORDER:Lorg/apache/harmony/luni/platform/Endianness;

    if-ne p3, v0, :cond_8

    .line 379
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->setShort(IS)V

    .line 383
    :goto_7
    return-void

    .line 381
    :cond_8
    invoke-direct {p0, p2}, Lorg/apache/harmony/luni/platform/OSMemory;->swap(S)S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/luni/platform/OSMemory;->setShort(IS)V

    goto :goto_7
.end method

.method public native setShortArray(I[SIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public unmap(IJ)V
    .registers 4
    .parameter "addr"
    .parameter "size"

    .prologue
    .line 625
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSMemory;->unmapImpl(IJ)V

    .line 626
    return-void
.end method
