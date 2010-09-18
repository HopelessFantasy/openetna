.class Lcom/android/server/AccessibilityManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$200(Lcom/android/server/AccessibilityManagerService;)V

    .line 157
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    if-ne v1, v2, :cond_35

    .line 160
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_37

    move v2, v6

    :goto_2d
    invoke-static {v1, v2}, Lcom/android/server/AccessibilityManagerService;->access$402(Lcom/android/server/AccessibilityManagerService;Z)Z

    .line 162
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$500(Lcom/android/server/AccessibilityManagerService;)V

    .line 164
    :cond_35
    monitor-exit v0

    .line 165
    return-void

    :cond_37
    move v2, v5

    .line 160
    goto :goto_2d

    .line 164
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    throw v1
.end method
