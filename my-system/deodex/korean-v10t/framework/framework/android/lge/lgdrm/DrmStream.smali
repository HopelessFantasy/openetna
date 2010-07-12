.class public final Landroid/lge/lgdrm/DrmStream;
.super Ljava/io/InputStream;
.source "DrmStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmStream"


# instance fields
.field private b:[B

.field private nativeHandle:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/lge/lgdrm/DrmStream;->b:[B

    .line 39
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4
    .parameter "nativeHandle"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/lge/lgdrm/DrmStream;->b:[B

    .line 46
    if-nez p1, :cond_12

    .line 48
    const-string v0, "DrmStream"

    const-string v1, "DrmStream() : Invalid native handle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_11
    return-void

    .line 52
    :cond_12
    iput p1, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    goto :goto_11
.end method

.method private native nativeAvailable(I)I
.end method

.method private native nativeClose(I)V
.end method

.method private native nativeRead(I[BII)I
.end method

.method private native nativeSkip(IJ)J
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_c

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_c
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmStream;->nativeAvailable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_c

    .line 72
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_c
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 77
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 82
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 96
    iget v1, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v1, :cond_e

    .line 98
    new-instance v1, Ljava/io/IOException;

    const-string v2, "File was not opened properly"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_e
    iget-object v1, p0, Landroid/lge/lgdrm/DrmStream;->b:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Landroid/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    .line 102
    .local v0, nRead:I
    if-ne v0, v3, :cond_19

    move v1, v3

    .line 107
    :goto_18
    return v1

    :cond_19
    iget-object v1, p0, Landroid/lge/lgdrm/DrmStream;->b:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_18
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_c

    .line 116
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_c
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/lge/lgdrm/DrmStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, nRead:I
    const/4 v0, 0x0

    .line 129
    .local v0, i:I
    iget v2, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v2, :cond_e

    .line 131
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File was not opened properly"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_e
    if-nez p1, :cond_18

    .line 136
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "parameter b is NULL"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_18
    or-int v2, p2, p3

    if-ltz v2, :cond_20

    array-length v2, p1

    sub-int/2addr v2, p2

    if-le p3, v2, :cond_26

    .line 140
    :cond_20
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 143
    :cond_26
    iget v2, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2, p1, p2, p3}, Landroid/lge/lgdrm/DrmStream;->nativeRead(I[BII)I

    move-result v1

    .line 144
    if-nez v1, :cond_30

    .line 147
    const/4 v2, -0x1

    .line 156
    :goto_2f
    return v2

    .line 149
    :cond_30
    if-gez v1, :cond_40

    .line 151
    iget v2, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v2}, Landroid/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 153
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_40
    move v2, v1

    .line 156
    goto :goto_2f
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-eqz v0, :cond_d

    .line 165
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmStream;->nativeClose(I)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    .line 169
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    .line 163
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 176
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    if-nez v0, :cond_e

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File was not opened properly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_e
    cmp-long v0, p1, v1

    if-gtz v0, :cond_14

    move-wide v0, v1

    .line 190
    :goto_13
    return-wide v0

    :cond_14
    iget v0, p0, Landroid/lge/lgdrm/DrmStream;->nativeHandle:I

    invoke-direct {p0, v0, p1, p2}, Landroid/lge/lgdrm/DrmStream;->nativeSkip(IJ)J

    move-result-wide v0

    goto :goto_13
.end method
