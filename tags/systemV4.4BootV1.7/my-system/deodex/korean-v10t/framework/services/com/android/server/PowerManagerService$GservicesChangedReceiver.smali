.class Lcom/android/server/PowerManagerService$GservicesChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GservicesChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 2317
    iput-object p1, p0, Lcom/android/server/PowerManagerService$GservicesChangedReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2317
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$GservicesChangedReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/server/PowerManagerService$GservicesChangedReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;)V

    .line 2322
    return-void
.end method
