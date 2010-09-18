.class final Lcom/android/camera/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .registers 5

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/VideoPreview;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoPreview;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 353
    .local v0, pictureSize:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/Camera$ShutterCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/VideoPreview;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoPreview;->setAspectRatio(II)V

    .line 354
    return-void
.end method
