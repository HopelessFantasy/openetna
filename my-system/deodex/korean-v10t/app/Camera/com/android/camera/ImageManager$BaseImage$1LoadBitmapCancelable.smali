.class final Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$BaseImage;->fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mCancelInitiationTime:J

.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field mPFD:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$1:Lcom/android/camera/ImageManager$BaseImage;

.field final synthetic val$targetWidthHeight:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    .registers 5
    .parameter
    .parameter "pfdInput"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iput p3, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v0, p1, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    .line 357
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 361
    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 362
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .registers 3

    .prologue
    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    .line 368
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iget v3, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->val$targetWidthHeight:I

    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mPFD:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 375
    .local v0, b:Landroid/graphics/Bitmap;
    iget-wide v2, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    .line 379
    :cond_1a
    if-eqz v0, :cond_26

    .line 380
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_2b

    move-result-object v0

    .line 386
    :cond_26
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    move-object v2, v0

    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_2a
    return-object v2

    .line 383
    :catch_2b
    move-exception v2

    move-object v1, v2

    .line 384
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_2a

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_32
    move-exception v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v2
.end method
