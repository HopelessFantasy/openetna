.class Landroid/content/TempProviderSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "TempProviderSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/TempProviderSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private mInitialRxBytes:J

.field private mInitialTxBytes:J

.field private volatile mIsCanceled:Z

.field private final mResult:Landroid/content/SyncResult;

.field private final mSyncContext:Landroid/content/SyncContext;

.field final synthetic this$0:Landroid/content/TempProviderSyncAdapter;


# direct methods
.method constructor <init>(Landroid/content/TempProviderSyncAdapter;Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter "syncContext"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 184
    iput-object p1, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    .line 185
    const-string v0, "SyncThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    .line 186
    iput-object p3, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mAccount:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    .line 188
    iput-object p2, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    .line 189
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    iput-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    .line 190
    return-void
.end method

.method private runSyncLoop(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 35
    .parameter "syncContext"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 277
    new-instance v28, Landroid/util/TimingLogger;

    const-string v5, "SyncProfiling"

    const-string v6, "sync"

    move-object/from16 v0, v28

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v28, syncTimer:Landroid/util/TimingLogger;
    const-string v5, "start"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 279
    const/16 v17, 0x0

    .line 280
    .local v17, loopCount:I
    const/16 v29, 0x0

    .line 282
    .local v29, tooManyGetServerDiffsAttempts:Z
    const-string v5, "deletions_override"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 285
    .local v23, overrideTooManyDeletions:Z
    const-string v5, "discard_deletions"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 287
    .local v16, discardLocalDeletions:Z
    const-string v5, "upload"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 289
    .local v30, uploadOnly:Z
    const/4 v8, 0x0

    .line 290
    .local v8, serverDiffs:Landroid/content/SyncableContentProvider;
    new-instance v27, Landroid/content/TempProviderSyncResult;

    invoke-direct/range {v27 .. v27}, Landroid/content/TempProviderSyncResult;-><init>()V

    .line 292
    .local v27, result:Landroid/content/TempProviderSyncResult;
    if-nez v30, :cond_76

    move/from16 v18, v17

    .line 301
    .end local v17           #loopCount:I
    .local v18, loopCount:I
    :goto_44
    :try_start_44
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    move v5, v0
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4f7

    if-nez v5, :cond_500

    .line 303
    add-int/lit8 v17, v18, 0x1

    .end local v18           #loopCount:I
    .restart local v17       #loopCount:I
    const/16 v5, 0x14

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_118

    .line 304
    :try_start_54
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Hit max loop count while getting server diffs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v29, 0x1

    .line 396
    :cond_76
    :goto_76
    const/16 v17, 0x0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/TempProviderSyncAdapter;->isReadOnly()Z

    move-result v26

    .line 398
    .local v26, readOnly:Z
    const-wide/16 v24, 0x0

    .line 399
    .local v24, previousNumModifications:J
    if-eqz v8, :cond_89

    .line 400
    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 401
    const/4 v8, 0x0

    .line 407
    :cond_89
    if-eqz v16, :cond_a9

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->getTemporaryInstance()Landroid/content/SyncableContentProvider;

    move-result-object v8

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5, v8}, Landroid/content/TempProviderSyncAdapter;->initTempProvider(Landroid/content/SyncableContentProvider;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/TempProviderSyncAdapter;->writeSyncData(Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;)V

    .line 413
    :cond_a9
    :goto_a9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    move v5, v0

    if-nez v5, :cond_356

    .line 417
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_c5

    .line 418
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->close()V

    .line 419
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    .line 421
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncResult;->clear()V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    if-eqz v26, :cond_326

    const/4 v6, 0x0

    :goto_d9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/SyncableContentProvider;->merge(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 424
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    move v5, v0
    :try_end_ec
    .catchall {:try_start_54 .. :try_end_ec} :catchall_2e7

    if-eqz v5, :cond_32a

    .line 497
    if-eqz v16, :cond_f8

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 500
    :cond_f8
    if-eqz v8, :cond_fd

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 501
    :cond_fd
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_10c

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->close()V

    .line 502
    :cond_10c
    const-string v5, "stop"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 503
    .end local v24           #previousNumModifications:J
    .end local v26           #readOnly:Z
    :goto_114
    invoke-virtual/range {v28 .. v28}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 505
    return-void

    .line 315
    :cond_118
    if-eqz v8, :cond_11d

    :try_start_11a
    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 316
    :cond_11d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->getTemporaryInstance()Landroid/content/SyncableContentProvider;

    move-result-object v8

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5, v8}, Landroid/content/TempProviderSyncAdapter;->initTempProvider(Landroid/content/SyncableContentProvider;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/TempProviderSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v10

    .line 321
    .local v10, syncInfo:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5, v8}, Landroid/content/TempProviderSyncAdapter;->readSyncData(Landroid/content/SyncableContentProvider;)Landroid/content/TempProviderSyncAdapter$SyncData;

    move-result-object v7

    .line 324
    .local v7, syncData:Landroid/content/TempProviderSyncAdapter$SyncData;
    if-nez v7, :cond_15e

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/SyncableContentProvider;->wipeAccount(Ljava/lang/String;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/TempProviderSyncAdapter;->newSyncData()Landroid/content/TempProviderSyncAdapter$SyncData;

    move-result-object v7

    .line 328
    :cond_15e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncResult;->clear()V

    .line 329
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 330
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runSyncLoop: running getServerDiffs using syncData "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v11, v0

    move-object/from16 v6, p1

    move-object/from16 v9, p3

    invoke-virtual/range {v5 .. v11}, Landroid/content/TempProviderSyncAdapter;->getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    move v5, v0
    :try_end_1a1
    .catchall {:try_start_11a .. :try_end_1a1} :catchall_2e7

    if-eqz v5, :cond_1cb

    .line 497
    if-eqz v16, :cond_1ad

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 500
    :cond_1ad
    if-eqz v8, :cond_1b2

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 501
    :cond_1b2
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_1c1

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->close()V

    .line 502
    :cond_1c1
    const-string v5, "stop"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto/16 :goto_114

    .line 337
    :cond_1cb
    :try_start_1cb
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f1

    .line 338
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runSyncLoop: result: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v9, v0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncResult;->hasError()Z
    :try_end_1f9
    .catchall {:try_start_1cb .. :try_end_1f9} :catchall_2e7

    move-result v5

    if-eqz v5, :cond_224

    .line 497
    if-eqz v16, :cond_206

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 500
    :cond_206
    if-eqz v8, :cond_20b

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 501
    :cond_20b
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_21a

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->close()V

    .line 502
    :cond_21a
    const-string v5, "stop"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto/16 :goto_114

    .line 341
    :cond_224
    :try_start_224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v5, :cond_247

    .line 343
    const-string v5, "Sync"

    const-string v6, "partialSyncUnavailable is set, setting ignoreSyncData and retrying"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/SyncableContentProvider;->wipeAccount(Ljava/lang/String;)V

    move/from16 v18, v17

    .line 347
    .end local v17           #loopCount:I
    .restart local v18       #loopCount:I
    goto/16 :goto_44

    .line 351
    .end local v18           #loopCount:I
    .restart local v17       #loopCount:I
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5, v7, v8}, Landroid/content/TempProviderSyncAdapter;->writeSyncData(Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;)V

    .line 354
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_25f

    .line 355
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: running merge"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_25f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    .end local v7           #syncData:Landroid/content/TempProviderSyncAdapter$SyncData;
    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/SyncableContentProvider;->merge(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    move v5, v0
    :try_end_27c
    .catchall {:try_start_224 .. :try_end_27c} :catchall_2e7

    if-eqz v5, :cond_2a6

    .line 497
    if-eqz v16, :cond_288

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 500
    :cond_288
    if-eqz v8, :cond_28d

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 501
    :cond_28d
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_29c

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->close()V

    .line 502
    :cond_29c
    const-string v5, "stop"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto/16 :goto_114

    .line 360
    :cond_2a6
    :try_start_2a6
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2cc

    .line 361
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2cc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-nez v5, :cond_312

    .line 366
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 367
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: fetched all data, moving on"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e5
    .catchall {:try_start_2a6 .. :try_end_2e5} :catchall_2e7

    goto/16 :goto_76

    .line 497
    .end local v10           #syncInfo:Ljava/lang/Object;
    :catchall_2e7
    move-exception v5

    :goto_2e8
    if-eqz v16, :cond_2f2

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 500
    :cond_2f2
    if-eqz v8, :cond_2f7

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 501
    :cond_2f7
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v6, v0

    if-eqz v6, :cond_306

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/SyncableContentProvider;->close()V

    .line 502
    :cond_306
    const-string v6, "stop"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {v28 .. v28}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 497
    throw v5

    .line 371
    .restart local v10       #syncInfo:Ljava/lang/Object;
    :cond_312
    :try_start_312
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_322

    .line 372
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: more data to fetch, looping"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_322
    move/from16 v18, v17

    .line 374
    .end local v17           #loopCount:I
    .restart local v18       #loopCount:I
    goto/16 :goto_44

    .end local v10           #syncInfo:Ljava/lang/Object;
    .end local v18           #loopCount:I
    .restart local v17       #loopCount:I
    .restart local v24       #previousNumModifications:J
    .restart local v26       #readOnly:Z
    :cond_326
    move-object/from16 v6, v27

    .line 422
    goto/16 :goto_d9

    .line 425
    :cond_32a
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_350

    .line 426
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_350
    if-eqz v26, :cond_3af

    const/4 v5, 0x0

    move-object v13, v5

    .line 431
    .local v13, clientDiffs:Landroid/content/SyncableContentProvider;
    :goto_354
    if-nez v13, :cond_3b6

    .line 491
    .end local v13           #clientDiffs:Landroid/content/SyncableContentProvider;
    :cond_356
    :goto_356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-boolean v6, v5, Landroid/content/SyncResult;->tooManyRetries:Z

    or-int v6, v6, v29

    iput-boolean v6, v5, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 492
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_387

    .line 493
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: final result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_387
    .catchall {:try_start_312 .. :try_end_387} :catchall_2e7

    .line 497
    :cond_387
    if-eqz v16, :cond_391

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 500
    :cond_391
    if-eqz v8, :cond_396

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 501
    :cond_396
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_3a5

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncableContentProvider;->close()V

    .line 502
    :cond_3a5
    const-string v5, "stop"

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    goto/16 :goto_114

    .line 429
    :cond_3af
    :try_start_3af
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v5, v0

    move-object v13, v5

    goto :goto_354

    .line 437
    .restart local v13       #clientDiffs:Landroid/content/SyncableContentProvider;
    :cond_3b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v5, Landroid/content/SyncStats;->numUpdates:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v7, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v7, Landroid/content/SyncStats;->numInserts:J

    add-long v21, v5, v9

    .line 442
    .local v21, numModifications:J
    cmp-long v5, v21, v24

    if-gez v5, :cond_4fc

    .line 443
    const/16 v17, 0x0

    move/from16 v18, v17

    .line 445
    .end local v17           #loopCount:I
    .restart local v18       #loopCount:I
    :goto_3dc
    move-wide/from16 v24, v21

    .line 448
    add-int/lit8 v17, v18, 0x1

    .end local v18           #loopCount:I
    .restart local v17       #loopCount:I
    const/16 v5, 0xa

    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_411

    .line 449
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Hit max loop count while syncing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->tooManyRetries:Z

    goto/16 :goto_356

    .line 455
    :cond_411
    if-nez v23, :cond_479

    if-nez v16, :cond_479

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v5, v6}, Landroid/content/TempProviderSyncAdapter;->hasTooManyDeletions(Landroid/content/SyncStats;)Z

    move-result v5

    if-eqz v5, :cond_479

    .line 458
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: Too many deletions were found in provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", not doing any more updates"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v19, v0

    .line 462
    .local v19, numDeletes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v5}, Landroid/content/SyncStats;->clear()V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-wide/from16 v0, v19

    move-object v2, v5

    iput-wide v0, v2, Landroid/content/SyncStats;->numDeletes:J

    goto/16 :goto_356

    .line 469
    .end local v19           #numDeletes:J
    :cond_479
    if-eqz v8, :cond_47e

    invoke-virtual {v8}, Landroid/content/SyncableContentProvider;->close()V

    .line 470
    :cond_47e
    invoke-virtual {v13}, Landroid/content/SyncableContentProvider;->getTemporaryInstance()Landroid/content/SyncableContentProvider;

    move-result-object v8

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v5, v0

    invoke-virtual {v5, v8}, Landroid/content/TempProviderSyncAdapter;->initTempProvider(Landroid/content/SyncableContentProvider;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncResult;->clear()V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v15, v0

    move-object/from16 v12, p1

    move-object v14, v8

    invoke-virtual/range {v11 .. v16}, Landroid/content/TempProviderSyncAdapter;->sendClientDiffs(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 475
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4c8

    .line 476
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runSyncLoop: result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_4c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v5

    if-nez v5, :cond_4e5

    .line 480
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_356

    .line 481
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: No data from client diffs merge"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_356

    .line 485
    :cond_4e5
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 486
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: made some progress, looping"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f5
    .catchall {:try_start_3af .. :try_end_4f5} :catchall_2e7

    goto/16 :goto_a9

    .line 497
    .end local v13           #clientDiffs:Landroid/content/SyncableContentProvider;
    .end local v17           #loopCount:I
    .end local v21           #numModifications:J
    .end local v24           #previousNumModifications:J
    .end local v26           #readOnly:Z
    .restart local v18       #loopCount:I
    :catchall_4f7
    move-exception v5

    move/from16 v17, v18

    .end local v18           #loopCount:I
    .restart local v17       #loopCount:I
    goto/16 :goto_2e8

    .restart local v13       #clientDiffs:Landroid/content/SyncableContentProvider;
    .restart local v21       #numModifications:J
    .restart local v24       #previousNumModifications:J
    .restart local v26       #readOnly:Z
    :cond_4fc
    move/from16 v18, v17

    .end local v17           #loopCount:I
    .restart local v18       #loopCount:I
    goto/16 :goto_3dc

    .end local v13           #clientDiffs:Landroid/content/SyncableContentProvider;
    .end local v21           #numModifications:J
    .end local v24           #previousNumModifications:J
    .end local v26           #readOnly:Z
    :cond_500
    move/from16 v17, v18

    .end local v18           #loopCount:I
    .restart local v17       #loopCount:I
    goto/16 :goto_76
.end method

.method private sync(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .parameter "syncContext"
    .parameter "account"
    .parameter "extras"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 225
    iput-boolean v7, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    .line 227
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 228
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, message:Ljava/lang/String;
    const-string v4, "force"

    invoke-virtual {p3, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 234
    .local v1, syncForced:Z
    :try_start_15
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/content/SyncableContentProvider;->onSyncStart(Landroid/content/SyncContext;Ljava/lang/String;)V

    .line 235
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 236
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual {v4, p1, p2, v1, v5}, Landroid/content/TempProviderSyncAdapter;->onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V

    .line 237
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual {v4}, Landroid/content/SyncResult;->hasError()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 238
    const-string v0, "SyncAdapter failed while trying to start sync"
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_134

    .line 262
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$000(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 263
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 264
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-virtual {v4, p1, v7}, Landroid/content/TempProviderSyncAdapter;->onSyncEnding(Landroid/content/SyncContext;Z)V

    .line 266
    :cond_47
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$100(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 267
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 268
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v4

    invoke-virtual {v4, p1, v7}, Landroid/content/SyncableContentProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 270
    :cond_5d
    iget-boolean v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v4, :cond_66

    .line 271
    if-eqz v0, :cond_66

    :goto_63
    invoke-virtual {p1, v0}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 274
    :cond_66
    return-void

    .line 241
    :cond_67
    :try_start_67
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 242
    iget-boolean v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_134

    if-eqz v4, :cond_a0

    .line 262
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$000(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 263
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 264
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-virtual {v4, p1, v7}, Landroid/content/TempProviderSyncAdapter;->onSyncEnding(Landroid/content/SyncContext;Z)V

    .line 266
    :cond_83
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$100(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 267
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 268
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v4

    invoke-virtual {v4, p1, v7}, Landroid/content/SyncableContentProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 270
    :cond_99
    iget-boolean v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v4, :cond_66

    .line 271
    if-eqz v0, :cond_66

    goto :goto_63

    .line 245
    :cond_a0
    :try_start_a0
    const-string v4, "SyncTracing"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, syncTracingEnabledValue:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a9
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_134

    move-result v4

    if-nez v4, :cond_12b

    move v2, v8

    .line 248
    .local v2, syncTracingEnabled:Z
    :goto_ad
    if-eqz v2, :cond_cf

    .line 249
    :try_start_af
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 250
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "synctrace."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 253
    :cond_cf
    invoke-direct {p0, p1, p2, p3}, Landroid/content/TempProviderSyncAdapter$SyncThread;->runSyncLoop(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d2
    .catchall {:try_start_af .. :try_end_d2} :catchall_12d

    .line 255
    if-eqz v2, :cond_d7

    :try_start_d4
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 257
    :cond_d7
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual {v5}, Landroid/content/SyncResult;->hasError()Z

    move-result v5

    if-nez v5, :cond_167

    move v5, v8

    :goto_e2
    invoke-virtual {v4, p1, v5}, Landroid/content/TempProviderSyncAdapter;->onSyncEnding(Landroid/content/SyncContext;Z)V

    .line 258
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 259
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Landroid/content/SyncableContentProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 260
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z
    :try_end_fb
    .catchall {:try_start_d4 .. :try_end_fb} :catchall_134

    .line 262
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$000(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_10d

    .line 263
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 264
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-virtual {v4, p1, v7}, Landroid/content/TempProviderSyncAdapter;->onSyncEnding(Landroid/content/SyncContext;Z)V

    .line 266
    :cond_10d
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$100(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v4

    if-eqz v4, :cond_123

    .line 267
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4, v7}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 268
    iget-object v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v4}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v4

    invoke-virtual {v4, p1, v7}, Landroid/content/SyncableContentProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 270
    :cond_123
    iget-boolean v4, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v4, :cond_66

    .line 271
    if-eqz v0, :cond_66

    goto/16 :goto_63

    .end local v2           #syncTracingEnabled:Z
    :cond_12b
    move v2, v7

    .line 246
    goto :goto_ad

    .line 255
    .restart local v2       #syncTracingEnabled:Z
    :catchall_12d
    move-exception v4

    if-eqz v2, :cond_133

    :try_start_130
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_133
    throw v4
    :try_end_134
    .catchall {:try_start_130 .. :try_end_134} :catchall_134

    .line 262
    .end local v2           #syncTracingEnabled:Z
    .end local v3           #syncTracingEnabledValue:Ljava/lang/String;
    :catchall_134
    move-exception v4

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$000(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 263
    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v5, v7}, Landroid/content/TempProviderSyncAdapter;->access$002(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 264
    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-virtual {v5, p1, v7}, Landroid/content/TempProviderSyncAdapter;->onSyncEnding(Landroid/content/SyncContext;Z)V

    .line 266
    :cond_147
    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$100(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v5

    if-eqz v5, :cond_15d

    .line 267
    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v5, v7}, Landroid/content/TempProviderSyncAdapter;->access$102(Landroid/content/TempProviderSyncAdapter;Z)Z

    .line 268
    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v5}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v5

    invoke-virtual {v5, p1, v7}, Landroid/content/SyncableContentProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 270
    :cond_15d
    iget-boolean v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v5, :cond_166

    .line 271
    if-eqz v0, :cond_166

    invoke-virtual {p1, v0}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 262
    :cond_166
    throw v4

    .restart local v2       #syncTracingEnabled:Z
    .restart local v3       #syncTracingEnabledValue:Ljava/lang/String;
    :cond_167
    move v5, v7

    .line 257
    goto/16 :goto_e2
.end method


# virtual methods
.method cancelSync()V
    .registers 10

    .prologue
    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    .line 194
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v0}, Landroid/content/TempProviderSyncAdapter;->access$000(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-virtual {v0}, Landroid/content/TempProviderSyncAdapter;->onSyncCanceled()V

    .line 195
    :cond_10
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v0}, Landroid/content/TempProviderSyncAdapter;->access$100(Landroid/content/TempProviderSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v0}, Landroid/content/TempProviderSyncAdapter;->access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncableContentProvider;->onSyncCanceled()V

    .line 197
    :cond_21
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 198
    .local v6, uid:I
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v6}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialTxBytes:J

    sub-long/2addr v1, v3

    invoke-static {v6}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v3

    iget-wide v7, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialRxBytes:J

    sub-long/2addr v3, v7

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual/range {v0 .. v5}, Landroid/content/TempProviderSyncAdapter;->logSyncDetails(JJLandroid/content/SyncResult;)V

    .line 200
    return-void
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 206
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    .line 207
    .local v7, uid:I
    invoke-static {v7}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialTxBytes:J

    .line 208
    invoke-static {v7}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialRxBytes:J

    .line 210
    :try_start_1a
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    iget-object v1, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/TempProviderSyncAdapter$SyncThread;->sync(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_7d
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_23} :catch_49

    .line 215
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v0, v3}, Landroid/content/TempProviderSyncAdapter;->access$302(Landroid/content/TempProviderSyncAdapter;Landroid/content/TempProviderSyncAdapter$SyncThread;)Landroid/content/TempProviderSyncAdapter$SyncThread;

    .line 216
    iget-boolean v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v0, :cond_48

    .line 217
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v7}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialTxBytes:J

    sub-long/2addr v1, v3

    invoke-static {v7}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v3

    iget-wide v8, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialRxBytes:J

    sub-long/2addr v3, v8

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual/range {v0 .. v5}, Landroid/content/TempProviderSyncAdapter;->logSyncDetails(JJLandroid/content/SyncResult;)V

    .line 219
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    iget-object v1, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 222
    :cond_48
    :goto_48
    return-void

    .line 211
    :catch_49
    move-exception v0

    move-object v6, v0

    .line 212
    .local v6, e:Landroid/database/SQLException;
    :try_start_4b
    const-string v0, "Sync"

    const-string v1, "Sync failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/SyncResult;->databaseError:Z
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_7d

    .line 215
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v0, v3}, Landroid/content/TempProviderSyncAdapter;->access$302(Landroid/content/TempProviderSyncAdapter;Landroid/content/TempProviderSyncAdapter$SyncThread;)Landroid/content/TempProviderSyncAdapter$SyncThread;

    .line 216
    iget-boolean v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v0, :cond_48

    .line 217
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v7}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialTxBytes:J

    sub-long/2addr v1, v3

    invoke-static {v7}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v3

    iget-wide v8, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialRxBytes:J

    sub-long/2addr v3, v8

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual/range {v0 .. v5}, Landroid/content/TempProviderSyncAdapter;->logSyncDetails(JJLandroid/content/SyncResult;)V

    .line 219
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    iget-object v1, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    goto :goto_48

    .line 215
    .end local v6           #e:Landroid/database/SQLException;
    :catchall_7d
    move-exception v0

    move-object v8, v0

    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v0, v3}, Landroid/content/TempProviderSyncAdapter;->access$302(Landroid/content/TempProviderSyncAdapter;Landroid/content/TempProviderSyncAdapter$SyncThread;)Landroid/content/TempProviderSyncAdapter$SyncThread;

    .line 216
    iget-boolean v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mIsCanceled:Z

    if-nez v0, :cond_a4

    .line 217
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->this$0:Landroid/content/TempProviderSyncAdapter;

    invoke-static {v7}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialTxBytes:J

    sub-long/2addr v1, v3

    invoke-static {v7}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v3

    iget-wide v9, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mInitialRxBytes:J

    sub-long/2addr v3, v9

    iget-object v5, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual/range {v0 .. v5}, Landroid/content/TempProviderSyncAdapter;->logSyncDetails(JJLandroid/content/SyncResult;)V

    .line 219
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    iget-object v1, p0, Landroid/content/TempProviderSyncAdapter$SyncThread;->mResult:Landroid/content/SyncResult;

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_a4
    throw v8
.end method
