.class public Lcom/lge/elt_test/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/elt_test/CameraPreview;->mIsLoaded:Z

    .line 23
    invoke-virtual {p0}, Lcom/lge/elt_test/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 24
    iget-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 25
    iget-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public isLoaded()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/lge/elt_test/CameraPreview;->mIsLoaded:Z

    return v0
.end method

.method public previewEnabled()Z
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v0

    return v0
.end method

.method public setPreviewOnOff(Z)V
    .registers 3
    .parameter "isOn"

    .prologue
    .line 64
    if-eqz p1, :cond_8

    .line 65
    iget-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 69
    :goto_7
    return-void

    .line 67
    :cond_8
    iget-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_7
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 53
    const-string v1, "xxxxxxxxxxxxxxxxxxxxx"

    const-string v2, "surfaceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 57
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p3, p4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 58
    iget-object v1, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/elt_test/CameraPreview;->mIsLoaded:Z

    .line 61
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "holder"

    .prologue
    .line 29
    const-string v1, "xxxxxxxxxxxxxxxxxxxxx"

    const-string v2, "surfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 34
    :try_start_d
    iget-object v1, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_13

    .line 39
    :goto_12
    return-void

    .line 35
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 36
    .local v0, exception:Ljava/io/IOException;
    iget-object v1, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    goto :goto_12
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 42
    const-string v0, "xxxxxxxxxxxxxxxxxxxxx"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/elt_test/CameraPreview;->mCamera:Landroid/hardware/Camera;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/elt_test/CameraPreview;->mIsLoaded:Z

    .line 50
    return-void
.end method
