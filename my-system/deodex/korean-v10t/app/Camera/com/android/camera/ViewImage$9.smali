.class Lcom/android/camera/ViewImage$9;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/android/camera/ViewImage$ImageGetterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->setImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Z)V
    .registers 4
    .parameter "wasCanceled"

    .prologue
    const/4 v1, 0x1

    .line 941
    iget-object v0, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$400(Lcom/android/camera/ViewImage;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 942
    iget-object v0, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage$ImageViewTouch;->setFocusableInTouchMode(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ImageViewTouch;->requestFocus()Z

    .line 945
    :cond_1f
    return-void
.end method

.method public fullImageSizeToUse(II)I
    .registers 5
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 969
    const/16 v0, 0x1e0

    .line 970
    .local v0, imageViewSize:I
    const/16 v1, 0x1e0

    return v1
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;Z)V
    .registers 8
    .parameter "pos"
    .parameter "offset"
    .parameter "bitmap"
    .parameter "isThumb"

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-object v0, v1, v2

    .line 980
    .local v0, ivt:Lcom/android/camera/ImageViewTouchBase;
    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ImageViewTouch;->clear()V

    .line 981
    if-nez p2, :cond_14

    iget-object v1, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$100(Lcom/android/camera/ViewImage;)V

    .line 982
    :cond_14
    invoke-virtual {v0, p3, p4, p4}, Lcom/android/camera/ViewImage$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 983
    return-void
.end method

.method public loadOrder()[I
    .registers 2

    .prologue
    .line 974
    invoke-static {}, Lcom/android/camera/ViewImage;->access$3100()[I

    move-result-object v0

    return-object v0
.end method

.method public wantsFullImage(II)Z
    .registers 7
    .parameter "pos"
    .parameter "offset"

    .prologue
    const/4 v3, 0x0

    .line 953
    iget-object v1, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-object v0, v1, v2

    .line 954
    .local v0, ivt:Lcom/android/camera/ImageViewTouchBase;
    iget-object v1, v0, Lcom/android/camera/ViewImage$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_15

    iget-boolean v1, v0, Lcom/android/camera/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    if-nez v1, :cond_15

    move v1, v3

    .line 960
    :goto_14
    return v1

    .line 957
    :cond_15
    if-eqz p2, :cond_19

    move v1, v3

    .line 958
    goto :goto_14

    .line 960
    :cond_19
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public wantsThumbnail(II)Z
    .registers 6
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 948
    iget-object v1, p0, Lcom/android/camera/ViewImage$9;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v1}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aget-object v0, v1, v2

    .line 949
    .local v0, ivt:Lcom/android/camera/ImageViewTouchBase;
    iget-object v1, v0, Lcom/android/camera/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method
