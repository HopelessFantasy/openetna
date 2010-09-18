.class Lcom/android/camera/ViewImage$ImageGetter;
.super Ljava/lang/Object;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageGetter"
.end annotation


# instance fields
.field private mCB:Lcom/android/camera/ViewImage$ImageGetterCallback;

.field private mCancelCurrent:Z

.field private mCurrentPosition:I

.field private mDone:Z

.field private mGetterThread:Ljava/lang/Thread;

.field private mLoad:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

.field private mReady:Z

.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method public constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 714
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCurrentPosition:I

    .line 691
    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCancelCurrent:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mDone:Z

    .line 697
    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mReady:Z

    .line 715
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/ViewImage$ImageGetter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ViewImage$ImageGetter$1;-><init>(Lcom/android/camera/ViewImage$ImageGetter;Lcom/android/camera/ViewImage;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mGetterThread:Ljava/lang/Thread;

    .line 834
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mGetterThread:Ljava/lang/Thread;

    const-string v1, "ImageGettter"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 836
    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/ViewImage$ImageGetter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/camera/ViewImage$ImageGetter;->cancelCurrent()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    invoke-direct {p0}, Lcom/android/camera/ViewImage$ImageGetter;->isCanceled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/camera/ViewImage$ImageGetter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    iget v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCB:Lcom/android/camera/ViewImage$ImageGetterCallback;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ViewImage$ImageGetter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mDone:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/camera/ViewImage$ImageGetter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    iput-boolean p1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mReady:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mLoad:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/ViewImage$ImageGetter;Lcom/android/camera/ImageManager$IGetBitmap_cancelable;)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mLoad:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    return-object p1
.end method

.method private cancelCurrent()V
    .registers 3

    .prologue
    .line 700
    monitor-enter p0

    .line 701
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mReady:Z

    if-nez v1, :cond_12

    .line 702
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCancelCurrent:Z

    .line 703
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mLoad:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    .line 704
    .local v0, load:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    if-eqz v0, :cond_f

    .line 707
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBitmap_cancelable;->cancel()Z

    .line 709
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCancelCurrent:Z

    .line 711
    .end local v0           #load:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    :cond_12
    monitor-exit p0

    .line 712
    return-void

    .line 711
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private isCanceled()Z
    .registers 2

    .prologue
    .line 839
    monitor-enter p0

    .line 840
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCancelCurrent:Z

    monitor-exit p0

    return v0

    .line 841
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method


# virtual methods
.method public setPosition(ILcom/android/camera/ViewImage$ImageGetterCallback;)V
    .registers 5
    .parameter "position"
    .parameter "cb"

    .prologue
    .line 845
    monitor-enter p0

    .line 846
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mReady:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v1, :cond_18

    .line 848
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCancelCurrent:Z

    .line 849
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mLoad:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    .line 850
    .local v0, load:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    if-eqz v0, :cond_f

    .line 851
    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBitmap_cancelable;->cancel()Z

    .line 855
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 857
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCancelCurrent:Z
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_23
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_18} :catch_29

    .line 862
    .end local v0           #load:Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    :cond_18
    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_23

    .line 864
    iput p1, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCurrentPosition:I

    .line 865
    iput-object p2, p0, Lcom/android/camera/ViewImage$ImageGetter;->mCB:Lcom/android/camera/ViewImage$ImageGetterCallback;

    .line 867
    monitor-enter p0

    .line 868
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 869
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_26

    .line 870
    return-void

    .line 862
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1

    .line 869
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1

    .line 858
    :catch_29
    move-exception v1

    goto :goto_18
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 873
    monitor-enter p0

    .line 874
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mDone:Z

    .line 875
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 876
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_e

    .line 878
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_11

    .line 882
    :goto_d
    return-void

    .line 876
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0

    .line 879
    :catch_11
    move-exception v0

    goto :goto_d
.end method
