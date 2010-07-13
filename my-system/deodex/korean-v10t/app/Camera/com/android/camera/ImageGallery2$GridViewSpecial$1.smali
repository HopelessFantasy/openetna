.class Lcom/android/camera/ImageGallery2$GridViewSpecial$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V
    .registers 2
    .parameter

    .prologue
    .line 860
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 812
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/widget/Scroller;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_21

    .line 813
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    move v1, v4

    .line 826
    :goto_20
    return v1

    .line 817
    :cond_21
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->computeSelectedIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 818
    .local v0, pos:I
    if-ltz v0, :cond_5c

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 819
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1, v0, v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    .line 823
    :goto_3e
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 824
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$1800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)V

    .line 825
    :cond_55
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->invalidate()V

    move v1, v3

    .line 826
    goto :goto_20

    .line 821
    :cond_5c
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    goto :goto_3e
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 831
    const v9, 0x451c4000

    .line 832
    .local v9, maxVelocity:F
    const v0, 0x451c4000

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4e

    .line 833
    const p4, 0x451c4000

    .line 837
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    .line 838
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 839
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1602(Lcom/android/camera/ImageGallery2$GridViewSpecial;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 840
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$2000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v2

    float-to-int v3, p4

    neg-int v4, v3

    iget-object v3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$2100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v8

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 841
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->computeScroll()V

    .line 843
    :cond_4c
    const/4 v0, 0x1

    return v0

    .line 834
    :cond_4e
    const v0, -0x3ae3c000

    cmpg-float v0, p4, v0

    if-gez v0, :cond_e

    .line 835
    const p4, -0x3ae3c000

    goto :goto_e
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->performLongClick()Z

    .line 849
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    .line 854
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    float-to-int v1, p4

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->scrollBy(II)V

    .line 855
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->invalidate()V

    .line 856
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 861
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    .line 862
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v1, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->computeSelectedIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 863
    .local v0, index:I
    if-ltz v0, :cond_2b

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ImageGallery2;->access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 864
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$1;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1, v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$300(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)V

    .line 865
    const/4 v1, 0x1

    .line 867
    :goto_2a
    return v1

    :cond_2b
    move v1, v3

    goto :goto_2a
.end method
