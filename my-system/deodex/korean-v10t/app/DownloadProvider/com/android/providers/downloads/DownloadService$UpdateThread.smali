.class Lcom/android/providers/downloads/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .registers 3
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 263
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 264
    return-void
.end method


# virtual methods
.method public run()V
    .registers 28

    .prologue
    .line 267
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 269
    const/16 v17, 0x0

    .line 272
    .local v17, keepService:Z
    const-wide v25, 0x7fffffffffffffffL

    .line 274
    .local v25, wakeUp:J
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    monitor-enter v4

    .line 275
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$UpdateThread;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_2b

    .line 276
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "multiple UpdateThreads in DownloadService"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    :catchall_28
    move-exception v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_28

    throw v5

    .line 279
    :cond_2b
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v5

    if-nez v5, :cond_ca

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$302(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadService$UpdateThread;)Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 281
    if-nez v17, :cond_49

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->stopSelf()V

    .line 284
    :cond_49
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v5, v25, v7

    if-eqz v5, :cond_68

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 287
    .local v11, alarms:Landroid/app/AlarmManager;
    if-nez v11, :cond_7c

    .line 288
    const-string v5, "DownloadManager"

    const-string v6, "couldn\'t get alarm manager"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v11           #alarms:Landroid/app/AlarmManager;
    :cond_68
    :goto_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$502(Lcom/android/providers/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$602(Lcom/android/providers/downloads/DownloadService;Landroid/database/CharArrayBuffer;)Landroid/database/CharArrayBuffer;

    .line 305
    monitor-exit v4

    .line 317
    :cond_7b
    return-void

    .line 290
    .restart local v11       #alarms:Landroid/app/AlarmManager;
    :cond_7c
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_a1

    .line 291
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduling retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_a1
    new-instance v15, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v15, intent:Landroid/content/Intent;
    const-string v5, "com.android.providers.downloads"

    const-class v6, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long v7, v7, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    const/4 v9, 0x0

    const/high16 v10, 0x4000

    invoke-static {v6, v9, v15, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v11, v5, v7, v8, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_68

    .line 307
    .end local v11           #alarms:Landroid/app/AlarmManager;
    .end local v15           #intent:Landroid/content/Intent;
    :cond_ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$402(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 308
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_2b .. :try_end_d4} :catchall_28

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v19

    .line 310
    .local v19, networkAvailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/Helpers;->isNetworkRoaming(Landroid/content/Context;)Z

    move-result v20

    .line 311
    .local v20, networkRoaming:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 313
    .local v23, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 316
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_7b

    .line 320
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    const/4 v6, 0x0

    .line 324
    .local v6, arrayPos:I
    const/16 v18, 0x0

    .line 325
    .local v18, mustScan:Z
    const/16 v17, 0x0

    .line 326
    const-wide v25, 0x7fffffffffffffffL

    .line 328
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    .line 330
    .local v16, isAfterLast:Z
    const-string v4, "_id"

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 349
    .local v14, idColumn:I
    :goto_117
    if-eqz v16, :cond_128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v6, v4, :cond_393

    .line 350
    :cond_128
    if-eqz v16, :cond_189

    .line 353
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_161

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadInfo;

    iget v12, v4, Lcom/android/providers/downloads/DownloadInfo;->id:I

    .line 355
    .local v12, arrayId:I
    const-string v4, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Array update: trimming "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v12           #arrayId:I
    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-eqz v4, :cond_180

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;I)Z

    .line 361
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;I)V

    goto :goto_117

    .line 363
    :cond_189
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 365
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v6, v4, :cond_22f

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move/from16 v7, v19

    move/from16 v8, v20

    move-wide/from16 v9, v23

    invoke-static/range {v4 .. v10}, Lcom/android/providers/downloads/DownloadService;->access$1200(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V

    .line 367
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_1d0

    .line 368
    const-string v4, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Array update: inserting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_1f5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-eqz v4, :cond_1f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;I)Z

    move-result v4

    if-nez v4, :cond_1f5

    .line 373
    :cond_1f1
    const/16 v18, 0x1

    .line 374
    const/16 v17, 0x1

    .line 376
    :cond_1f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$1300(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_202

    .line 377
    const/16 v17, 0x1

    .line 379
    :cond_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move-object v0, v4

    move v1, v6

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$1400(Lcom/android/providers/downloads/DownloadService;IJ)J

    move-result-wide v21

    .line 380
    .local v21, next:J
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-nez v4, :cond_222

    .line 381
    const/16 v17, 0x1

    .line 385
    :cond_217
    :goto_217
    add-int/lit8 v6, v6, 0x1

    .line 386
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 387
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    .line 388
    goto/16 :goto_117

    .line 382
    :cond_222
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-lez v4, :cond_217

    cmp-long v4, v21, v25

    if-gez v4, :cond_217

    .line 383
    move-wide/from16 v25, v21

    goto :goto_217

    .line 389
    .end local v21           #next:J
    :cond_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadInfo;

    iget v12, v4, Lcom/android/providers/downloads/DownloadInfo;->id:I

    .line 391
    .restart local v12       #arrayId:I
    if-ge v12, v13, :cond_291

    .line 393
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_268

    .line 394
    const-string v4, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Array update: removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_287

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-eqz v4, :cond_287

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    const/4 v7, 0x0

    invoke-static {v4, v7, v6}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;I)Z

    .line 400
    :cond_287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;I)V

    goto/16 :goto_117

    .line 401
    :cond_291
    if-ne v12, v13, :cond_300

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move/from16 v7, v19

    move/from16 v8, v20

    move-wide/from16 v9, v23

    invoke-static/range {v4 .. v10}, Lcom/android/providers/downloads/DownloadService;->access$1500(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_2c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-eqz v4, :cond_2c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;I)Z

    move-result v4

    if-nez v4, :cond_2c6

    .line 409
    :cond_2c2
    const/16 v18, 0x1

    .line 410
    const/16 v17, 0x1

    .line 412
    :cond_2c6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$1300(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_2d3

    .line 413
    const/16 v17, 0x1

    .line 415
    :cond_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move-object v0, v4

    move v1, v6

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$1400(Lcom/android/providers/downloads/DownloadService;IJ)J

    move-result-wide v21

    .line 416
    .restart local v21       #next:J
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-nez v4, :cond_2f3

    .line 417
    const/16 v17, 0x1

    .line 421
    :cond_2e8
    :goto_2e8
    add-int/lit8 v6, v6, 0x1

    .line 422
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 423
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    .line 424
    goto/16 :goto_117

    .line 418
    :cond_2f3
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-lez v4, :cond_2e8

    cmp-long v4, v21, v25

    if-gez v4, :cond_2e8

    .line 419
    move-wide/from16 v25, v21

    goto :goto_2e8

    .line 426
    .end local v21           #next:J
    :cond_300
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_326

    .line 427
    const-string v4, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Array update: appending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move/from16 v7, v19

    move/from16 v8, v20

    move-wide/from16 v9, v23

    invoke-static/range {v4 .. v10}, Lcom/android/providers/downloads/DownloadService;->access$1200(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;IZZJ)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_359

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-eqz v4, :cond_355

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Landroid/database/Cursor;I)Z

    move-result v4

    if-nez v4, :cond_359

    .line 436
    :cond_355
    const/16 v18, 0x1

    .line 437
    const/16 v17, 0x1

    .line 439
    :cond_359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$1300(Lcom/android/providers/downloads/DownloadService;I)Z

    move-result v4

    if-eqz v4, :cond_366

    .line 440
    const/16 v17, 0x1

    .line 442
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move-object v0, v4

    move v1, v6

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$1400(Lcom/android/providers/downloads/DownloadService;IJ)J

    move-result-wide v21

    .line 443
    .restart local v21       #next:J
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-nez v4, :cond_386

    .line 444
    const/16 v17, 0x1

    .line 448
    :cond_37b
    :goto_37b
    add-int/lit8 v6, v6, 0x1

    .line 449
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 450
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v16

    goto/16 :goto_117

    .line 445
    :cond_386
    const-wide/16 v7, 0x0

    cmp-long v4, v21, v7

    if-lez v4, :cond_37b

    cmp-long v4, v21, v25

    if-gez v4, :cond_37b

    .line 446
    move-wide/from16 v25, v21

    goto :goto_37b

    .line 456
    .end local v12           #arrayId:I
    .end local v13           #id:I
    .end local v21           #next:J
    :cond_393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$1600(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification()V

    .line 458
    if-eqz v18, :cond_3d8

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v4

    if-nez v4, :cond_3d3

    .line 460
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 461
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v4, "com.android.providers.media"

    const-string v6, "com.android.providers.media.MediaScannerService"

    .end local v6           #arrayPos:I
    invoke-virtual {v15, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/downloads/DownloadService;->access$1700(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v15, v6, v7}, Lcom/android/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 470
    .end local v15           #intent:Landroid/content/Intent;
    :cond_3d3
    :goto_3d3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c

    .line 467
    .restart local v6       #arrayPos:I
    :cond_3d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadService;->access$1700(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_3d3
.end method
