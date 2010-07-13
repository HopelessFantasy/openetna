.class Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Lcom/android/camera/ImageLoader$LoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->loadImage(IILcom/android/camera/ImageManager$IImage;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

.field final synthetic val$base:I

.field final synthetic val$baseOffset:I

.field final synthetic val$image:Lcom/android/camera/ImageManager$IImage;

.field final synthetic val$startBlock:I

.field final synthetic val$xPos:I

.field final synthetic val$yPos:I


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;ILcom/android/camera/ImageManager$IImage;IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1646
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iput p2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$startBlock:I

    iput-object p3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$image:Lcom/android/camera/ImageManager$IImage;

    iput p4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$base:I

    iput p5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$baseOffset:I

    iput p6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$xPos:I

    iput p7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$yPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .registers 13
    .parameter "b"

    .prologue
    const/4 v10, 0x1

    .line 1647
    const/4 v8, 0x0

    .line 1648
    .local v8, more:Z
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    monitor-enter v9

    .line 1649
    :try_start_5
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$startBlock:I

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    if-eq v0, v1, :cond_f

    .line 1651
    monitor-exit v9

    .line 1684
    :cond_e
    :goto_e
    return-void

    .line 1654
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    .line 1655
    monitor-exit v9

    goto :goto_e

    .line 1672
    :catchall_17
    move-exception v0

    monitor-exit v9
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v0

    .line 1658
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$image:Lcom/android/camera/ImageManager$IImage;

    iget v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$base:I

    iget v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$baseOffset:I

    iget v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$xPos:I

    iget v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$yPos:I

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$5100(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;Lcom/android/camera/ImageManager$IImage;IILandroid/graphics/Bitmap;II)V

    .line 1660
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->val$baseOffset:I

    shl-int v7, v10, v0

    .line 1661
    .local v7, mask:I
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget v1, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    xor-int/lit8 v2, v7, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    .line 1662
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget v1, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCompletedMask:I

    or-int/2addr v1, v7

    iput v1, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mCompletedMask:I

    .line 1666
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    if-nez v0, :cond_54

    .line 1667
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-boolean v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    if-eqz v0, :cond_53

    .line 1668
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->postInvalidate()V

    .line 1670
    :cond_53
    const/4 v8, 0x1

    .line 1672
    :cond_54
    monitor-exit v9
    :try_end_55
    .catchall {:try_start_1a .. :try_end_55} :catchall_17

    .line 1673
    if-eqz p1, :cond_5a

    .line 1674
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1676
    :cond_5a
    if-eqz v8, :cond_e

    .line 1677
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    monitor-enter v0

    .line 1678
    :try_start_61
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1679
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock$1;->this$2:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iget-object v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->this$1:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$2612(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)I

    .line 1680
    monitor-exit v0

    goto :goto_e

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_61 .. :try_end_74} :catchall_72

    throw v1
.end method
