.class Lcom/android/mms/util/RateController$1;
.super Landroid/content/BroadcastReceiver;
.source "RateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/RateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/RateController;


# direct methods
.method constructor <init>(Lcom/android/mms/util/RateController;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    const-string v0, "RateController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 62
    monitor-enter p0

    .line 63
    :try_start_25
    iget-object v0, p0, Lcom/android/mms/util/RateController$1;->this$0:Lcom/android/mms/util/RateController;

    const-string v1, "answer"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v1, 0x1

    :goto_31
    invoke-static {v0, v1}, Lcom/android/mms/util/RateController;->access$002(Lcom/android/mms/util/RateController;I)I

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0

    .line 68
    :cond_38
    return-void

    .line 63
    :cond_39
    const/4 v1, 0x2

    goto :goto_31

    .line 66
    :catchall_3b
    move-exception v0

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_25 .. :try_end_3d} :catchall_3b

    throw v0
.end method
