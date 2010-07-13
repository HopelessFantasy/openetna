.class Lcom/android/phone/CallBarringSetting$6;
.super Landroid/content/BroadcastReceiver;
.source "CallBarringSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallBarringSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallBarringSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 398
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1400(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1400(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 400
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1400(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 401
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallBarringSetting;->access$1502(Lcom/android/phone/CallBarringSetting;Z)Z

    .line 412
    :cond_2f
    :goto_2f
    return-void

    .line 402
    :cond_30
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1600(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1600(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 404
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1600(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 405
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallBarringSetting;->access$1702(Lcom/android/phone/CallBarringSetting;Z)Z

    goto :goto_2f

    .line 406
    :cond_53
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1800(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1800(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 408
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1}, Lcom/android/phone/CallBarringSetting;->access$1800(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 409
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting$6;->this$0:Lcom/android/phone/CallBarringSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallBarringSetting;->access$1902(Lcom/android/phone/CallBarringSetting;Z)Z

    goto :goto_2f
.end method
