.class Lcom/android/camera/VideoCamera$10;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .registers 2
    .parameter

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/android/camera/VideoCamera$10;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 1078
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1079
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/VideoCamera$10;->this$0:Lcom/android/camera/VideoCamera;

    const-class v2, Lcom/android/camera/CameraSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1080
    iget-object v1, p0, Lcom/android/camera/VideoCamera$10;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V

    .line 1081
    const/4 v1, 0x1

    return v1
.end method
