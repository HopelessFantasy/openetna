.class Landroid/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_ALARMS:I = 0x3

.field private static final MESSAGE_SYNC_ALARM:I = 0x2

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1


# instance fields
.field private mAlarmScheduleTime:Ljava/lang/Long;

.field private mErrorNotificationInstalled:Z

.field public final mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

.field public final mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;Landroid/os/Looper;)V
    .registers 6
    .parameter
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    .line 1354
    iput-object p1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    .line 1355
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1314
    new-instance v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-direct {v0, p0}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;-><init>(Landroid/content/SyncManager$SyncHandler;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    .line 1315
    iput-object v2, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1316
    new-instance v0, Landroid/content/SyncManager$SyncTimeTracker;

    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager$SyncTimeTracker;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$1;)V

    iput-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    .line 1320
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    .line 1356
    return-void
.end method

.method static synthetic access$1200(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1308
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    return-object v0
.end method

.method private handleSyncHandlerMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "SyncManager"

    .line 1364
    :try_start_4
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_a3

    packed-switch v3, :pswitch_data_130

    .line 1421
    :cond_9
    :goto_9
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    if-eqz v3, :cond_12a

    move v1, v7

    .line 1422
    .local v1, isSyncInProgress:Z
    :goto_12
    if-nez v1, :cond_1d

    .line 1423
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1425
    :cond_1d
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotification()V

    .line 1426
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageErrorNotification()V

    .line 1427
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarm()V

    .line 1428
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v3}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1430
    :goto_2b
    return-void

    .line 1366
    .end local v1           #isSyncInProgress:Z
    :pswitch_2c
    :try_start_2c
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1367
    const-string v3, "SyncManager"

    const-string v4, "handleSyncHandlerMessage: MESSAGE_SYNC_FINISHED"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_3c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    .line 1370
    .local v2, payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    iget-object v4, v2, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    if-eq v3, v4, :cond_99

    .line 1372
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSyncHandlerMessage: sync context doesn\'t match, dropping: mActiveSyncContext "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/SyncManager$SyncHandlerMessagePayload;->activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_2c .. :try_end_74} :catchall_a3

    .line 1421
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    if-eqz v3, :cond_97

    move v1, v7

    .line 1422
    .restart local v1       #isSyncInProgress:Z
    :goto_7d
    if-nez v1, :cond_88

    .line 1423
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1425
    :cond_88
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotification()V

    .line 1426
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageErrorNotification()V

    .line 1427
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarm()V

    .line 1428
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v3}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    goto :goto_2b

    .end local v1           #isSyncInProgress:Z
    :cond_97
    move v1, v6

    .line 1421
    goto :goto_7d

    .line 1378
    :cond_99
    :try_start_99
    iget-object v3, v2, Landroid/content/SyncManager$SyncHandlerMessagePayload;->syncResult:Landroid/content/SyncResult;

    invoke-direct {p0, v3}, Landroid/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceled(Landroid/content/SyncResult;)V

    .line 1381
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_a3

    goto/16 :goto_9

    .line 1421
    .end local v2           #payload:Landroid/content/SyncManager$SyncHandlerMessagePayload;
    :catchall_a3
    move-exception v3

    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v4

    if-eqz v4, :cond_12d

    move v1, v7

    .line 1422
    .restart local v1       #isSyncInProgress:Z
    :goto_ad
    if-nez v1, :cond_b8

    .line 1423
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v4}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1425
    :cond_b8
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncNotification()V

    .line 1426
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageErrorNotification()V

    .line 1427
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->manageSyncAlarm()V

    .line 1428
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v4}, Landroid/content/SyncManager$SyncTimeTracker;->update()V

    .line 1429
    throw v3

    .line 1385
    .end local v1           #isSyncInProgress:Z
    :pswitch_c7
    :try_start_c7
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 1386
    .local v0, isLoggable:Z
    if-eqz v0, :cond_d7

    .line 1387
    const-string v3, "SyncManager"

    const-string v4, "handleSyncHandlerMessage: MESSAGE_SYNC_ALARM"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_d7
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;
    :try_end_da
    .catchall {:try_start_c7 .. :try_end_da} :catchall_a3

    .line 1391
    :try_start_da
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    if-eqz v3, :cond_ee

    .line 1392
    if-eqz v0, :cond_eb

    .line 1393
    const-string v3, "SyncManager"

    const-string v4, "handleSyncHandlerMessage: sync context is active"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :cond_eb
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateSyncing()V

    .line 1400
    :cond_ee
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    if-nez v3, :cond_102

    .line 1401
    if-eqz v0, :cond_ff

    .line 1402
    const-string v3, "SyncManager"

    const-string v4, "handleSyncHandlerMessage: sync context is not active"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_ff
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->runStateIdle()V
    :try_end_102
    .catchall {:try_start_da .. :try_end_102} :catchall_10d

    .line 1408
    :cond_102
    :try_start_102
    iget-object v3, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v3}, Landroid/content/SyncManager;->access$900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_9

    :catchall_10d
    move-exception v3

    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v4}, Landroid/content/SyncManager;->access$900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 1414
    .end local v0           #isLoggable:Z
    :pswitch_118
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1415
    const-string v3, "SyncManager"

    const-string v4, "handleSyncHandlerMessage: MESSAGE_CHECK_ALARMS"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catchall {:try_start_102 .. :try_end_128} :catchall_a3

    goto/16 :goto_9

    :cond_12a
    move v1, v6

    .line 1421
    goto/16 :goto_12

    :cond_12d
    move v1, v6

    goto/16 :goto_ad

    .line 1364
    :pswitch_data_130
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_c7
        :pswitch_118
    .end packed-switch
