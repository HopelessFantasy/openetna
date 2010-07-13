.class Lcom/android/camera/Camera$5;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onStart()V
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
    .line 883
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)I

    move-result v1

    if-lez v1, :cond_1b

    const/4 v1, 0x1

    move v0, v1

    .line 886
    .local v0, storageOK:Z
    :goto_a
    if-nez v0, :cond_1a

    .line 887
    iget-object v1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/Camera$5$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$5$1;-><init>(Lcom/android/camera/Camera$5;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_1a
    return-void

    .line 884
    .end local v0           #storageOK:Z
    :cond_1b
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method
