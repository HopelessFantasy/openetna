.class Lcom/android/camera/ViewImage$ImageGetter$1;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage$ImageGetter;-><init>(Lcom/android/camera/ViewImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ViewImage$ImageGetter;

.field final synthetic val$this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage$ImageGetter;Lcom/android/camera/ViewImage;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iput-object p2, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->val$this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callback(IIZLandroid/graphics/Bitmap;)Ljava/lang/Runnable;
    .registers 11
    .parameter "position"
    .parameter "offset"
    .parameter "isThumb"
    .parameter "bitmap"

    .prologue
    .line 718
    new-instance v0, Lcom/android/camera/ViewImage$ImageGetter$1$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ViewImage$ImageGetter$1$1;-><init>(Lcom/android/camera/ViewImage$ImageGetter$1;IILandroid/graphics/Bitmap;Z)V

    return-object v0
.end method

.method private completedCallback(Z)Ljava/lang/Runnable;
    .registers 3
    .parameter "wasCanceled"

    .prologue
    .line 732
    new-instance v0, Lcom/android/camera/ViewImage$ImageGetter$1$2;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ViewImage$ImageGetter$1$2;-><init>(Lcom/android/camera/ViewImage$ImageGetter$1;Z)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 740
    const/4 v7, -0x1

    .line 741
    .local v7, lastPosition:I
    :cond_1
    :goto_1
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2600(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v11

    if-nez v11, :cond_158

    .line 742
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    monitor-enter v11

    .line 743
    :try_start_c
    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/camera/ViewImage$ImageGetter;->access$2702(Lcom/android/camera/ViewImage$ImageGetter;Z)Z

    .line 744
    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 746
    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v12}, Lcom/android/camera/ViewImage$ImageGetter;->access$2400(Lcom/android/camera/ViewImage$ImageGetter;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_28

    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v12}, Lcom/android/camera/ViewImage$ImageGetter;->access$2400(Lcom/android/camera/ViewImage$ImageGetter;)I
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_ce

    move-result v12

    if-ne v7, v12, :cond_2d

    .line 748
    :cond_28
    :try_start_28
    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_ce
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_c9

    .line 754
    :cond_2d
    :try_start_2d
    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v12}, Lcom/android/camera/ViewImage$ImageGetter;->access$2400(Lcom/android/camera/ViewImage$ImageGetter;)I

    move-result v7

    .line 755
    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/camera/ViewImage$ImageGetter;->access$2702(Lcom/android/camera/ViewImage$ImageGetter;Z)Z

    .line 756
    monitor-exit v11
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_ce

    .line 758
    const/4 v11, -0x1

    if-eq v7, v11, :cond_1

    .line 759
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    .line 761
    .local v4, imageCount:I
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/ViewImage$ImageGetterCallback;->loadOrder()[I

    move-result-object v9

    .line 762
    .local v9, order:[I
    const/4 v6, 0x0

    .line 763
    .local v6, j:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_55
    array-length v11, v9

    if-ge v2, v11, :cond_78

    .line 764
    aget v8, v9, v2

    .line 765
    .local v8, offset:I
    add-int v5, v7, v8

    .line 766
    .local v5, imageNumber:I
    if-ltz v5, :cond_107

    if-ge v5, v4, :cond_107

    .line 767
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v11

    add-int v12, v7, v8

    invoke-interface {v11, v12}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v3

    .line 768
    .local v3, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v3, :cond_78

    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 781
    .end local v3           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v5           #imageNumber:I
    .end local v8           #offset:I
    :cond_78
    const/4 v2, 0x0

    :goto_79
    array-length v11, v9

    if-ge v2, v11, :cond_b2

    .line 782
    aget v8, v9, v2

    .line 783
    .restart local v8       #offset:I
    add-int v5, v7, v8

    .line 784
    .restart local v5       #imageNumber:I
    if-ltz v5, :cond_143

    if-ge v5, v4, :cond_143

    .line 785
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v11

    add-int v12, v7, v8

    invoke-interface {v11, v12}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v3

    .line 786
    .restart local v3       #image:Lcom/android/camera/ImageManager$IImage;
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;

    move-result-object v11

    invoke-interface {v11, v7, v8}, Lcom/android/camera/ViewImage$ImageGetterCallback;->wantsFullImage(II)Z

    move-result v11

    if-eqz v11, :cond_143

    .line 789
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;

    move-result-object v11

    invoke-interface {v11, v7, v8}, Lcom/android/camera/ViewImage$ImageGetterCallback;->fullImageSizeToUse(II)I

    move-result v10

    .line 792
    .local v10, sizeToUse:I
    if-eqz v3, :cond_b2

    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v11

    if-eqz v11, :cond_10b

    .line 829
    .end local v3           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v5           #imageNumber:I
    .end local v8           #offset:I
    .end local v10           #sizeToUse:I
    :cond_b2
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$2900(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$LocalHandler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v12}, Lcom/android/camera/ViewImage$ImageGetter;->access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/camera/ViewImage$ImageGetter$1;->completedCallback(Z)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$LocalHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 749
    .end local v2           #i:I
    .end local v4           #imageCount:I
    .end local v6           #j:I
    .end local v9           #order:[I
    :catch_c9
    move-exception v12

    move-object v1, v12

    .line 750
    .local v1, ex:Ljava/lang/InterruptedException;
    :try_start_cb
    monitor-exit v11

    goto/16 :goto_1

    .line 756
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :catchall_ce
    move-exception v12

    monitor-exit v11
    :try_end_d0
    .catchall {:try_start_cb .. :try_end_d0} :catchall_ce

    throw v12

    .line 771
    .restart local v2       #i:I
    .restart local v3       #image:Lcom/android/camera/ImageManager$IImage;
    .restart local v4       #imageCount:I
    .restart local v5       #imageNumber:I
    .restart local v6       #j:I
    .restart local v8       #offset:I
    .restart local v9       #order:[I
    :cond_d1
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;

    move-result-object v11

    invoke-interface {v11, v7, v8}, Lcom/android/camera/ViewImage$ImageGetterCallback;->wantsThumbnail(II)Z

    move-result v11

    if-eqz v11, :cond_107

    .line 774
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$2800(Lcom/android/camera/ViewImage;)[Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    aput-object v12, v11, v6

    .line 775
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$2900(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$LocalHandler;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v13, v13, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v13}, Lcom/android/camera/ViewImage;->access$2800(Lcom/android/camera/ViewImage;)[Landroid/graphics/Bitmap;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-direct {p0, v7, v8, v12, v13}, Lcom/android/camera/ViewImage$ImageGetter$1;->callback(IIZLandroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$LocalHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    .line 776
    add-int/lit8 v6, v6, 0x1

    .line 763
    .end local v3           #image:Lcom/android/camera/ImageManager$IImage;
    :cond_107
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_55

    .line 797
    .restart local v3       #image:Lcom/android/camera/ImageManager$IImage;
    .restart local v10       #sizeToUse:I
    :cond_10b
    if-eqz v3, :cond_11e

    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v11

    if-nez v11, :cond_11e

    .line 798
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-interface {v3, v10}, Lcom/android/camera/ImageManager$IImage;->fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/ViewImage$ImageGetter;->access$3002(Lcom/android/camera/ViewImage$ImageGetter;Lcom/android/camera/ImageManager$IGetBitmap_cancelable;)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    .line 800
    :cond_11e
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$3000(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    move-result-object v11

    if-eqz v11, :cond_143

    .line 806
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$3000(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/ImageManager$IGetBitmap_cancelable;->get()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 817
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/camera/ViewImage$ImageGetter;->access$3002(Lcom/android/camera/ViewImage$ImageGetter;Lcom/android/camera/ImageManager$IGetBitmap_cancelable;)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;

    .line 818
    if-eqz v0, :cond_143

    .line 819
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v11}, Lcom/android/camera/ViewImage$ImageGetter;->access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v11

    if-eqz v11, :cond_147

    .line 820
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 781
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v10           #sizeToUse:I
    :cond_143
    :goto_143
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_79

    .line 822
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v3       #image:Lcom/android/camera/ImageManager$IImage;
    .restart local v10       #sizeToUse:I
    :cond_147
    iget-object v11, p0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    iget-object v11, v11, Lcom/android/camera/ViewImage$ImageGetter;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v11}, Lcom/android/camera/ViewImage;->access$2900(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$LocalHandler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {p0, v7, v8, v12, v0}, Lcom/android/camera/ViewImage$ImageGetter$1;->callback(IIZLandroid/graphics/Bitmap;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$LocalHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto :goto_143

    .line 832
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #i:I
    .end local v3           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v4           #imageCount:I
    .end local v5           #imageNumber:I
    .end local v6           #j:I
    .end local v8           #offset:I
    .end local v9           #order:[I
    .end local v10           #sizeToUse:I
    :cond_158
    return-void
.end method
