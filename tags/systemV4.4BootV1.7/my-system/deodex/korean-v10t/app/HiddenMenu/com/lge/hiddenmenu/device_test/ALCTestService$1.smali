.class Lcom/lge/hiddenmenu/device_test/ALCTestService$1;
.super Ljava/lang/Object;
.source "ALCTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/ALCTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/ALCTestService;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 129
    const-string v0, "ALCValue"

    .line 130
    .local v0, ExtraName:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->ReadIntFromFile()I

    move-result v1

    .line 132
    .local v1, brightness:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ALC_STATUS_TEST"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-virtual {v3, v2}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-static {v3}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->access$000(Lcom/lge/hiddenmenu/device_test/ALCTestService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 138
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    iget-object v3, v3, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :goto_2f
    return-void

    .line 141
    :cond_30
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-virtual {v3}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->stopSelf()V

    .line 143
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-static {v3}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->access$100(Lcom/lge/hiddenmenu/device_test/ALCTestService;)Landroid/app/NotificationManager;

    move-result-object v3

    const v4, 0x7f0801d3

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 144
    iget-object v3, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;->this$0:Lcom/lge/hiddenmenu/device_test/ALCTestService;

    invoke-static {v3}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->access$100(Lcom/lge/hiddenmenu/device_test/ALCTestService;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-static {}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->access$200()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_2f
.end method
