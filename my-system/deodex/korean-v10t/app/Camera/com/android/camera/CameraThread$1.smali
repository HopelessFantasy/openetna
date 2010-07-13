.class Lcom/android/camera/CameraThread$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;-><init>(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;I)V

    .line 42
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/CameraThread$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_14

    .line 44
    iget-object v0, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)V

    .line 46
    return-void

    .line 44
    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/CameraThread$1;->this$0:Lcom/android/camera/CameraThread;

    invoke-static {v1}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)V

    throw v0
.end method
