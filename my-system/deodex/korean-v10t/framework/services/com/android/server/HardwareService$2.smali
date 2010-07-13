.class Lcom/android/server/HardwareService$2;
.super Landroid/content/BroadcastReceiver;
.source "HardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HardwareService;


# direct methods
.method constructor <init>(Lcom/android/server/HardwareService;)V
    .registers 2
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/HardwareService$2;->this$0:Lcom/android/server/HardwareService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 458
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 459
    iget-object v0, p0, Lcom/android/server/HardwareService$2;->this$0:Lcom/android/server/HardwareService;

    invoke-static {v0}, Lcom/android/server/HardwareService;->access$500(Lcom/android/server/HardwareService;)V

    .line 461
    :cond_11
    return-void
.end method
