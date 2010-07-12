.class Landroid/content/SyncManager$5;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/accounts/AccountMonitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Ljava/lang/String;)V
    .registers 8
    .parameter "accounts"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 295
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    move v1, v3

    .line 297
    .local v1, hadAccountsAlready:Z
    :goto_c
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 298
    .local v2, newAccounts:[Ljava/lang/String;
    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3, v2}, Landroid/content/SyncManager;->access$502(Landroid/content/SyncManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 302
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v0

    .line 303
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_36

    .line 304
    iget-object v3, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-object v3, v3, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 306
    const-string v3, "SyncManager"

    const-string v4, "canceling sync since the account has been removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3, v0, v5}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 314
    :cond_36
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$200(Landroid/content/SyncManager;)V

    .line 316
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->doDatabaseCleanup([Ljava/lang/String;)V

    .line 318
    if-eqz v1, :cond_54

    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_54

    .line 321
    iget-object v3, p0, Landroid/content/SyncManager$5;->this$0:Landroid/content/SyncManager;

    invoke-virtual {v3, v5, v5}, Landroid/content/SyncManager;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 323
    :cond_54
    return-void

    .end local v0           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v1           #hadAccountsAlready:Z
    .end local v2           #newAccounts:[Ljava/lang/String;
    :cond_55
    move v1, v4

    .line 295
    goto :goto_c
.end method
