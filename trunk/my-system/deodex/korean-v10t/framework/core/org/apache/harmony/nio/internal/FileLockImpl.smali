.class final Lorg/apache/harmony/nio/internal/FileLockImpl;
.super Ljava/nio/channels/FileLock;
.source "FileLockImpl.java"


# instance fields
.field private isReleased:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 8
    .parameter "channel"
    .parameter "position"
    .parameter "size"
    .parameter "shared"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p6}, Ljava/nio/channels/FileLock;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/nio/internal/FileLockImpl;->isReleased:Z

    .line 45
    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/apache/harmony/nio/internal/FileLockImpl;->isReleased:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public release()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 65
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 68
    :cond_10
    iget-boolean v0, p0, Lorg/apache/harmony/nio/internal/FileLockImpl;->isReleased:Z

    if-nez v0, :cond_20

    .line 69
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileLockImpl;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/nio/internal/FileChannelImpl;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->release(Ljava/nio/channels/FileLock;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/nio/internal/FileLockImpl;->isReleased:Z

    .line 72
    :cond_20
    return-void
.end method
