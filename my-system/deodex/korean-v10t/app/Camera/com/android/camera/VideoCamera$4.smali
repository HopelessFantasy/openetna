.class Lcom/android/camera/VideoCamera$4;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->onKeyDown(ILandroid/view/KeyEvent;)Z
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
    .line 644
    iput-object p1, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/camera/VideoCamera$4;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1000(Lcom/android/camera/VideoCamera;)V

    .line 646
    return-void
.end method
