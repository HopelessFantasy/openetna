.class Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;
.super Ljava/util/concurrent/FutureTask;
.source "QueryMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/QueryMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/android/globalsearch/SuggestionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mScheduledTime:J

.field private mStartTime:J

.field private final mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

.field final synthetic this$0:Lcom/android/globalsearch/QueryMultiplexer;


# direct methods
.method constructor <init>(Lcom/android/globalsearch/QueryMultiplexer;Lcom/android/globalsearch/SuggestionSource;)V
    .registers 8
    .parameter
    .parameter "suggestionSource"

    .prologue
    const-wide/16 v3, -0x1

    .line 137
    iput-object p1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    .line 138
    invoke-static {p1}, Lcom/android/globalsearch/QueryMultiplexer;->access$100(Lcom/android/globalsearch/QueryMultiplexer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/globalsearch/QueryMultiplexer;->access$200(Lcom/android/globalsearch/QueryMultiplexer;)I

    move-result v1

    invoke-static {p1}, Lcom/android/globalsearch/QueryMultiplexer;->access$300(Lcom/android/globalsearch/QueryMultiplexer;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lcom/android/globalsearch/SuggestionSource;->getSuggestionTask(Ljava/lang/String;II)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 131
    iput-wide v3, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mScheduledTime:J

    .line 132
    iput-wide v3, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mStartTime:J

    .line 139
    iput-object p2, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    .line 140
    return-void
.end method

.method static synthetic access$400(Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)Lcom/android/globalsearch/SuggestionSource;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    return-object v0
.end method

.method private getTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v1}, Lcom/android/globalsearch/QueryMultiplexer;->access$100(Lcom/android/globalsearch/QueryMultiplexer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logLatency(Z)V
    .registers 21
    .parameter "cancelled"

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mStartTime:J

    move-wide v15, v0

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_ed

    const/4 v15, 0x1

    move v5, v15

    .line 254
    .local v5, everStarted:Z
    :goto_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 255
    .local v6, now:J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, rawtname:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x3

    sub-int v16, v16, v17

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, tname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mStartTime:J

    move-wide v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mScheduledTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Lcom/android/globalsearch/QueryMultiplexer;->ms(J)I

    move-result v15

    int-to-long v10, v15

    .line 259
    .local v10, threadwait:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mStartTime:J

    move-wide v15, v0

    sub-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Lcom/android/globalsearch/QueryMultiplexer;->ms(J)I

    move-result v15

    int-to-long v3, v15

    .line 260
    .local v3, durationMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mScheduledTime:J

    move-wide v15, v0

    sub-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Lcom/android/globalsearch/QueryMultiplexer;->ms(J)I

    move-result v15

    int-to-long v13, v15

    .line 262
    .local v13, total:J
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v15, 0x12c

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 263
    .local v9, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/globalsearch/QueryMultiplexer;->access$100(Lcom/android/globalsearch/QueryMultiplexer;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x14

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->padQ(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/globalsearch/SuggestionSource;->getLabel()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v15, "total="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    if-eqz v5, :cond_cf

    .line 268
    const-string v15, "twait="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 271
    :cond_cf
    if-nez p1, :cond_f1

    .line 272
    const-string v15, "duration="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 285
    :goto_e3
    const-string v15, "GlobalSearch"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void

    .line 253
    .end local v3           #durationMillis:J
    .end local v5           #everStarted:Z
    .end local v6           #now:J
    .end local v8           #rawtname:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #threadwait:J
    .end local v12           #tname:Ljava/lang/String;
    .end local v13           #total:J
    :cond_ed
    const/4 v15, 0x0

    move v5, v15

    goto/16 :goto_d

    .line 275
    .restart local v3       #durationMillis:J
    .restart local v5       #everStarted:Z
    .restart local v6       #now:J
    .restart local v8       #rawtname:Ljava/lang/String;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #threadwait:J
    .restart local v12       #tname:Ljava/lang/String;
    .restart local v13       #total:J
    :cond_f1
    if-nez v5, :cond_10b

    .line 276
    const-string v15, "twait="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 278
    const-string v15, "(cancelled before running)"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3

    .line 280
    :cond_10b
    const-string v15, "duration="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 282
    const-string v15, "(cancelled)"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e3
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 184
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    .line 186
    .local v0, canceled:Z
    return v0
.end method

.method protected done()V
    .registers 8

    .prologue
    const-string v6, "GlobalSearch"

    .line 197
    invoke-virtual {p0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->isCancelled()Z

    move-result v0

    .line 201
    .local v0, cancelled:Z
    if-eqz v0, :cond_18

    .line 203
    :try_start_8
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-static {v5}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    .line 247
    :goto_17
    return-void

    .line 207
    :cond_18
    invoke-virtual {p0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/globalsearch/SuggestionResult;

    .line 208
    .local v2, suggestionResult:Lcom/android/globalsearch/SuggestionResult;
    if-nez v2, :cond_42

    .line 209
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-static {v5}, Lcom/android/globalsearch/SuggestionResult;->createErrorResult(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V
    :try_end_2f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_2f} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_2f} :catch_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_2f} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2f} :catch_90

    goto :goto_17

    .line 218
    .end local v2           #suggestionResult:Lcom/android/globalsearch/SuggestionResult;
    :catch_30
    move-exception v4

    move-object v1, v4

    .line 224
    .local v1, e:Ljava/util/concurrent/CancellationException;
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-static {v5}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    goto :goto_17

    .line 216
    .end local v1           #e:Ljava/util/concurrent/CancellationException;
    .restart local v2       #suggestionResult:Lcom/android/globalsearch/SuggestionResult;
    :cond_42
    :try_start_42
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V
    :try_end_4b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_42 .. :try_end_4b} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_4b} :catch_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_42 .. :try_end_4b} :catch_5e
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_4b} :catch_90

    goto :goto_17

    .line 226
    .end local v2           #suggestionResult:Lcom/android/globalsearch/SuggestionResult;
    :catch_4c
    move-exception v4

    move-object v1, v4

    .line 232
    .local v1, e:Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-static {v5}, Lcom/android/globalsearch/SuggestionResult;->createCancelled(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    goto :goto_17

    .line 234
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_5e
    move-exception v4

    move-object v1, v4

    .line 238
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    const-string v4, "GlobalSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-static {v5}, Lcom/android/globalsearch/SuggestionResult;->createErrorResult(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    goto :goto_17

    .line 241
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_90
    move-exception v4

    move-object v3, v4

    .line 243
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "GlobalSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed: this is our fault!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    iget-object v4, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v4}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-static {v5}, Lcom/android/globalsearch/SuggestionResult;->createErrorResult(Lcom/android/globalsearch/SuggestionSource;)Lcom/android/globalsearch/SuggestionResult;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/globalsearch/SuggestionBacker;->onNewSuggestionResult(Lcom/android/globalsearch/SuggestionResult;)V

    goto/16 :goto_17
.end method

.method public getSuggestionSource()Lcom/android/globalsearch/SuggestionSource;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mStartTime:J

    .line 153
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v0}, Lcom/android/globalsearch/QueryMultiplexer;->access$000(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/SuggestionBacker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mSuggestionSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v1}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/globalsearch/SuggestionBacker;->onSourceQueryStart(Landroid/content/ComponentName;)V

    .line 156
    iget-object v0, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->this$0:Lcom/android/globalsearch/QueryMultiplexer;

    invoke-static {v0}, Lcom/android/globalsearch/QueryMultiplexer;->access$500(Lcom/android/globalsearch/QueryMultiplexer;)Lcom/android/globalsearch/DelayedExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;

    invoke-direct {v1, p0}, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest$1;-><init>(Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;)V

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v1, v2, v3}, Lcom/android/globalsearch/DelayedExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    .line 172
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 173
    return-void
.end method

.method public setScheduledTime(J)V
    .registers 3
    .parameter "scheduledTime"

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/android/globalsearch/QueryMultiplexer$SuggestionRequest;->mScheduledTime:J

    .line 148
    return-void
.end method
