.class Lcom/android/camera/Camera$15;
.super Ljava/lang/Thread;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->CameraTest(I)V
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
    .line 2147
    iput-object p1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2151
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 2153
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_2c

    .line 2167
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$15$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$15$1;-><init>(Lcom/android/camera/Camera$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2172
    return-void

    .line 2157
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    .line 2159
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_e

    .line 2166
    :catch_2c
    move-exception v0

    goto :goto_e

    .line 2161
    :cond_2e
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 2163
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3c} :catch_2c

    goto :goto_e
.end method