.end method

.method private installHandleTooManyDeletesNotification(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16
    .parameter "account"
    .parameter "authority"
    .parameter "numDeletes"

    .prologue
    const/4 v10, 0x0

    .line 1888
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1918
    :goto_9
    return-void

    .line 1889
    :cond_a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1890
    .local v1, clickIntent:Landroid/content/Intent;
    const-string v5, "com.android.providers.subscribedfeeds"

    const-string v6, "com.android.settings.SyncActivityTooManyDeletes"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1892
    const-string v5, "account"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1893
    const-string v5, "provider"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1894
    const-string v5, "numDeletes"

    invoke-virtual {v1, v5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1896
    invoke-direct {p0, v1}, Landroid/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 1897
    const-string v5, "SyncManager"

    const-string v6, "No activity found to handle too many deletes."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1901
    :cond_33
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x1000

    invoke-static {v5, v10, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1904
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1907
    .local v4, tooManyDeletesDescFormat:Ljava/lang/CharSequence;
    const-string v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, authorities:[Ljava/lang/String;
    new-instance v2, Landroid/app/Notification;

    const v5, 0x1080224

    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v6}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040071

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1912
    .local v2, notification:Landroid/app/Notification;
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v6}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040072

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v0, v10

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1916
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 1917
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_9
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1927
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1928
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1929
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1930
    .local v2, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v2, :cond_2b

    .line 1931
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1932
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_28

    .line 1934
    const/4 v5, 0x1

    .line 1938
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_27
    return v5

    .line 1930
    .restart local v4       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2b
    move v5, v6

    .line 1938
    goto :goto_27
.end method

.method private manageErrorNotification()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1792
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncStorageEngine;->getInitialSyncFailureTime()J

    move-result-wide v0

    .line 1793
    .local v0, when:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    const-wide/32 v2, 0x927c0

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 1794
    iget-boolean v2, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    if-nez v2, :cond_2a

    .line 1795
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v7}, Landroid/content/SyncManager;->access$2502(Landroid/content/SyncManager;Z)Z

    .line 1796
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1798
    :cond_2a
    iput-boolean v7, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    .line 1806
    :goto_2c
    return-void

    .line 1800
    :cond_2d
    iget-boolean v2, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    if-eqz v2, :cond_39

    .line 1801
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v2, v6}, Landroid/content/SyncManager;->access$2502(Landroid/content/SyncManager;Z)Z

    .line 1802
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1804
    :cond_39
    iput-boolean v6, p0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    goto :goto_2c
.end method

