.class Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

.field final synthetic val$b:Landroid/graphics/Bitmap;

.field final synthetic val$count:I

.field final synthetic val$currentThread:Ljava/lang/Thread;

.field final synthetic val$item:Lcom/android/camera/GalleryPicker$Item;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;Ljava/lang/Thread;Landroid/graphics/Bitmap;ILcom/android/camera/GalleryPicker$Item;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    iput-object p2, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$currentThread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$b:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$count:I

    iput-object p5, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$item:Lcom/android/camera/GalleryPicker$Item;

    iput p6, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 420
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    iget-boolean v3, v3, Lcom/android/camera/GalleryPicker;->mPausing:Z

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$currentThread:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v4, v4, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mWorkerThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->realThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_22

    .line 421
    :cond_18
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_21

    .line 422
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    :cond_21
    :goto_21
    return-void

    .line 427
    :cond_22
    new-instance v2, Lcom/android/camera/GalleryPicker$ItemInfo;

    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-direct {v2, v3}, Lcom/android/camera/GalleryPicker$ItemInfo;-><init>(Lcom/android/camera/GalleryPicker;)V

    .line 428
    .local v2, info:Lcom/android/camera/GalleryPicker$ItemInfo;
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$b:Landroid/graphics/Bitmap;

    iput-object v3, v2, Lcom/android/camera/GalleryPicker$ItemInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 429
    iget v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$count:I

    iput v3, v2, Lcom/android/camera/GalleryPicker$ItemInfo;->count:I

    .line 430
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$item:Lcom/android/camera/GalleryPicker$Item;

    iput-object v2, v3, Lcom/android/camera/GalleryPicker$Item;->mThumb:Lcom/android/camera/GalleryPicker$ItemInfo;

    .line 432
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v1, v3, Lcom/android/camera/GalleryPicker;->mGridView:Landroid/widget/GridView;

    .line 433
    .local v1, grid:Landroid/widget/GridView;
    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 436
    .local v0, firstVisible:I
    iget v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$pos:I

    if-lt v3, v0, :cond_21

    iget v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->val$pos:I

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v4, v0

    if-ge v3, v4, :cond_21

    .line 437
    iget-object v3, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;->this$2:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;

    iget-object v3, v3, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-virtual {v3}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->notifyDataSetChanged()V

    goto :goto_21
.end method
