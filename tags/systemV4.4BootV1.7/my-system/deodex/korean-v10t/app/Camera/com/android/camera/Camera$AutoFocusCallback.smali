.class final Lcom/android/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 426
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 6
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 433
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$Capturer;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 436
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$Capturer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/Camera$Capturer;->onSnap()V

    .line 437
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2500(Lcom/android/camera/Camera;)V

    .line 458
    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    .line 459
    return-void

    .line 438
    :cond_25
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4b

    .line 441
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2600(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 446
    .local v0, tg:Landroid/media/ToneGenerator;
    if-eqz p1, :cond_44

    .line 447
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2402(Lcom/android/camera/Camera;I)I

    .line 448
    if-eqz v0, :cond_1f

    .line 449
    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_1f

    .line 452
    :cond_44
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$2402(Lcom/android/camera/Camera;I)I

    goto :goto_1f

    .line 454
    .end local v0           #tg:Landroid/media/ToneGenerator;
    :cond_4b
    iget-object v1, p0, Lcom/android/camera/Camera$AutoFocusCallback;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2400(Lcom/android/camera/Camera;)I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_1f
.end method
