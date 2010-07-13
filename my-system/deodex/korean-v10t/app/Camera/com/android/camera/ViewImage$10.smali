.class Lcom/android/camera/ViewImage$10;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Lcom/android/camera/ViewImage$ImageGetterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->loadNextImage(IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;

.field final synthetic val$firstCall:Z

.field final synthetic val$requestedPos:I

.field final synthetic val$targetDisplayTime:J


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;JIZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    iput-wide p2, p0, Lcom/android/camera/ViewImage$10;->val$targetDisplayTime:J

    iput p4, p0, Lcom/android/camera/ViewImage$10;->val$requestedPos:I

    iput-boolean p5, p0, Lcom/android/camera/ViewImage$10;->val$firstCall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Z)V
    .registers 2
    .parameter "wasCanceled"

    .prologue
    .line 1261
    return-void
.end method

.method public fullImageSizeToUse(II)I
    .registers 4
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 1276
    const/16 v0, 0x1e0

    return v0
.end method

.method public imageLoaded(IILandroid/graphics/Bitmap;Z)V
    .registers 13
    .parameter "pos"
    .parameter "offset"
    .parameter "bitmap"
    .parameter "isThumb"

    .prologue
    .line 1280
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/android/camera/ViewImage$10;->val$targetDisplayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1281
    .local v0, timeRemaining:J
    iget-object v2, p0, Lcom/android/camera/ViewImage$10;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v2}, Lcom/android/camera/ViewImage;->access$2900(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$LocalHandler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ViewImage$10$1;

    invoke-direct {v3, p0, p3, p4}, Lcom/android/camera/ViewImage$10$1;-><init>(Lcom/android/camera/ViewImage$10;Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/camera/ViewImage$LocalHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 1341
    return-void
.end method

.method public loadOrder()[I
    .registers 2

    .prologue
    .line 1272
    invoke-static {}, Lcom/android/camera/ViewImage;->access$3200()[I

    move-result-object v0

    return-object v0
.end method

.method public wantsFullImage(II)Z
    .registers 4
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 1268
    const/4 v0, 0x0

    return v0
.end method

.method public wantsThumbnail(II)Z
    .registers 4
    .parameter "pos"
    .parameter "offset"

    .prologue
    .line 1264
    const/4 v0, 0x1

    return v0
.end method
