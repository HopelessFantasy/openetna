.class Lcom/android/camera/VideoCamera$11;
.super Ljava/lang/Thread;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera;->VideoCameraTest(I)V
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
    .line 1450
    iput-object p1, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1455
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1200(Lcom/android/camera/VideoCamera;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    .line 1457
    const-wide/16 v0, 0x1b58

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_34

    .line 1481
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$600(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$11$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$11$1;-><init>(Lcom/android/camera/VideoCamera$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1486
    return-void

    .line 1466
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1200(Lcom/android/camera/VideoCamera;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    .line 1468
    const-wide/16 v0, 0x1d4c

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1470
    iget-object v0, p0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$1202(Lcom/android/camera/VideoCamera;I)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_34

    goto :goto_e

    .line 1480
    :catch_34
    move-exception v0

    goto :goto_e
.end method