.method private manageSyncAlarm()V
    .registers 25

    .prologue
    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 1877
    :cond_c
    :goto_c
    return-void

    .line 1812
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)[Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1819
    const/4 v6, 0x0

    .line 1820
    .local v6, alarmTime:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v4

    .line 1821
    .local v4, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-nez v4, :cond_f3

    .line 1823
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v19

    monitor-enter v19

    .line 1824
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/SyncManager$SyncQueue;->head()Landroid/content/SyncManager$SyncOperation;

    move-result-object v14

    .line 1825
    .local v14, syncOperation:Landroid/content/SyncManager$SyncOperation;
    monitor-exit v19
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_f0

    .line 1826
    if-eqz v14, :cond_57

    .line 1827
    move-object v0, v14

    iget-wide v0, v0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1843
    .end local v14           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_57
    :goto_57
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncHandler;->mErrorNotificationInstalled:Z

    move/from16 v19, v0

    if-nez v19, :cond_96

    .line 1844
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncStorageEngine;->getInitialSyncFailureTime()J

    move-result-wide v17

    .line 1845
    .local v17, when:J
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_96

    .line 1846
    const-wide/32 v19, 0x927c0

    add-long v17, v17, v19

    .line 1848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v7, v17, v19

    .line 1849
    .local v7, delay:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    add-long v17, v19, v7

    .line 1850
    if-eqz v6, :cond_150

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    :goto_92
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1855
    .end local v7           #delay:J
    .end local v17           #when:J
    :cond_96
    const/4 v13, 0x0

    .line 1856
    .local v13, shouldSet:Z
    const/4 v12, 0x0

    .line 1857
    .local v12, shouldCancel:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    if-eqz v19, :cond_154

    const/16 v19, 0x1

    move/from16 v5, v19

    .line 1858
    .local v5, alarmIsActive:Z
    :goto_a4
    if-eqz v6, :cond_15a

    const/16 v19, 0x1

    move/from16 v9, v19

    .line 1859
    .local v9, needAlarm:Z
    :goto_aa
    if-eqz v9, :cond_160

    .line 1860
    if-eqz v5, :cond_c0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_c1

    .line 1861
    :cond_c0
    const/4 v13, 0x1

    .line 1868
    :cond_c1
    :goto_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$2700(Landroid/content/SyncManager;)V

    .line 1869
    if-eqz v13, :cond_163

    .line 1870
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1871
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$2900(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v19

    const/16 v20, 0x2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/content/SyncManager;->access$2800(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v23

    invoke-virtual/range {v19 .. v23}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_c

    .line 1825
    .end local v5           #alarmIsActive:Z
    .end local v9           #needAlarm:Z
    .end local v12           #shouldCancel:Z
    .end local v13           #shouldSet:Z
    :catchall_f0
    move-exception v20

    :try_start_f1
    monitor-exit v19
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v20

    .line 1830
    :cond_f3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$2600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x7530

    add-long v10, v19, v21

    .line 1832
    .local v10, notificationTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v19

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    move-wide/from16 v19, v0

    const-wide/32 v21, 0x493e0

    add-long v15, v19, v21

    .line 1834
    .local v15, timeoutTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$2600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    move/from16 v19, v0

    if-eqz v19, :cond_144

    .line 1835
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_57

    .line 1837
    :cond_144
    move-wide v0, v10

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_57

    .end local v10           #notificationTime:J
    .end local v15           #timeoutTime:J
    .restart local v7       #delay:J
    .restart local v17       #when:J
    :cond_150
    move-wide/from16 v19, v17

    .line 1850
    goto/16 :goto_92

    .line 1857
    .end local v7           #delay:J
    .end local v17           #when:J
    .restart local v12       #shouldCancel:Z
    .restart local v13       #shouldSet:Z
    :cond_154
    const/16 v19, 0x0

    move/from16 v5, v19

    goto/16 :goto_a4

    .line 1858
    .restart local v5       #alarmIsActive:Z
    :cond_15a
    const/16 v19, 0x0

    move/from16 v9, v19

    goto/16 :goto_aa

    .line 1864
    .restart local v9       #needAlarm:Z
    :cond_160
    move v12, v5

    goto/16 :goto_c1

    .line 1873
    :cond_163
    if-eqz v12, :cond_c

    .line 1874
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/SyncManager$SyncHandler;->mAlarmScheduleTime:Ljava/lang/Long;

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager;->access$2900(Landroid/content/SyncManager;)Landroid/app/AlarmManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/content/SyncManager;->access$2800(Landroid/content/SyncManager;)Landroid/app/PendingIntent;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_c
.end method

.method private manageSyncNotification()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1731
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v7}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    if-nez v7, :cond_47

    .line 1732
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 1736
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v2, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 1737
    .local v2, shouldCancel:Z
    const/4 v3, 0x0

    .line 1770
    .local v3, shouldInstall:Z
    :goto_14
    if-eqz v2, :cond_24

    if-nez v3, :cond_24

    .line 1771
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v7, v11}, Landroid/content/SyncManager;->access$2402(Landroid/content/SyncManager;Z)Z

    .line 1772
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1773
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v11, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 1776
    :cond_24
    if-eqz v3, :cond_46

    .line 1777
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v7}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    iget-object v5, v7, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    .line 1778
    .local v5, syncOperation:Landroid/content/SyncManager$SyncOperation;
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v7, v12}, Landroid/content/SyncManager;->access$2402(Landroid/content/SyncManager;Z)Z

    .line 1779
    invoke-direct {p0}, Landroid/content/SyncManager$SyncHandler;->sendSyncStateIntent()V

    .line 1780
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iput-boolean v12, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    .line 1781
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v5, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->account:Ljava/lang/String;

    .line 1782
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v5, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->authority:Ljava/lang/String;

    .line 1784
    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_46
    return-void

    .line 1740
    .end local v2           #shouldCancel:Z
    .end local v3           #shouldInstall:Z
    :cond_47
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v7}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v7

    iget-object v5, v7, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    .line 1742
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1743
    .local v0, now:J
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    if-nez v7, :cond_61

    .line 1744
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    .line 1748
    :cond_61
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v7, :cond_88

    iget-object v7, v5, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    iget-object v7, v5, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iget-object v8, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v8, v8, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->account:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    :cond_7f
    move v2, v12

    .line 1759
    .restart local v2       #shouldCancel:Z
    :goto_80
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-boolean v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->isActive:Z

    if-eqz v7, :cond_8a

    .line 1760
    move v3, v2

    .restart local v3       #shouldInstall:Z
    goto :goto_14

    .end local v2           #shouldCancel:Z
    .end local v3           #shouldInstall:Z
    :cond_88
    move v2, v11

    .line 1748
    goto :goto_80

    .line 1762
    .restart local v2       #shouldCancel:Z
    :cond_8a
    iget-object v7, p0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    iget-object v7, v7, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->startTime:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x7530

    add-long/2addr v7, v9

    cmp-long v7, v0, v7

    if-lez v7, :cond_a9

    move v6, v12

    .line 1764
    .local v6, timeToShowNotification:Z
    :goto_9a
    iget-object v7, v5, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    const-string v8, "force"

    invoke-virtual {v7, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1766
    .local v4, syncIsForced:Z
    if-nez v6, :cond_a6

    if-eqz v4, :cond_ab

    :cond_a6
    move v3, v12

    .restart local v3       #shouldInstall:Z
    :goto_a7
    goto/16 :goto_14

    .end local v3           #shouldInstall:Z
    .end local v4           #syncIsForced:Z
    .end local v6           #timeToShowNotification:Z
    :cond_a9
    move v6, v11

    .line 1762
    goto :goto_9a

    .restart local v4       #syncIsForced:Z
    .restart local v6       #timeToShowNotification:Z
    :cond_ab
    move v3, v11

    .line 1766
    goto :goto_a7
.end method

.method private runStateIdle()V
    .registers 23

    .prologue
    .line 1460
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    .line 1461
    .local v15, isLoggable:Z
    if-eqz v15, :cond_10

    const-string v4, "SyncManager"

    const-string v5, "runStateIdle"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$300(Landroid/content/SyncManager;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1465
    if-eqz v15, :cond_24

    .line 1466
    const-string v4, "SyncManager"

    const-string v5, "runStateIdle: no data connection, skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    const-string v5, "No data connection"

    invoke-static {v4, v5}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;Ljava/lang/String;)V

    .line 1623
    :goto_2e
    return-void

    .line 1472
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 1473
    if-eqz v15, :cond_43

    .line 1474
    const-string v4, "SyncManager"

    const-string v5, "runStateIdle: memory low, skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    const-string v5, "Memory low"

    invoke-static {v4, v5}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;Ljava/lang/String;)V

    goto :goto_2e

    .line 1482
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)[Ljava/lang/String;

    move-result-object v10

    .line 1483
    .local v10, accounts:[Ljava/lang/String;
    if-nez v10, :cond_6d

    .line 1484
    if-eqz v15, :cond_62

    .line 1485
    const-string v4, "SyncManager"

    const-string v5, "runStateIdle: accounts not known, skipping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    const-string v5, "Accounts not known yet"

    invoke-static {v4, v5}, Landroid/content/SyncManager;->access$1800(Landroid/content/SyncManager;Ljava/lang/String;)V

    goto :goto_2e

    .line 1495
    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/ConnectivityManager;

    .line 1497
    .local v12, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v11

    .line 1498
    .local v11, backgroundDataSetting:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v4

    monitor-enter v4

    .line 1500
    :cond_8c
    :goto_8c
    :try_start_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/SyncManager$SyncQueue;->head()Landroid/content/SyncManager$SyncOperation;

    move-result-object v5

    .line 1501
    .local v5, syncOperation:Landroid/content/SyncManager$SyncOperation;
    if-nez v5, :cond_a9

    .line 1502
    if-eqz v15, :cond_a4

    .line 1503
    const-string v5, "SyncManager"

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    const-string v6, "runStateIdle: no more sync operations, returning"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_a4
    monitor-exit v4

    goto :goto_2e

    .line 1566
    :catchall_a6
    move-exception v5

    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_8c .. :try_end_a8} :catchall_a6

    throw v5

    .line 1509
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$2000(Landroid/content/SyncManager;)Z

    move-result v6

    if-nez v6, :cond_db

    .line 1510
    if-eqz v15, :cond_ce

    .line 1511
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runStateIdle: sync disabled, dropping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/SyncManager$SyncQueue;->popHead()V

    goto :goto_8c

    .line 1518
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_db
    iget-object v6, v5, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    const-string v7, "force"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1520
    .local v14, force:Z
    if-nez v14, :cond_131

    if-eqz v11, :cond_109

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/SyncStorageEngine;->getListenForNetworkTickles()Z

    move-result v6

    if-eqz v6, :cond_109

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, v5, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/SyncStorageEngine;->getSyncProviderAutomatically(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_131

    .line 1524
    :cond_109
    if-eqz v15, :cond_123

    .line 1525
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runStateIdle: sync off, dropping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/SyncManager$SyncQueue;->popHead()V

    goto/16 :goto_8c

    .line 1532
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_131
    iget-object v6, v5, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    invoke-static {v10, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_161

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/SyncManager$SyncQueue;->popHead()V

    .line 1534
    if-eqz v15, :cond_8c

    .line 1535
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runStateIdle: account not present, dropping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 1542
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_161
    if-eqz v15, :cond_17b

    .line 1543
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runStateIdle: found sync candidate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_17b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1551
    .local v16, now:J
    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    move-wide/from16 v20, v0

    cmp-long v6, v20, v16

    if-lez v6, :cond_1d1

    .line 1552
    const-string v6, "SyncManager"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1ce

    .line 1553
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runStateIdle: the time is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " yet the next "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "sync operation is for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    move-wide/from16 v20, v0

    move-object v0, v7

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_1ce
    monitor-exit v4

    goto/16 :goto_2e

    .line 1562
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_1d1
    if-eqz v15, :cond_1eb

    .line 1563
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runStateIdle: we are going to sync "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/SyncManager$SyncQueue;->popHead()V

    .line 1566
    monitor-exit v4
    :try_end_1f8
    .catchall {:try_start_a9 .. :try_end_1f8} :catchall_a6

    .line 1568
    move-object v0, v5

    iget-object v0, v0, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1569
    .local v18, providerName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$000(Landroid/content/SyncManager;)V

    .line 1574
    :try_start_205
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$2100(Landroid/content/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v6

    .line 1575
    .local v6, contentProvider:Landroid/content/IContentProvider;
    if-nez v6, :cond_263

    .line 1576
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #contentProvider:Landroid/content/IContentProvider;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_238
    .catch Landroid/os/RemoteException; {:try_start_205 .. :try_end_238} :catch_23a
    .catch Ljava/lang/RuntimeException; {:try_start_205 .. :try_end_238} :catch_290

    goto/16 :goto_2e

    .line 1583
    :catch_23a
    move-exception v4

    move-object/from16 v19, v4

    .line 1584
    .local v19, remoteExc:Landroid/os/RemoteException;
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught a RemoteException while preparing for sync, rescheduling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4, v5}, Landroid/content/SyncManager;->access$2200(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;)J

    goto/16 :goto_2e

    .line 1579
    .end local v19           #remoteExc:Landroid/os/RemoteException;
    .restart local v6       #contentProvider:Landroid/content/IContentProvider;
    :cond_263
    :try_start_263
    invoke-interface {v6}, Landroid/content/IContentProvider;->getSyncAdapter()Landroid/content/ISyncAdapter;

    move-result-object v4

    if-nez v4, :cond_2af

    .line 1580
    const-string v4, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t syncable, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #contentProvider:Landroid/content/IContentProvider;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28e
    .catch Landroid/os/RemoteException; {:try_start_263 .. :try_end_28e} :catch_23a
    .catch Ljava/lang/RuntimeException; {:try_start_263 .. :try_end_28e} :catch_290

    goto/16 :goto_2e

    .line 1588
    :catch_290
    move-exception v4

    move-object v13, v4

    .line 1589
    .local v13, exc:Ljava/lang/RuntimeException;
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught a RuntimeException while validating sync of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 1594
    .end local v13           #exc:Ljava/lang/RuntimeException;
    .restart local v5       #syncOperation:Landroid/content/SyncManager$SyncOperation;
    .restart local v6       #contentProvider:Landroid/content/IContentProvider;
    :cond_2af
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->insertStartSyncEvent(Landroid/content/SyncManager$SyncOperation;)J

    move-result-wide v8

    .line 1597
    .local v8, historyRowId:J
    :try_start_2b6
    invoke-interface {v6}, Landroid/content/IContentProvider;->getSyncAdapter()Landroid/content/ISyncAdapter;

    move-result-object v7

    .line 1598
    .local v7, syncAdapter:Landroid/content/ISyncAdapter;
    new-instance v3, Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Landroid/content/SyncManager$ActiveSyncContext;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;Landroid/content/IContentProvider;Landroid/content/ISyncAdapter;J)V

    .line 1600
    .local v3, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1601
    const-string v4, "SyncManager"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #contentProvider:Landroid/content/IContentProvider;
    move-result v4

    if-eqz v4, :cond_2f1

    .line 1602
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "starting sync of "

    .end local v8           #historyRowId:J
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    :cond_2f1
    iget-object v4, v5, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    invoke-interface {v7, v3, v4, v6}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4, v3}, Landroid/content/SyncManager;->access$602(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_2b6 .. :try_end_315} :catch_317
    .catch Ljava/lang/RuntimeException; {:try_start_2b6 .. :try_end_315} :catch_34d

    goto/16 :goto_2e

    .line 1608
    .end local v3           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v7           #syncAdapter:Landroid/content/ISyncAdapter;
    :catch_317
    move-exception v4

    move-object/from16 v19, v4

    .line 1610
    .restart local v19       #remoteExc:Landroid/os/RemoteException;
    const-string v4, "SyncManager"

    const-string v6, "runStateIdle: caught a RemoteException, rescheduling"

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/content/SyncManager;->access$602(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4, v5}, Landroid/content/SyncManager;->access$2200(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;)J

    goto/16 :goto_2e

    .line 1615
    .end local v19           #remoteExc:Landroid/os/RemoteException;
    :catch_34d
    move-exception v4

    move-object v13, v4

    .line 1616
    .restart local v13       #exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/content/SyncManager;->access$602(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1618
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught a RuntimeException while starting the sync "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e
.end method

.method private runStateSyncing()V
    .registers 9

    .prologue
    const-wide/32 v6, 0x493e0

    .line 1435
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v4}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v0

    .line 1437
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1438
    .local v2, now:J
    iget-wide v4, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-lez v4, :cond_55

    .line 1440
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v4}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v4

    monitor-enter v4

    .line 1441
    :try_start_1b
    iget-object v5, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v5}, Landroid/content/SyncManager;->access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/SyncManager$SyncQueue;->head()Landroid/content/SyncManager$SyncOperation;

    move-result-object v1

    .line 1442
    .local v1, nextSyncOperation:Landroid/content/SyncManager$SyncOperation;
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_56

    .line 1443
    if-eqz v1, :cond_59

    iget-wide v4, v1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_59

    .line 1445
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceling and rescheduling sync because it ran too long: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    iget-object v5, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    invoke-static {v4, v5}, Landroid/content/SyncManager;->access$1700(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;)V

    .line 1449
    iget-object v4, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 1457
    .end local v1           #nextSyncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_55
    :goto_55
    return-void

    .line 1442
    :catchall_56
    move-exception v5

    :try_start_57
    monitor-exit v4
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw v5

    .line 1452
    .restart local v1       #nextSyncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_59
    add-long v4, v2, v6

    iput-wide v4, v0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    goto :goto_55
