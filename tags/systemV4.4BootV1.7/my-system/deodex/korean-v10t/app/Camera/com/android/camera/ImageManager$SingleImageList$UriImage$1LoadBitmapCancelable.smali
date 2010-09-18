.class final Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBitmap_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadBitmapCancelable"
.end annotation


# instance fields
.field mCancelInitiationTime:J

.field mOptions:Landroid/graphics/BitmapFactory$Options;

.field pfdInput:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

.field final synthetic val$targetWidthOrHeight:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager$SingleImageList$UriImage;Landroid/os/ParcelFileDescriptor;I)V
    .registers 5
    .parameter
    .parameter "pfd"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2974
    iput-object p1, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    iput p3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->val$targetWidthOrHeight:I

    iget-object v0, p1, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget-object v0, v0, Lcom/android/camera/ImageManager$SingleImageList;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    .line 2971
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2975
    iput-object p2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->pfdInput:Landroid/os/ParcelFileDescriptor;

    .line 2976
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .registers 3

    .prologue
    .line 2981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mCancelInitiationTime:J

    .line 2982
    iget-object v0, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 2983
    const/4 v0, 0x1

    return v0
.end method

.method public get()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 2988
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    iget-object v2, v2, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->this$1:Lcom/android/camera/ImageManager$SingleImageList;

    iget v3, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->val$targetWidthOrHeight:I

    iget-object v4, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->this$2:Lcom/android/camera/ImageManager$SingleImageList$UriImage;

    invoke-virtual {v4}, Lcom/android/camera/ImageManager$SingleImageList$UriImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->pfdInput:Landroid/os/ParcelFileDescriptor;

    iget-object v6, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/ImageManager$SingleImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2989
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->mCancelInitiationTime:J
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_23

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1e

    .line 2998
    :cond_1e
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    move-object v2, v0

    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_22
    return-object v2

    .line 2995
    :catch_23
    move-exception v2

    move-object v1, v2

    .line 2996
    .local v1, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 2998
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    goto :goto_22

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_2a
    move-exception v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$SingleImageList$UriImage$1LoadBitmapCancelable;->acknowledgeCancel()V

    throw v2
.end method
