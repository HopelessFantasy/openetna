.class Landroid/content/SyncManager$SyncPollAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncPollAlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Landroid/content/SyncManager$SyncPollAlarmReceiver;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 724
    iget-object v0, p0, Landroid/content/SyncManager$SyncPollAlarmReceiver;->this$0:Landroid/content/SyncManager;

    invoke-static {v0}, Landroid/content/SyncManager;->access$1100(Landroid/content/SyncManager;)V

    .line 725
    return-void
.end method
