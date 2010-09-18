.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const-string v8, "android.intent.extra.REPLACING"

    .line 335
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 338
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_22

    .line 369
    :cond_21
    :goto_21
    return-void

    .line 341
    :cond_22
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 348
    iget-object v4, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 349
    :try_start_3b
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 350
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_54

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 352
    iget-object v5, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked(Ljava/lang/String;)V

    .line 357
    :goto_4f
    monitor-exit v4

    goto :goto_21

    .end local v1           #extras:Landroid/os/Bundle;
    :catchall_51
    move-exception v5

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_51

    throw v5

    .line 355
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_54
    :try_start_54
    iget-object v5, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_51

    goto :goto_4f

    .line 359
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_5a
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 360
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 361
    .restart local v1       #extras:Landroid/os/Bundle;
    if-eqz v1, :cond_70

    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_21

    .line 364
    :cond_70
    iget-object v4, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 365
    :try_start_77
    iget-object v5, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked(Ljava/lang/String;)V

    .line 366
    monitor-exit v4

    goto :goto_21

    :catchall_7e
    move-exception v5

    monitor-exit v4
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_7e

    throw v5
.end method
