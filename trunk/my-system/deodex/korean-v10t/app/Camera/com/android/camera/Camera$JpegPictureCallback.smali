.class final Lcom/android/camera/Camera$JpegPictureCallback;
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
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/location/Location;)V
    .registers 5
    .parameter
    .parameter "loc"

    .prologue
    const/4 v1, 0x0

    .line 388
    iput-object p1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 390
    invoke-static {p1}, Lcom/android/camera/Camera;->access$1800(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 391
    invoke-static {p1, v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;I)V

    .line 392
    :cond_11
    invoke-static {p1, v1}, Lcom/android/camera/Camera;->access$2002(Lcom/android/camera/Camera;I)I

    .line 393
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 5
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 412
    :cond_8
    :goto_8
    return-void

    .line 408
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2200(Lcom/android/camera/Camera;)V

    .line 409
    if-eqz p1, :cond_8

    .line 410
    iget-object v0, p0, Lcom/android/camera/Camera$JpegPictureCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    goto :goto_8
.end method
