.class Lcom/android/camera/ViewImage$ImageGetter$1$1;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage$ImageGetter$1;->callback(IIZLandroid/graphics/Bitmap;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isThumb:Z

.field final synthetic val$offset:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage$ImageGetter$1;IILandroid/graphics/Bitmap;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

    iput p2, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$position:I

    iput p3, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$offset:I

    iput-object p4, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$isThumb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

    iget-object v0, v0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v0}, Lcom/android/camera/ViewImage$ImageGetter;->access$2300(Lcom/android/camera/ViewImage$ImageGetter;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$position:I

    iget-object v1, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

    iget-object v1, v1, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v1}, Lcom/android/camera/ViewImage$ImageGetter;->access$2400(Lcom/android/camera/ViewImage$ImageGetter;)I

    move-result v1

    if-ne v0, v1, :cond_2a

    .line 723
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->this$2:Lcom/android/camera/ViewImage$ImageGetter$1;

    iget-object v0, v0, Lcom/android/camera/ViewImage$ImageGetter$1;->this$1:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v0}, Lcom/android/camera/ViewImage$ImageGetter;->access$2500(Lcom/android/camera/ViewImage$ImageGetter;)Lcom/android/camera/ViewImage$ImageGetterCallback;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$position:I

    iget v2, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$offset:I

    iget-object v3, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$isThumb:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/ViewImage$ImageGetterCallback;->imageLoaded(IILandroid/graphics/Bitmap;Z)V

    .line 727
    :cond_29
    :goto_29
    return-void

    .line 724
    :cond_2a
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 725
    iget-object v0, p0, Lcom/android/camera/ViewImage$ImageGetter$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_29
.end method
