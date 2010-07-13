.class Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "OrangePhotoDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;


# direct methods
.method constructor <init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 291
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "setnoimage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 292
    .local v1, mintent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-virtual {v2, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->access$002(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Z)Z

    .line 294
    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;->this$0:Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;

    invoke-virtual {v2}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->finish()V

    .line 302
    .end local v1           #mintent:Landroid/content/Intent;
    :cond_27
    return-void
.end method
