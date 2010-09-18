.class Lorg/apache/harmony/luni/platform/OSFileSystem;
.super Lorg/apache/harmony/luni/platform/OSComponent;
.source "OSFileSystem.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/IFileSystem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/harmony/luni/platform/OSComponent;-><init>()V

    .line 39
    return-void
.end method

.method private native closeImpl(I)I
.end method

.method private native fflushImpl(IZ)I
.end method

.method private native lockImpl(IJJIZ)I
.end method

.method private native openImpl([BI)I
.end method

.method private native readDirectImpl(IIII)J
.end method

.method private native readImpl(I[BII)J
.end method

.method private native readvImpl(I[I[I[II)J
.end method

.method private native seekImpl(IJI)J
.end method

.method private native transferImpl(ILjava/io/FileDescriptor;JJ)J
.end method

.method private native truncateImpl(IJ)I
.end method

.method private native ttyReadImpl([BII)J
.end method

.method private native unlockImpl(IJJ)I
.end method

.method private final validateLockArgs(IJJ)V
    .registers 9
    .parameter "type"
    .parameter "start"
    .parameter "length"

    .prologue
    const-wide/16 v1, 0x0

    .line 42
    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal lock type requested."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_10
    cmp-long v0, p2, v1

    if-gez v0, :cond_1c

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lock start position must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1c
    cmp-long v0, p4, v1

    if-gez v0, :cond_28

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lock length must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_28
    return-void
.end method

.method private native writeDirectImpl(IIII)J
.end method

.method private native writeImpl(I[BII)J
.end method

.method private native writevImpl(I[I[I[II)J
.end method


# virtual methods
.method public close(I)V
    .registers 4
    .parameter "fileDescriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lorg/apache/harmony/luni/platform/OSFileSystem;->closeImpl(I)I

    move-result v0

    .line 211
    .local v0, rc:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 212
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 214
    :cond_d
    return-void
.end method

.method public fflush(IZ)V
    .registers 5
    .parameter "fileDescriptor"
    .parameter "metadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSFileSystem;->fflushImpl(IZ)I

    move-result v0

    .line 95
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 96
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 98
    :cond_d
    return-void
.end method

.method public native getAllocGranularity()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native ioctlAvailable(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public lock(IJJIZ)Z
    .registers 15
    .parameter "fileDescriptor"
    .parameter "start"
    .parameter "length"
    .parameter "type"
    .parameter "waitFlag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move v1, p6

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->validateLockArgs(IJJ)V

    .line 74
    invoke-direct/range {p0 .. p7}, Lorg/apache/harmony/luni/platform/OSFileSystem;->lockImpl(IJJIZ)I

    move-result v6

    .line 75
    .local v6, result:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public open([BI)I
    .registers 6
    .parameter "fileName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p1, :cond_8

    .line 227
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 229
    :cond_8
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/platform/OSFileSystem;->openImpl([BI)I

    move-result v0

    .line 230
    .local v0, handler:I
    if-gez v0, :cond_19

    .line 231
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_19
    return v0
.end method

.method public read(I[BII)J
    .registers 9
    .parameter "fileDescriptor"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p2, :cond_8

    .line 152
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 154
    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSFileSystem;->readImpl(I[BII)J

    move-result-wide v0

    .line 155
    .local v0, bytesRead:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_18

    .line 156
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 158
    :cond_18
    return-wide v0
.end method

.method public readDirect(IIII)J
    .registers 9
    .parameter "fileDescriptor"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSFileSystem;->readDirectImpl(IIII)J

    move-result-wide v0

    .line 124
    .local v0, bytesRead:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 125
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 127
    :cond_10
    return-wide v0
.end method

.method public readv(I[I[I[II)J
    .registers 10
    .parameter "fileDescriptor"
    .parameter "addresses"
    .parameter "offsets"
    .parameter "lengths"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->readvImpl(I[I[I[II)J

    move-result-wide v0

    .line 180
    .local v0, bytesRead:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 181
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 183
    :cond_10
    return-wide v0
.end method

.method public seek(IJI)J
    .registers 9
    .parameter "fileDescriptor"
    .parameter "offset"
    .parameter "whence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSFileSystem;->seekImpl(IJI)J

    move-result-wide v0

    .line 109
    .local v0, pos:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 110
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 112
    :cond_10
    return-wide v0
.end method

.method public transfer(ILjava/io/FileDescriptor;JJ)J
    .registers 11
    .parameter "fileHandler"
    .parameter "socketDescriptor"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/luni/platform/OSFileSystem;->transferImpl(ILjava/io/FileDescriptor;JJ)J

    move-result-wide v0

    .line 241
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 242
    :cond_10
    return-wide v0
.end method

.method public truncate(IJ)V
    .registers 6
    .parameter "fileDescriptor"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSFileSystem;->truncateImpl(IJ)I

    move-result v0

    .line 218
    .local v0, rc:I
    if-gez v0, :cond_c

    .line 219
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 221
    :cond_c
    return-void
.end method

.method public ttyRead([BII)J
    .registers 8
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/luni/platform/OSFileSystem;->ttyReadImpl([BII)J

    move-result-wide v0

    .line 263
    .local v0, nChar:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 264
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 267
    :cond_10
    return-wide v0
.end method

.method public unlock(IJJ)V
    .registers 13
    .parameter "fileDescriptor"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->validateLockArgs(IJJ)V

    .line 84
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->unlockImpl(IJJ)I

    move-result v6

    .line 85
    .local v6, result:I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_14

    .line 86
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 88
    :cond_14
    return-void
.end method

.method public write(I[BII)J
    .registers 9
    .parameter "fileDescriptor"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSFileSystem;->writeImpl(I[BII)J

    move-result-wide v0

    .line 167
    .local v0, bytesWritten:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 168
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 170
    :cond_10
    return-wide v0
.end method

.method public writeDirect(IIII)J
    .registers 9
    .parameter "fileDescriptor"
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/luni/platform/OSFileSystem;->writeDirectImpl(IIII)J

    move-result-wide v0

    .line 137
    .local v0, bytesWritten:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 138
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 140
    :cond_10
    return-wide v0
.end method

.method public writev(I[I[I[II)J
    .registers 10
    .parameter "fileDescriptor"
    .parameter "addresses"
    .parameter "offsets"
    .parameter "lengths"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/luni/platform/OSFileSystem;->writevImpl(I[I[I[II)J

    move-result-wide v0

    .line 193
    .local v0, bytesWritten:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 194
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 196
    :cond_10
    return-wide v0
.end method