.end method

.method private runSyncFinishedOrCanceled(Landroid/content/SyncResult;)V
    .registers 25
    .parameter "syncResult"

    .prologue
    .line 1626
    const-string v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    .line 1627
    .local v22, isLoggable:Z
    if-eqz v22, :cond_10

    const-string v5, "SyncManager"

    const-string v6, "runSyncFinishedOrCanceled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v21

    .line 1629
    .local v21, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/content/SyncManager;->access$602(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v6, v0

    invoke-static {v6}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/SyncStorageEngine;->setActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)V

    .line 1632
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    move-object v8, v0

    .line 1634
    .local v8, syncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    move-wide v9, v0

    sub-long v12, v5, v9

    .line 1639
    .local v12, elapsedTime:J
    if-eqz p1, :cond_125

    .line 1640
    if-eqz v22, :cond_70

    .line 1641
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncFinishedOrCanceled: is a finished: operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_70
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_f5

    .line 1646
    if-eqz v22, :cond_90

    .line 1647
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finished sync operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_90
    const-string v9, "success"

    .line 1651
    .local v9, historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1652
    .local v11, downstreamActivity:I
    const/4 v10, 0x0

    .line 1678
    .local v10, upstreamActivity:I
    :goto_94
    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-wide v6, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Landroid/content/SyncManager$SyncHandler;->stopSyncEvent(JLandroid/content/SyncManager$SyncOperation;Ljava/lang/String;IIJ)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$2100(Landroid/content/SyncManager;)Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mContentProvider:Landroid/content/IContentProvider;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1683
    if-eqz p1, :cond_14d

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    move v5, v0

    if-eqz v5, :cond_14d

    .line 1684
    iget-object v5, v8, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v7, v0

    iget-wide v9, v7, Landroid/content/SyncStats;->numDeletes:J

    .end local v9           #historyMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1691
    :goto_cb
    if-eqz p1, :cond_f4

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    move v5, v0

    if-eqz v5, :cond_f4

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    new-instance v14, Landroid/content/SyncManager$SyncOperation;

    iget-object v15, v8, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    move/from16 v16, v0

    move-object v0, v8

    iget-object v0, v0, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v19, 0x0

    invoke-direct/range {v14 .. v20}, Landroid/content/SyncManager$SyncOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v5, v14}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncManager$SyncOperation;)V

    .line 1696
    :cond_f4
    return-void

    .line 1654
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncManager$SyncOperation;)V

    .line 1656
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed sync operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    invoke-direct/range {p0 .. p1}, Landroid/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1660
    .restart local v9       #historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1661
    .restart local v11       #downstreamActivity:I
    const/4 v10, 0x0

    .restart local v10       #upstreamActivity:I
    goto/16 :goto_94

    .line 1664
    .end local v9           #historyMessage:Ljava/lang/String;
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :cond_125
    if-eqz v22, :cond_13f

    .line 1665
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncFinishedOrCanceled: is a cancel: operation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_13f
    :try_start_13f
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    move-object v5, v0

    invoke-interface {v5}, Landroid/content/ISyncAdapter;->cancelSync()V
    :try_end_147
    .catch Landroid/os/RemoteException; {:try_start_13f .. :try_end_147} :catch_168

    .line 1673
    :goto_147
    const-string v9, "canceled"

    .line 1674
    .restart local v9       #historyMessage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1675
    .restart local v11       #downstreamActivity:I
    const/4 v10, 0x0

    .restart local v10       #upstreamActivity:I
    goto/16 :goto_94

    .line 1687
    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/SyncManager;->access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v5

    iget-object v6, v8, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    iget-object v7, v8, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_cb

    .line 1670
    .end local v9           #historyMessage:Ljava/lang/String;
    .end local v10           #upstreamActivity:I
    .end local v11           #downstreamActivity:I
    :catch_168
    move-exception v5

    goto :goto_147
