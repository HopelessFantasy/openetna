.class Lcom/android/camera/VideoCamera$11$1;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoCamera$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoCamera$11;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/android/camera/VideoCamera$11$1;->this$1:Lcom/android/camera/VideoCamera$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/android/camera/VideoCamera$11$1;->this$1:Lcom/android/camera/VideoCamera$11;

    iget-object v0, v0, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$11$1;->this$1:Lcom/android/camera/VideoCamera$11;

    iget-object v1, v1, Lcom/android/camera/VideoCamera$11;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$1200(Lcom/android/camera/VideoCamera;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;I)V

    .line 1484
    return-void
.end method
