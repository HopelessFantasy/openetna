.class final Lcom/android/camera/Camera$RawPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 7
    .parameter "rawData"
    .parameter "camera"

    .prologue
    const/4 v3, 0x3

    .line 361
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Camera;->access$1602(Lcom/android/camera/Camera;J)J

    .line 376
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, v3}, Lcom/android/camera/Camera;->access$402(Lcom/android/camera/Camera;I)I

    .line 377
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/VideoPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoPreview;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$1700(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 379
    iget-object v0, p0, Lcom/android/camera/Camera$RawPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 382
    :cond_2a
    return-void
.end method
