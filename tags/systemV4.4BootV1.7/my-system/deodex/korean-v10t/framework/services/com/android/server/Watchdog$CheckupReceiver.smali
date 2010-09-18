.class final Lcom/android/server/Watchdog$CheckupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckupReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .registers 2
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/Watchdog$CheckupReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/Watchdog$CheckupReceiver;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->checkMemory()V

    .line 330
    return-void
.end method
