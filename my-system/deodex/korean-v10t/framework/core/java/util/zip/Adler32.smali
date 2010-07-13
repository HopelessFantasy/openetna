.class public Ljava/util/zip/Adler32;
.super Ljava/lang/Object;
.source "Adler32.java"

# interfaces
.implements Ljava/util/zip/Checksum;


# instance fields
.field private adler:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-void
.end method

.method private native updateByteImpl(IJ)J
.end method

.method private native updateImpl([BIIJ)J
.end method


# virtual methods
.method public getValue()J
    .registers 3

    .prologue
    .line 40
    iget-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 49
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    .line 50
    return-void
.end method

.method public update(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 61
    iget-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/Adler32;->updateByteImpl(IJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

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

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Adler32;->update([BII)V

    .line 73
    return-void
.end method

.method public update([BII)V
    .registers 10
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"

    .prologue
    .line 92
    array-length v0, p1

    if-gt p2, v0, :cond_18

    if-ltz p3, :cond_18

    if-ltz p2, :cond_18

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_18

    .line 94
    iget-wide v4, p0, Ljava/util/zip/Adler32;->adler:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ljava/util/zip/Adler32;->updateImpl([BIIJ)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/Adler32;->adler:J

    .line 98
    return-void

    .line 96
    :cond_18
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
