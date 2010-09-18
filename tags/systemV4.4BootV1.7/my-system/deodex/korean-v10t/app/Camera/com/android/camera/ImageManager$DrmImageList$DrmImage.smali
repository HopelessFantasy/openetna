.class Lcom/android/camera/ImageManager$DrmImageList$DrmImage;
.super Lcom/android/camera/ImageManager$Image;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager$DrmImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImage"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageManager$DrmImageList;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager$DrmImageList;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V
    .registers 17
    .parameter
    .parameter "id"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->this$1:Lcom/android/camera/ImageManager$DrmImageList;

    .line 2468
    iget-object v1, p1, Lcom/android/camera/ImageManager$DrmImageList;->this$0:Lcom/android/camera/ImageManager;

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p2

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    .line 2469
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDrm()Z
    .registers 2

    .prologue
    .line 2472
    const/4 v0, 0x1

    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .prologue
    .line 2476
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 2480
    const/16 v0, 0x60

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 2484
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
