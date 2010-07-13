.class Lcom/android/camera/ImageGallery2$8$1;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDidSetProgress:Z

.field final synthetic this$1:Lcom/android/camera/ImageGallery2$8;

.field final synthetic val$progressTextFormatString:Ljava/lang/String;

.field final synthetic val$progressTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$8;Ljava/lang/String;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iput-object p2, p0, Lcom/android/camera/ImageGallery2$8$1;->val$progressTextFormatString:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/camera/ImageGallery2$8$1;->val$progressTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2$8$1;->mDidSetProgress:Z

    return-void
.end method


# virtual methods
.method public checking(II)Z
    .registers 9
    .parameter "count"
    .parameter "maxCount"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 577
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-boolean v0, v0, Lcom/android/camera/ImageGallery2;->mStopThumbnailChecking:Z

    if-eqz v0, :cond_c

    move v0, v5

    .line 604
    :goto_b
    return v0

    .line 581
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-boolean v0, v0, Lcom/android/camera/ImageGallery2;->mLayoutComplete:Z

    if-nez v0, :cond_16

    move v0, v4

    .line 582
    goto :goto_b

    .line 585
    :cond_16
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$8$1;->mDidSetProgress:Z

    if-nez v0, :cond_2a

    .line 586
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ImageGallery2$8$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageGallery2$8$1$1;-><init>(Lcom/android/camera/ImageGallery2$8$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    iput-boolean v4, p0, Lcom/android/camera/ImageGallery2$8$1;->mDidSetProgress:Z

    .line 593
    :cond_2a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->postInvalidate()V

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-wide v2, v2, Lcom/android/camera/ImageGallery2$8;->val$startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_50

    .line 596
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ImageGallery2$8$1$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/ImageGallery2$8$1$2;-><init>(Lcom/android/camera/ImageGallery2$8$1;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 604
    :cond_50
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$1;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    iget-boolean v0, v0, Lcom/android/camera/ImageGallery2;->mPausing:Z

    if-nez v0, :cond_5a

    move v0, v4

    goto :goto_b

    :cond_5a
    move v0, v5

    goto :goto_b
.end method
