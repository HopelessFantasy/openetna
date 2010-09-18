.class Lcom/android/camera/Camera$4$1;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$4;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$4;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/camera/Camera$4$1;->this$1:Lcom/android/camera/Camera$4;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 800
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    .line 801
    iget-object v0, p0, Lcom/android/camera/Camera$4$1;->this$1:Lcom/android/camera/Camera$4;

    iget-object v0, v0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->access$3802(Lcom/android/camera/Camera;I)I

    .line 802
    :cond_a
    return-void
.end method
