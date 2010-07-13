.class public abstract Lcom/android/camera/ImageManager$BaseCancelable;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$ICancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseCancelable"
.end annotation


# instance fields
.field mCancel:Z

.field mFinished:Z

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    .line 160
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mFinished:Z

    return-void
.end method


# virtual methods
.method protected acknowledgeCancel()V
    .registers 2

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mFinished:Z

    .line 169
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-nez v0, :cond_a

    .line 170
    monitor-exit p0

    .line 175
    :goto_9
    return-void

    .line 171
    :cond_a
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_11

    .line 172
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 174
    :cond_11
    monitor-exit p0

    goto :goto_9

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public cancel()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 178
    monitor-enter p0

    .line 179
    :try_start_2
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v1, :cond_9

    .line 180
    monitor-exit p0

    move v1, v2

    .line 194
    :goto_8
    return v1

    .line 182
    :cond_9
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mFinished:Z

    if-eqz v1, :cond_10

    .line 183
    monitor-exit p0

    move v1, v2

    goto :goto_8

    .line 185
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseCancelable;->doCancelWork()Z
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1d

    move-result v0

    .line 189
    .local v0, retVal:Z
    :try_start_17
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_20

    .line 194
    :goto_1a
    :try_start_1a
    monitor-exit p0

    move v1, v0

    goto :goto_8

    .line 195
    .end local v0           #retVal:Z
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1d

    throw v1

    .line 190
    .restart local v0       #retVal:Z
    :catch_20
    move-exception v1

    goto :goto_1a
.end method

.method protected checkCanceled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/ImageManager$CanceledException;
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_10

    .line 205
    new-instance v0, Lcom/android/camera/ImageManager$CanceledException;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseCancelable;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {v0, v1}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v0

    .line 206
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_d

    .line 207
    return-void
.end method

.method public abstract doCancelWork()Z
.end method
