.class Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;
.super Ljava/lang/Object;
.source "GalleryPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 448
    :cond_a
    :goto_a
    return-void

    .line 403
    :cond_b
    const/4 v8, 0x0

    .local v8, i:I
    :goto_c
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-boolean v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mDone:Z

    if-nez v0, :cond_a

    .line 404
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/GalleryPicker$Item;

    .line 405
    .local v5, item:Lcom/android/camera/GalleryPicker$Item;
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-virtual {v5}, Lcom/android/camera/GalleryPicker$Item;->getIncludeMediaTypes()I

    move-result v1

    iget-object v10, v5, Lcom/android/camera/GalleryPicker$Item;->mId:Ljava/lang/String;

    invoke-static {v0, v1, v10}, Lcom/android/camera/GalleryPicker;->access$500(Lcom/android/camera/GalleryPicker;ILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_40

    move-result-object v9

    .line 408
    .local v9, list:Lcom/android/camera/ImageManager$IImageList;
    :try_start_34
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    iget-boolean v0, v0, Lcom/android/camera/GalleryPicker;->mPausing:Z
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_85

    if-eqz v0, :cond_4a

    .line 442
    :try_start_3c
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_a

    .line 445
    .end local v5           #item:Lcom/android/camera/GalleryPicker$Item;
    .end local v8           #i:I
    .end local v9           #list:Lcom/android/camera/ImageManager$IImageList;
    :catch_40
    move-exception v0

    move-object v7, v0

    .line 446
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "GalleryPicker"

    const-string v1, "got exception generating collage views "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 411
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v5       #item:Lcom/android/camera/GalleryPicker$Item;
    .restart local v8       #i:I
    .restart local v9       #list:Lcom/android/camera/ImageManager$IImageList;
    :cond_4a
    :try_start_4a
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v0

    if-lez v0, :cond_5b

    .line 412
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v5, Lcom/android/camera/GalleryPicker$Item;->mFirstImageUri:Landroid/net/Uri;

    .line 414
    :cond_5b
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    const/16 v1, 0x8e

    const/16 v10, 0x8e

    invoke-static {v0, v1, v10, v9}, Lcom/android/camera/GalleryPicker;->access$600(Lcom/android/camera/GalleryPicker;IILcom/android/camera/ImageManager$IImageList;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 415
    .local v3, b:Landroid/graphics/Bitmap;
    move v6, v8

    .line 416
    .local v6, pos:I
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    .line 417
    .local v4, count:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 418
    .local v2, currentThread:Ljava/lang/Thread;
    iget-object v0, p0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;->this$1:Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;

    iget-object v0, v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter;->this$0:Lcom/android/camera/GalleryPicker;

    iget-object v10, v0, Lcom/android/camera/GalleryPicker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1$1;-><init>(Lcom/android/camera/GalleryPicker$GalleryPickerAdapter$1;Ljava/lang/Thread;Landroid/graphics/Bitmap;ILcom/android/camera/GalleryPicker$Item;I)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7f
    .catchall {:try_start_4a .. :try_end_7f} :catchall_85

    .line 442
    :try_start_7f
    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 403
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 442
    .end local v2           #currentThread:Ljava/lang/Thread;
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v4           #count:I
    .end local v6           #pos:I
    :catchall_85
    move-exception v0

    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    throw v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_40
.end method
