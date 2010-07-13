.class Lcom/android/server/status/StatusBarService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .registers 4
    .parameter

    .prologue
    .line 2141
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2143
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2144
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2145
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2146
    iget-object v1, p1, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2147
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2151
    const/4 v3, 0x0

    .line 2152
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarNotification;>;"
    iget-object v5, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    monitor-enter v5

    .line 2153
    :try_start_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2154
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_16

    .line 2155
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 2156
    .local v4, pkg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v6, v6, Lcom/android/server/status/StatusBarService;->mNotificationData:Lcom/android/server/status/NotificationViewList;

    invoke-virtual {v6, v4}, Lcom/android/server/status/NotificationViewList;->notificationsForPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2158
    .end local v4           #pkg:Ljava/lang/String;
    :cond_16
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_30

    .line 2160
    if-eqz v3, :cond_33

    .line 2161
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2162
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    if-ge v2, v0, :cond_33

    .line 2163
    iget-object v6, p0, Lcom/android/server/status/StatusBarService$UninstallReceiver;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/status/StatusBarNotification;

    iget-object v5, v5, Lcom/android/server/status/StatusBarNotification;->key:Landroid/os/IBinder;

    invoke-virtual {v6, v5}, Lcom/android/server/status/StatusBarService;->removeIcon(Landroid/os/IBinder;)V

    .line 2162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 2158
    .end local v0           #N:I
    .end local v1           #data:Landroid/net/Uri;
    .end local v2           #i:I
    :catchall_30
    move-exception v6

    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v6

    .line 2166
    .restart local v1       #data:Landroid/net/Uri;
    :cond_33
    return-void
.end method
