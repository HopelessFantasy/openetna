.class Lcom/android/camera/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->setViewFinder(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;

.field final synthetic val$wallTimeStart:J

.field final synthetic val$watchDogSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;Ljava/lang/Object;J)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    iput-object p2, p0, Lcom/android/camera/Camera$7;->val$watchDogSync:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/android/camera/Camera$7;->val$wallTimeStart:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-string v7, "preview hasn\'t started yet in "

    const-string v6, "camera"

    .line 1720
    const/4 v1, 0x1

    .line 1723
    .local v1, next_warning:I
    :cond_5
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/Camera$7;->val$watchDogSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_1c

    .line 1724
    :try_start_8
    iget-object v3, p0, Lcom/android/camera/Camera$7;->val$watchDogSync:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1725
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_19

    .line 1729
    :goto_10
    iget-object v2, p0, Lcom/android/camera/Camera$7;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$3700(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1748
    return-void

    .line 1725
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v3
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_1c

    .line 1726
    :catch_1c
    move-exception v2

    goto :goto_10

    .line 1731
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/Camera$7;->val$wallTimeStart:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit16 v0, v2, 0x3e8

    .line 1732
    .local v0, delay:I
    if-lt v0, v1, :cond_5

    .line 1733
    const/16 v2, 0x78

    if-ge v0, v2, :cond_59

    .line 1734
    const-string v2, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview hasn\'t started yet in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :goto_4c
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_7a

    .line 1739
    shl-int/lit8 v1, v1, 0x1

    .line 1740
    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1741
    const/16 v1, 0xf

    goto :goto_5

    .line 1736
    :cond_59
    const-string v2, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview hasn\'t started yet in "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v0, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minutes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 1744
    :cond_7a
    add-int/lit8 v1, v1, 0x3c

    goto :goto_5
.end method
