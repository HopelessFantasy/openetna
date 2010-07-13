.class public Ljava/io/FileOutputStream;
.super Ljava/io/OutputStream;
.source "FileOutputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field fd:Ljava/io/FileDescriptor;

.field private fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

.field innerFD:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 10
    .parameter "file"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 91
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 92
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_19

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/lang/String;)V

    .line 95
    :cond_19
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 96
    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget-object v2, p0, Ljava/io/FileOutputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    invoke-virtual {p1, v5}, Ljava/io/File;->properPath(Z)[B

    move-result-object v3

    if-eqz p2, :cond_41

    move v4, v6

    :goto_2b
    invoke-interface {v2, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->open([BI)I

    move-result v2

    iput v2, v1, Ljava/io/FileDescriptor;->descriptor:I

    .line 98
    iput-boolean v5, p0, Ljava/io/FileOutputStream;->innerFD:Z

    .line 99
    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    if-eqz p2, :cond_43

    move v2, v6

    :goto_3a
    invoke-static {p0, v1, v2}, Lorg/apache/harmony/nio/FileChannelFactory;->getFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 101
    return-void

    :cond_41
    move v4, v5

    .line 96
    goto :goto_2b

    :cond_43
    move v2, v5

    .line 99
    goto :goto_3a
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 5
    .parameter "fd"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 53
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 119
    if-nez p1, :cond_17

    .line 120
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K006c"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_17
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 123
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_20

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V

    .line 126
    :cond_20
    iput-object p1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/FileOutputStream;->innerFD:Z

    .line 128
    iget v1, p1, Ljava/io/FileDescriptor;->descriptor:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lorg/apache/harmony/nio/FileChannelFactory;->getFileChannel(Ljava/lang/Object;II)Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter "filename"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 170
    return-void
.end method

.method private declared-synchronized openCheck()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-gez v0, :cond_10

    .line 329
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 328
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_10
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    if-nez v0, :cond_5

    .line 202
    :goto_4
    return-void

    .line 188
    :cond_5
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_20

    .line 189
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    monitor-enter v0

    .line 190
    :try_start_c
    iget-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    if-ltz v1, :cond_1f

    .line 191
    iget-object v1, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 193
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_3e

    .line 196
    :cond_20
    monitor-enter p0

    .line 197
    :try_start_21
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v0, v0, Ljava/io/FileDescriptor;->descriptor:I

    if-ltz v0, :cond_39

    iget-boolean v0, p0, Ljava/io/FileOutputStream;->innerFD:Z

    if-eqz v0, :cond_39

    .line 198
    iget-object v0, p0, Ljava/io/FileOutputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/IFileSystem;->close(I)V

    .line 199
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    const/4 v1, -0x1

    iput v1, v0, Ljava/io/FileDescriptor;->descriptor:I

    .line 201
    :cond_39
    monitor-exit p0

    goto :goto_4

    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_3b

    throw v0

    .line 193
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 215
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Ljava/io/FileOutputStream;->channel:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public write(I)V
    .registers 7
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-direct {p0}, Ljava/io/FileOutputStream;->openCheck()V

    .line 322
    new-array v0, v4, [B

    .line 323
    .local v0, byteArray:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 324
    iget-object v1, p0, Ljava/io/FileOutputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v2, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v2, v2, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    .line 325
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 261
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p1, :cond_e

    .line 293
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_e
    or-int v0, p3, p2

    if-ltz v0, :cond_16

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_22

    .line 296
    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_22
    if-nez p3, :cond_25

    .line 306
    :goto_24
    return-void

    .line 304
    :cond_25
    invoke-direct {p0}, Ljava/io/FileOutputStream;->openCheck()V

    .line 305
    iget-object v0, p0, Ljava/io/FileOutputStream;->fileSystem:Lorg/apache/harmony/luni/platform/IFileSystem;

    iget-object v1, p0, Ljava/io/FileOutputStream;->fd:Ljava/io/FileDescriptor;

    iget v1, v1, Ljava/io/FileDescriptor;->descriptor:I

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/harmony/luni/platform/IFileSystem;->write(I[BII)J

    goto :goto_24
.end method
