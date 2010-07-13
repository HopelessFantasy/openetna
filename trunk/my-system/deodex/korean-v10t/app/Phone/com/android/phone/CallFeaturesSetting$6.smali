.class Lcom/android/phone/CallFeaturesSetting$6;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

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

    .line 766
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 769
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2100(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2100(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 771
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2100(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 772
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$2202(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 787
    :cond_2f
    :goto_2f
    return-void

    .line 773
    :cond_30
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 775
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2300(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 776
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$2402(Lcom/android/phone/CallFeaturesSetting;Z)Z

    goto :goto_2f

    .line 777
    :cond_53
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 779
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 780
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$2602(Lcom/android/phone/CallFeaturesSetting;Z)Z

    goto :goto_2f

    .line 781
    :cond_76
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2700(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2700(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 783
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->access$2700(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 784
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$6;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v1, v2}, Lcom/android/phone/CallFeaturesSetting;->access$2802(Lcom/android/phone/CallFeaturesSetting;Z)Z

    goto :goto_2f
.end method
