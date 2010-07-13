.class public final Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;
.super Lorg/apache/harmony/nio/internal/FileChannelImpl;
.source "ReadWriteFileChannel.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .parameter "stream"
    .parameter "handle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/nio/internal/FileChannelImpl;-><init>(Ljava/lang/Object;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .registers 12
    .parameter "mode"
    .parameter "position"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;->openCheck()V

    .line 39
    if-nez p1, :cond_d

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_d
    cmp-long v0, p2, v2

    if-ltz v0, :cond_1c

    cmp-long v0, p4, v2

    if-ltz v0, :cond_1c

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p4, v2

    if-lez v0, :cond_22

    .line 43
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_22
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v0, :cond_2f

    .line 47
    const/4 v1, 0x1

    .local v1, mapMode:I
    :goto_27
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 53
    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/nio/internal/ReadWriteFileChannel;->mapImpl(IJJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0

    .line 48
    .end local v1           #mapMode:I
    :cond_2f
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v0, :cond_35

    .line 49
    const/4 v1, 0x2

    .restart local v1       #mapMode:I
    goto :goto_27

    .line 51
    .end local v1           #mapMode:I
    :cond_35
    const/4 v1, 0x4

    .restart local v1       #mapMode:I
    goto :goto_27
.end method
