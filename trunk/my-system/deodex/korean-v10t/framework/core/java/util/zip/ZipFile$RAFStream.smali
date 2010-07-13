.class Ljava/util/zip/ZipFile$RAFStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RAFStream"
.end annotation


# instance fields
.field mLength:J

.field mOffset:J

.field mSharedRaf:Ljava/io/RandomAccessFile;

.field private singleByteBuf:[B


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;J)V
    .registers 6
    .parameter "raf"
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 431
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipFile$RAFStream;->singleByteBuf:[B

    .line 391
    iput-object p1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    .line 392
    iput-wide p2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 393
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 394
    return-void
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 402
    iget-object v0, p0, Ljava/util/zip/ZipFile$RAFStream;->singleByteBuf:[B

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Ljava/util/zip/ZipFile$RAFStream;->singleByteBuf:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 403
    :goto_10
    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public read([BII)I
    .registers 10
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v1, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 409
    :try_start_3
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    iget-wide v3, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 410
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v4, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    .line 411
    :cond_1a
    iget-object v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mSharedRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 412
    .local v0, count:I
    if-lez v0, :cond_2b

    .line 413
    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 416
    monitor-exit v1

    move v1, v0

    .line 417
    :goto_2a
    return v1

    .line 415
    :cond_2b
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_2a

    .line 416
    .end local v0           #count:I
    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public skip(J)J
    .registers 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    add-long/2addr v0, p1

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    .line 423
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    iget-wide v2, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    sub-long p1, v0, v2

    .line 424
    :cond_f
    iget-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    .line 425
    return-wide p1
.end method
