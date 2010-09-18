.class public final Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;
.super Lorg/apache/harmony/nio/internal/FileChannelImpl;
.source "WriteOnlyFileChannel.java"


# instance fields
.field private append:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter "stream"
    .parameter "handle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;-><init>(Ljava/lang/Object;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->append:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IZ)V
    .registers 5
    .parameter "stream"
    .parameter "handle"
    .parameter "isAppend"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;-><init>(Ljava/lang/Object;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->append:Z

    .line 44
    iput-boolean p3, p0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->append:Z

    .line 45
    return-void
.end method


# virtual methods
.method protected final basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .registers 8
    .parameter "position"
    .parameter "size"
    .parameter "shared"
    .parameter "wait"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    if-eqz p5, :cond_8

    .line 110
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0

    .line 112
    :cond_8
    invoke-super/range {p0 .. p6}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 9
    .parameter "mode"
    .parameter "position"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 90
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->openCheck()V

    .line 91
    if-nez p1, :cond_d

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 94
    :cond_d
    cmp-long v0, p2, v1

    if-ltz v0, :cond_1c

    cmp-long v0, p4, v1

    if-ltz v0, :cond_1c

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p4, v0

    if-lez v0, :cond_22

    .line 95
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 97
    :cond_22
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public position()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->append:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->size()J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_9
    invoke-super {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->position()J

    move-result-wide v0

    goto :goto_8
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->openCheck()V

    .line 75
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .registers 6
    .parameter "buffer"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    if-nez p1, :cond_8

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_14

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 85
    :cond_14
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 6
    .parameter "buffers"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    if-ltz p2, :cond_9

    if-ltz p3, :cond_9

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_f

    .line 67
    :cond_9
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 69
    :cond_f
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->openCheck()V

    .line 70
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .registers 7
    .parameter "position"
    .parameter "count"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->openCheck()V

    .line 58
    invoke-interface {p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    .line 59
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 61
    :cond_f
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->append:Z

    if-eqz v0, :cond_b

    .line 102
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->size()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/nio/internal/WriteOnlyFileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 104
    :cond_b
    invoke-super {p0, p1}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method
