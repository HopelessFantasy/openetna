.class Lcom/android/settings/SecuritySettings$9;
.super Landroid/os/Handler;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->mProgressDialogShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .registers 2
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 690
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1300(Lcom/android/settings/SecuritySettings;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1c

    .line 693
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1400(Lcom/android/settings/SecuritySettings;)Z

    .line 694
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1500(Lcom/android/settings/SecuritySettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 700
    :goto_1b
    return-void

    .line 696
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1308(Lcom/android/settings/SecuritySettings;)I

    .line 697
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1500(Lcom/android/settings/SecuritySettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$9;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$1600(Lcom/android/settings/SecuritySettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1b
.end method
