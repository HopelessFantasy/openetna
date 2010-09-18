.class Lcom/android/camera/ViewImage$1;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ViewImage;->setupZoomButtonController(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ViewImage;


# direct methods
.method constructor <init>(Lcom/android/camera/ViewImage;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/camera/ViewImage$1;->this$0:Lcom/android/camera/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 235
    if-eqz p1, :cond_7

    .line 236
    iget-object v0, p0, Lcom/android/camera/ViewImage$1;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$100(Lcom/android/camera/ViewImage;)V

    .line 238
    :cond_7
    return-void
.end method

.method public onZoom(Z)V
    .registers 4
    .parameter "zoomIn"

    .prologue
    const/4 v1, 0x1

    .line 241
    if-eqz p1, :cond_f

    .line 242
    iget-object v0, p0, Lcom/android/camera/ViewImage$1;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ImageViewTouch;->zoomIn()V

    .line 246
    :goto_e
    return-void

    .line 244
    :cond_f
    iget-object v0, p0, Lcom/android/camera/ViewImage$1;->this$0:Lcom/android/camera/ViewImage;

    invoke-static {v0}, Lcom/android/camera/ViewImage;->access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ImageViewTouch;->zoomOut()V

    goto :goto_e
.end method
