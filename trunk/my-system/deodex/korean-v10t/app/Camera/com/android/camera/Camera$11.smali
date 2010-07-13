.class Lcom/android/camera/Camera$11;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/SelectedImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 2068
    iput-object p1, p0, Lcom/android/camera/Camera$11;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentImage()Lcom/android/camera/ImageManager$IImage;
    .registers 3

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/camera/Camera$11;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/Camera$11;->getCurrentImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$5200(Lcom/android/camera/Camera;Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentImageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/camera/Camera$11;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->keep()V

    .line 2070
    iget-object v0, p0, Lcom/android/camera/Camera$11;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$Capturer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/Camera$Capturer;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