.end method

.method private sendSyncStateIntent()V
    .registers 4

    .prologue
    .line 1880
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v0, syncStateIntent:Landroid/content/Intent;
    const-string v1, "active"

    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$2400(Landroid/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1882
    const-string v1, "failing"

    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$2500(Landroid/content/SyncManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1883
    iget-object v1, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v1}, Landroid/content/SyncManager;->access$1900(Landroid/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1884
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .registers 6
    .parameter "syncResult"

    .prologue
    const-wide/16 v2, 0x0

    .line 1708
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_8

    .line 1709
    const/4 v0, 0x1

    .line 1723
    :goto_7
    return v0

    .line 1710
    :cond_8
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 1711
    const/4 v0, 0x2

    goto :goto_7

    .line 1712
    :cond_12
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 1713
    const/4 v0, 0x3

    goto :goto_7

    .line 1714
    :cond_1c
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 1715
    const/4 v0, 0x4

    goto :goto_7

    .line 1716
    :cond_26
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 1717
    const/4 v0, 0x5

    goto :goto_7

    .line 1718
    :cond_30
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_36

    .line 1719
    const/4 v0, 0x6

    goto :goto_7

    .line 1720
    :cond_36
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_3c

    .line 1721
    const/4 v0, 0x7

    goto :goto_7

    .line 1722
    :cond_3c
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_43

    .line 1723
    const/16 v0, 0x8

    goto :goto_7

    .line 1724
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1359
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncHandler;->handleSyncHandlerMessage(Landroid/os/Message;)V

    .line 1360
    return-void
.end method

.method public insertStartSyncEvent(Landroid/content/SyncManager$SyncOperation;)J
    .registers 9
    .parameter "syncOperation"

    .prologue
    const/4 v6, 0x0

    .line 1942
    iget v5, p1, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    .line 1943
    .local v5, source:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1945
    .local v3, now:J
    const/16 v0, 0xaa0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1948
    iget-object v0, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v0}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->insertStartSyncEvent(Ljava/lang/String;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public stopSyncEvent(JLandroid/content/SyncManager$SyncOperation;Ljava/lang/String;IIJ)V
    .registers 21
    .parameter "rowId"
    .parameter "syncOperation"
    .parameter "resultMessage"
    .parameter "upstreamActivity"
    .parameter "downstreamActivity"
    .parameter "elapsedTime"

    .prologue
    .line 1954
    const/16 v2, 0xaa0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p3, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p3, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1957
    iget-object v2, p0, Landroid/content/SyncManager$SyncHandler;->this$0:Landroid/content/SyncManager;

    invoke-static {v2}, Landroid/content/SyncManager;->access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v2

    move/from16 v0, p6

    int-to-long v0, v0

    move-wide v8, v0

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide v10, v0

    move-wide v3, p1

    move-wide/from16 v5, p7

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v11}, Landroid/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJ)V

    .line 1959
    return-void
.end method
