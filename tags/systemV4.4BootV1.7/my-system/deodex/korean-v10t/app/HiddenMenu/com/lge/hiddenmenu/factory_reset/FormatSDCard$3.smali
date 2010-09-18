.class Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;
.super Landroid/content/BroadcastReceiver;
.source "FormatSDCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 172
    const-string v0, "FormatSDCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResultReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    invoke-static {v0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->access$000(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    move-result-object v0

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_UNMOUNT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    if-ne v0, v1, :cond_34

    .line 175
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    invoke-static {v0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->access$100(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)V

    .line 181
    :cond_33
    :goto_33
    return-void

    .line 177
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    invoke-static {v0}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->access$000(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;)Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    move-result-object v0

    sget-object v1, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;->REQ_FORMAT:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$FormatStatus;

    if-ne v0, v1, :cond_33

    .line 179
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard$3;->this$0:Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;->access$200(Lcom/lge/hiddenmenu/factory_reset/FormatSDCard;Z)V

    goto :goto_33
.end method
