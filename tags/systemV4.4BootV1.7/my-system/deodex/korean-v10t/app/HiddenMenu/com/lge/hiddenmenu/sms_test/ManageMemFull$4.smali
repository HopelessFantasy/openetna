.class Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;
.super Ljava/lang/Object;
.source "ManageMemFull.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)V
    .registers 2
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;->this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 71
    const-string v0, "ManageMemFull"

    const-string v1, "[RHS 0408] resetButton "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;->this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->access$102(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;Landroid/content/Intent;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;->this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;

    iget-object v1, p0, Lcom/lge/hiddenmenu/sms_test/ManageMemFull$4;->this$0:Lcom/lge/hiddenmenu/sms_test/ManageMemFull;

    invoke-static {v1}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->access$100(Lcom/lge/hiddenmenu/sms_test/ManageMemFull;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/sms_test/ManageMemFull;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
