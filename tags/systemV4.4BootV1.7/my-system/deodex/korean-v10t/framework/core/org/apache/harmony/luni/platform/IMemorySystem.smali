.class public interface abstract Lorg/apache/harmony/luni/platform/IMemorySystem;
.super Ljava/lang/Object;
.source "IMemorySystem.java"


# static fields
.field public static final MMAP_READ_ONLY:I = 0x1

.field public static final MMAP_READ_WRITE:I = 0x2

.field public static final MMAP_WRITE_COPY:I = 0x4


# virtual methods
.method public abstract flush(IJ)V
.end method

.method public abstract free(I)V
.end method

.method public abstract getAddress(I)I
.end method

.method public abstract getByte(I)B
.end method

.method public abstract getByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getDouble(ILorg/apache/harmony/luni/platform/Endianness;)D
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getFloat(ILorg/apache/harmony/luni/platform/Endianness;)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getInt(ILorg/apache/harmony/luni/platform/Endianness;)I
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getLong(ILorg/apache/harmony/luni/platform/Endianness;)J
.end method

.method public abstract getPointerSize()I
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getShort(ILorg/apache/harmony/luni/platform/Endianness;)S
.end method

.method public abstract isLittleEndian()Z
.end method

.method public abstract isLoaded(IJ)Z
.end method

.method public abstract load(IJ)V
.end method

.method public abstract malloc(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation
.end method

.method public abstract memmove(IIJ)V
.end method

.method public abstract memset(IBJ)V
.end method

.method public abstract mmap(IJJI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAddress(II)V
.end method

.method public abstract setByte(IB)V
.end method

.method public abstract setByteArray(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract setDouble(ID)V
.end method

.method public abstract setDouble(IDLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setFloat(IF)V
.end method

.method public abstract setFloat(IFLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setInt(II)V
.end method

.method public abstract setInt(IILorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setIntArray(I[IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract setLong(IJ)V
.end method

.method public abstract setLong(IJLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setShort(IS)V
.end method

.method public abstract setShort(ISLorg/apache/harmony/luni/platform/Endianness;)V
.end method

.method public abstract setShortArray(I[SIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract unmap(IJ)V
.end method
