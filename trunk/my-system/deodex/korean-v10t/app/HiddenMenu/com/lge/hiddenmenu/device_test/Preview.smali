.class Lcom/lge/hiddenmenu/device_test/Preview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field mCamera:Landroid/hardware/Camera;

.field mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/Preview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mHolder:Landroid/view/SurfaceHolder;

    .line 74
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 75
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 105
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p3, p4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 106
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 107
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 108
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 81
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    .line 83
    :try_start_6
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    .line 89
    :goto_b
    return-void

    .line 84
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 85
    .local v0, exception:Ljava/io/IOException;
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    goto :goto_b
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 96
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/Preview;->mCamera:Landroid/hardware/Camera;

    .line 99
    return-void
.end method
