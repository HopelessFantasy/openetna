.class Lcom/android/camera/Camera$4;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onCreate(Landroid/os/Bundle;)V
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
    .line 793
    iput-object p1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    iget-object v0, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {v1, v0}, Lcom/android/camera/Camera;->access$4402(Lcom/android/camera/Camera;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 795
    iget-object v0, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/Camera$4$1;

    iget-object v2, p0, Lcom/android/camera/Camera$4;->this$0:Lcom/android/camera/Camera;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$4$1;-><init>(Lcom/android/camera/Camera$4;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$4502(Lcom/android/camera/Camera;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    .line 804
    return-void
.end method
