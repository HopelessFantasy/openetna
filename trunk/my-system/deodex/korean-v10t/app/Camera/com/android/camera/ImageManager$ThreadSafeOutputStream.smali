.class Lcom/android/camera/ImageManager$ThreadSafeOutputStream;
.super Ljava/io/OutputStream;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadSafeOutputStream"
.end annotation


# instance fields
.field mClosed:Z

.field mDelegateStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Ljava/io/OutputStream;)V
    .registers 3
    .parameter
    .parameter "delegate"

    .prologue
    .line 3253
    iput-object p1, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3254
    iput-object p2, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    .line 3255
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3260
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mClosed:Z

    .line 3261
    iget-object v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_e

    .line 3265
    :goto_9
    monitor-exit p0

    return-void

    .line 3260
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3262
    :catch_e
    move-exception v0

    goto :goto_9
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3269
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 3270
    monitor-exit p0

    return-void

    .line 3269
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3293
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mClosed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-eqz v0, :cond_7

    .line 3296
    :goto_5
    monitor-exit p0

    return-void

    .line 3295
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 3293
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3278
    :goto_0
    if-lez p3, :cond_8

    .line 3279
    monitor-enter p0

    .line 3280
    :try_start_3
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mClosed:Z

    if-eqz v1, :cond_9

    .line 3281
    monitor-exit p0

    .line 3289
    :cond_8
    return-void

    .line 3283
    :cond_9
    const/16 v1, 0x2000

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3284
    .local v0, writeLength:I
    iget-object v1, p0, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->mDelegateStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 3285
    add-int/2addr p2, v0

    .line 3286
    sub-int/2addr p3, v0

    .line 3287
    monitor-exit p0

    goto :goto_0

    .end local v0           #writeLength:I
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
