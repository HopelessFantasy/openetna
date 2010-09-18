.class Lcom/android/camera/CropImage$4$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CropImage$4;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage$4;)V
    .registers 2
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 758
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v3, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget v3, v3, Lcom/android/camera/CropImage$4;->mNumFaces:I

    if-le v3, v4, :cond_2b

    move v3, v4

    :goto_d
    invoke-static {v2, v3}, Lcom/android/camera/CropImage;->access$102(Lcom/android/camera/CropImage;Z)Z

    .line 759
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget v2, v2, Lcom/android/camera/CropImage$4;->mNumFaces:I

    if-lez v2, :cond_2d

    .line 760
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget v2, v2, Lcom/android/camera/CropImage$4;->mNumFaces:I

    if-ge v0, v2, :cond_32

    .line 761
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v3, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v3, v3, Lcom/android/camera/CropImage$4;->mFaces:[Landroid/media/FaceDetector$Face;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/android/camera/CropImage$4;->access$1500(Lcom/android/camera/CropImage$4;Landroid/media/FaceDetector$Face;)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .end local v0           #i:I
    :cond_2b
    move v3, v5

    .line 758
    goto :goto_d

    .line 764
    :cond_2d
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    invoke-static {v2}, Lcom/android/camera/CropImage$4;->access$1600(Lcom/android/camera/CropImage$4;)V

    .line 766
    :cond_32
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    invoke-virtual {v2}, Lcom/android/camera/CropImage$CropImageView;->invalidate()V

    .line 767
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    iget-object v2, v2, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_66

    .line 768
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v3, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    iget-object v2, v2, Lcom/android/camera/CropImage$CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/HighlightView;

    iput-object v2, v3, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    .line 769
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    iget-object v2, v2, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    invoke-virtual {v2, v4}, Lcom/android/camera/HighlightView;->setFocus(Z)V

    .line 772
    :cond_66
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v2}, Lcom/android/camera/CropImage;->access$1700(Lcom/android/camera/CropImage;)V

    .line 774
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget v2, v2, Lcom/android/camera/CropImage$4;->mNumFaces:I

    if-le v2, v4, :cond_81

    .line 775
    iget-object v2, p0, Lcom/android/camera/CropImage$4$1;->this$1:Lcom/android/camera/CropImage$4;

    iget-object v2, v2, Lcom/android/camera/CropImage$4;->this$0:Lcom/android/camera/CropImage;

    const v3, 0x7f09009c

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 776
    .local v1, t:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 778
    .end local v1           #t:Landroid/widget/Toast;
    :cond_81
    return-void
.end method
