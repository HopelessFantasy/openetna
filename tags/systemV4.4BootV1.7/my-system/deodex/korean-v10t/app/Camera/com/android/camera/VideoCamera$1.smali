.class Lcom/android/camera/VideoCamera$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
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
    .line 254
    iput-object p1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 257
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;Z)V

    .line 258
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$800(Lcom/android/camera/VideoCamera;)V

    .line 259
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$900(Lcom/android/camera/VideoCamera;)Z

    .line 271
    :cond_1d
    :goto_1d
    return-void

    .line 260
    :cond_1e
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 261
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;Z)V

    .line 262
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$900(Lcom/android/camera/VideoCamera;)Z

    goto :goto_1d

    .line 263
    :cond_31
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 266
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 267
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v2, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1d

    .line 268
    :cond_56
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 269
    iget-object v1, p0, Lcom/android/camera/VideoCamera$1;->this$0:Lcom/android/camera/VideoCamera;

    invoke-static {v1, v2}, Lcom/android/camera/VideoCamera;->access$700(Lcom/android/camera/VideoCamera;Z)V

    goto :goto_1d
.end method
