.class public Ljava/util/zip/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private crc:J

.field tbytes:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    .line 31
    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    return-void
.end method

.method private native updateByteImpl(BJ)J
.end method

.method private native updateImpl([BIIJ)J
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .prologue
    .line 40
    iget-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    .line 51
    return-void
.end method

.method public update(I)V
    .registers 5
    .parameter "val"

    .prologue
    .line 61
    int-to-byte v0, p1

    iget-wide v1, p0, Ljava/util/zip/CRC32;->crc:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/zip/CRC32;->updateByteImpl(BJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    .line 62
    return-void
.end method

.method public update([B)V
    .registers 4
    .parameter "buf"

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 73
    return-void
.end method

.method public update([BII)V
    .registers 10
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 89
    array-length v0, p1

    if-gt p2, v0, :cond_1e

    if-ltz p3, :cond_1e

    if-ltz p2, :cond_1e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1e

    .line 91
    iget-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/CRC32;->tbytes:J

    .line 92
    iget-wide v4, p0, Ljava/util/zip/CRC32;->crc:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/CRC32;->updateImpl([BIIJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/CRC32;->crc:J

    .line 96
    return-void

    .line 94
    :cond_1e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
