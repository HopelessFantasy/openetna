.class Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$BaseImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SomewhatFairLock"
.end annotation


# instance fields
.field private mLocked:Z

.field private mSync:Ljava/lang/Object;

.field private mWaiting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/ImageManager$BaseImageList;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$BaseImageList;)V
    .registers 3
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->this$0:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method lock()V
    .registers 4

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :cond_3
    :goto_3
    :try_start_3
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2d

    if-eqz v1, :cond_28

    .line 978
    :try_start_7
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 980
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 981
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mWaiting:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_2d
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_28} :catch_30

    .line 989
    :cond_28
    const/4 v1, 0x1

    :try_start_29
    iput-boolean v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 990
    monitor-exit v0

    .line 991
    return-void

    .line 990
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_2d

    throw v1

    .line 984
    :catch_30
    move-exception v1

    goto :goto_3
.end method

.method unlock()V
    .registers 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mLocked:Z

    .line 997
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->mSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 998
    monitor-exit v0

    .line 999
    return-void

    .line 998
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method
