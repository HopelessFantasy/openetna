.class Lcom/android/camera/ViewImage$5;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuInvoker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;

.field final synthetic val$selectedImageGetter:Lcom/android/camera/SelectedImageGetter;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;Lcom/android/camera/SelectedImageGetter;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/camera/ViewImage$5;->this$0:Lcom/android/camera/ViewImage;

    iput-object p2, p0, Lcom/android/camera/ViewImage$5;->val$selectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/camera/MenuHelper$MenuCallback;)V
    .registers 9
    .parameter "cb"

    .prologue
    const/4 v6, 0x1

    .line 541
    iget-object v4, p0, Lcom/android/camera/ViewImage$5;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v4, v6}, Lcom/android/camera/ViewImage;->access$300(Lcom/android/camera/ViewImage;I)V

    .line 542
    iget-object v4, p0, Lcom/android/camera/ViewImage$5;->val$selectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-interface {v4}, Lcom/android/camera/SelectedImageGetter;->getCurrentImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ViewImage$5;->val$selectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-interface {v5}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/android/camera/MenuHelper$MenuCallback;->run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V

    .line 543
    iget-object v4, p0, Lcom/android/camera/ViewImage$5;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v4}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v0

    .local v0, arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1d
    if-ge v1, v3, :cond_2b

    aget-object v2, v0, v1

    .line 544
    .local v2, iv:Lcom/android/camera/ImageViewTouchBase;
    invoke-virtual {v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->recycleBitmaps()V

    .line 545
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v6}, Lcom/android/camera/ViewImage$ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 547
    .end local v2           #iv:Lcom/android/camera/ImageViewTouchBase;
    :cond_2b
    iget-object v4, p0, Lcom/android/camera/ViewImage$5;->this$0:Lcom/android/camera/ViewImage;

    iget-object v5, p0, Lcom/android/camera/ViewImage$5;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v5}, Lcom/android/camera/ViewImage;->access$1200(Lcom/android/camera/ViewImage;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/camera/ViewImage;->access$1500(Lcom/android/camera/ViewImage;I)V

    .line 548
    return-void
.end method
