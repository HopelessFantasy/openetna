.class public Lcom/lge/hiddenmenu/device_test/CameraPreview;
.super Landroid/app/Activity;
.source "CameraPreview.java"


# instance fields
.field private mPreview:Lcom/lge/hiddenmenu/device_test/Preview;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->acquire(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/CameraPreview;->requestWindowFeature(I)Z

    .line 47
    new-instance v0, Lcom/lge/hiddenmenu/device_test/Preview;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/Preview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/CameraPreview;->mPreview:Lcom/lge/hiddenmenu/device_test/Preview;

    .line 48
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/CameraPreview;->mPreview:Lcom/lge/hiddenmenu/device_test/Preview;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/CameraPreview;->setContentView(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 56
    invoke-static {}, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->release()V

    .line 58
    return-void
.end method
