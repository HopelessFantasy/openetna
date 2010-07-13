.class Lcom/android/camera/Camera$15$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/Camera$15;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera$15;)V
    .registers 2
    .parameter

    .prologue
    .line 2168
    iput-object p1, p0, Lcom/android/camera/Camera$15$1;->this$1:Lcom/android/camera/Camera$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/camera/Camera$15$1;->this$1:Lcom/android/camera/Camera$15;

    iget-object v0, v0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$15$1;->this$1:Lcom/android/camera/Camera$15;

    iget-object v1, v1, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2000(Lcom/android/camera/Camera;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$1900(Lcom/android/camera/Camera;I)V

    .line 2170
    return-void
.end method
