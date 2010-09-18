.class Lcom/lge/hiddenmenu/factory_reset/FactoryReset$8;
.super Landroid/content/BroadcastReceiver;
.source "FactoryReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/factory_reset/FactoryReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;)V
    .registers 2
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$8;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "clear userdata failed"

    .line 433
    const-string v0, "HiddenMenu.FactoryReset"

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

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.FACTORY_RESET_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 435
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$8;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "clear userdata failed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->access$000(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;Ljava/lang/Throwable;)V

    .line 440
    :cond_32
    :goto_32
    return-void

    .line 437
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DELETE_USERDATA_FAILED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 438
    iget-object v0, p0, Lcom/lge/hiddenmenu/factory_reset/FactoryReset$8;->this$0:Lcom/lge/hiddenmenu/factory_reset/FactoryReset;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "clear userdata failed"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/factory_reset/FactoryReset;->access$100(Lcom/lge/hiddenmenu/factory_reset/FactoryReset;Ljava/lang/Throwable;)V

    goto :goto_32
.end method
