.class Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;
.super Ljava/util/concurrent/FutureTask;
.source "ShortcutRefresher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/globalsearch/ShortcutRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutRefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/android/globalsearch/SuggestionData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mReceiver:Lcom/android/globalsearch/SuggestionBacker;

.field private final mRepo:Lcom/android/globalsearch/ShortcutRepository;

.field private mScheduledTime:J

.field private final mShortcutId:Ljava/lang/String;

.field private final mSource:Lcom/android/globalsearch/SuggestionSource;

.field private mStartTime:J


# direct methods
.method constructor <init>(Lcom/android/globalsearch/SuggestionSource;Lcom/android/globalsearch/SuggestionData;Lcom/android/globalsearch/SuggestionBacker;Lcom/android/globalsearch/ShortcutRepository;)V
    .registers 8
    .parameter "source"
    .parameter "shortcut"
    .parameter "receiver"
    .parameter "repo"

    .prologue
    const-wide/16 v1, -0x1

    .line 143
    invoke-interface {p1, p2}, Lcom/android/globalsearch/SuggestionSource;->getShortcutValidationTask(Lcom/android/globalsearch/SuggestionData;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 122
    iput-wide v1, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mScheduledTime:J

    .line 123
    iput-wide v1, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mStartTime:J

    .line 144
    iput-object p1, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/globalsearch/SuggestionSource;

    .line 145
    invoke-virtual {p2}, Lcom/android/globalsearch/SuggestionData;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    .line 146
    iput-object p3, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    .line 147
    iput-object p4, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    .line 148
    return-void
.end method

.method private logLatency(Z)V
    .registers 21
    .parameter "cancelled"

    .prologue
    .line 183
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mStartTime:J

    move-wide v15, v0

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_fd

    const/4 v15, 0x1

    move v5, v15

    .line 184
    .local v5, everStarted:Z
    :goto_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 185
    .local v6, now:J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 186
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

    .line 188
    .local v12, tname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mStartTime:J

    move-wide v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mScheduledTime:J

    move-wide/from16 v17, v0

    sub-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Lcom/android/globalsearch/QueryMultiplexer;->ms(J)I

    move-result v15

    int-to-long v10, v15

    .line 189
    .local v10, threadwait:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mStartTime:J

    move-wide v15, v0

    sub-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Lcom/android/globalsearch/QueryMultiplexer;->ms(J)I

    move-result v15

    int-to-long v3, v15

    .line 190
    .local v3, durationMillis:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mScheduledTime:J

    move-wide v15, v0

    sub-long v15, v6, v15

    invoke-static/range {v15 .. v16}, Lcom/android/globalsearch/QueryMultiplexer;->ms(J)I

    move-result v15

    int-to-long v13, v15

    .line 192
    .local v13, total:J
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v15, 0x12c

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    .local v9, sb:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "shortcut "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x14

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->padQ(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/globalsearch/SuggestionSource;

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

    .line 195
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v15, "total="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\t"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    if-eqz v5, :cond_df

    .line 198
    const-string v15, "twait="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 201
    :cond_df
    if-nez p1, :cond_101

    .line 202
    const-string v15, "duration="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 215
    :goto_f3
    const-string v15, "GlobalSearch"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void

    .line 183
    .end local v3           #durationMillis:J
    .end local v5           #everStarted:Z
    .end local v6           #now:J
    .end local v8           #rawtname:Ljava/lang/String;
    .end local v9           #sb:Ljava/lang/StringBuilder;
    .end local v10           #threadwait:J
    .end local v12           #tname:Ljava/lang/String;
    .end local v13           #total:J
    :cond_fd
    const/4 v15, 0x0

    move v5, v15

    goto/16 :goto_d

    .line 205
    .restart local v3       #durationMillis:J
    .restart local v5       #everStarted:Z
    .restart local v6       #now:J
    .restart local v8       #rawtname:Ljava/lang/String;
    .restart local v9       #sb:Ljava/lang/StringBuilder;
    .restart local v10       #threadwait:J
    .restart local v12       #tname:Ljava/lang/String;
    .restart local v13       #total:J
    :cond_101
    if-nez v5, :cond_11b

    .line 206
    const-string v15, "twait="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 208
    const-string v15, "(cancelled before running)"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 210
    :cond_11b
    const-string v15, "duration="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/globalsearch/QueryMultiplexer;->pad(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 212
    const-string v15, "(cancelled)"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3
.end method


# virtual methods
.method protected done()V
    .registers 9

    .prologue
    const-string v7, "GlobalSearch"

    .line 152
    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->isCancelled()Z

    move-result v0

    .line 155
    .local v0, cancelled:Z
    if-eqz v0, :cond_9

    .line 177
    :goto_8
    return-void

    .line 158
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/globalsearch/SuggestionData;

    .line 159
    .local v3, refreshed:Lcom/android/globalsearch/SuggestionData;
    iget-object v4, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    if-eqz v4, :cond_20

    .line 160
    iget-object v4, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mRepo:Lcom/android/globalsearch/ShortcutRepository;

    iget-object v5, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v5}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v3}, Lcom/android/globalsearch/ShortcutRepository;->refreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V

    .line 162
    :cond_20
    iget-object v4, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mReceiver:Lcom/android/globalsearch/SuggestionBacker;

    iget-object v5, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v5}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/globalsearch/SuggestionBacker;->onRefreshShortcut(Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/globalsearch/SuggestionData;)V
    :try_end_2d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_2d} :catch_2e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_2d} :catch_6b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_2d} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_2d} :catch_61

    goto :goto_8

    .line 163
    .end local v3           #refreshed:Lcom/android/globalsearch/SuggestionData;
    :catch_2e
    move-exception v4

    goto :goto_8

    .line 167
    :catch_30
    move-exception v4

    move-object v1, v4

    .line 168
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    const-string v4, "GlobalSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to refresh shortcut from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/android/globalsearch/SuggestionSource;

    invoke-interface {v5}, Lcom/android/globalsearch/SuggestionSource;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for shorcut id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 172
    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    :catch_61
    move-exception v4

    move-object v2, v4

    .line 175
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "GlobalSearch"

    const-string v4, "Shortcut refresh error"

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 165
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_6b
    move-exception v4

    goto :goto_8
.end method

.method public run()V
    .registers 3

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mStartTime:J

    .line 132
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 133
    return-void
.end method

.method public setScheduledTime(J)V
    .registers 3
    .parameter "scheduledTime"

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/android/globalsearch/ShortcutRefresher$ShortcutRefreshTask;->mScheduledTime:J

    .line 127
    return-void
.end method
