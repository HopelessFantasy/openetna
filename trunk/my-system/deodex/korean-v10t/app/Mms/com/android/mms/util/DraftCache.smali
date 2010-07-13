.class public Lcom/android/mms/util/DraftCache;
.super Ljava/lang/Object;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    }
.end annotation


# static fields
.field static final COLUMN_DRAFT_THREAD_ID:I = 0x1

.field static final DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DraftCache"

.field private static sInstance:Lcom/android/mms/util/DraftCache;


# instance fields
.field private final mChangeListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/util/DraftCache$OnDraftChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDraftSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    .line 51
    iput-object p1, p0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DraftCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mms/util/DraftCache;->rebuildCache()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/DraftCache;
    .registers 1

    .prologue
    .line 171
    sget-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 164
    new-instance v0, Lcom/android/mms/util/DraftCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DraftCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/DraftCache;->sInstance:Lcom/android/mms/util/DraftCache;

    .line 165
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "format"
    .parameter "args"

    .prologue
    .line 175
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, s:Ljava/lang/String;
    const-string v1, "DraftCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method private declared-synchronized rebuildCache()V
    .registers 22

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    move-object/from16 v17, v0

    .line 77
    .local v17, oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 79
    .local v16, newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/util/DraftCache;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_50

    move-result-object v12

    .line 86
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_2c
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 87
    :goto_32
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_53

    .line 88
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 89
    .local v19, threadId:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_4b

    goto :goto_32

    .line 93
    .end local v19           #threadId:J
    :catchall_4b
    move-exception v4

    :try_start_4c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 76
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v16           #newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v17           #oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_50
    move-exception v4

    monitor-exit p0

    throw v4

    .line 93
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v16       #newDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v17       #oldDraftSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_53
    :try_start_53
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 96
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_50

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_6a

    .line 119
    :cond_68
    monitor-exit p0

    return-void

    .line 106
    :cond_6a
    :try_start_6a
    new-instance v11, Ljava/util/HashSet;

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v11, added:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object v0, v11

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 108
    new-instance v18, Ljava/util/HashSet;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 109
    .local v18, removed:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_91
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 112
    .local v15, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_a1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 113
    .restart local v19       #threadId:J
    const/4 v4, 0x1

    move-object v0, v15

    move-wide/from16 v1, v19

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V

    goto :goto_a1

    .line 115
    .end local v19           #threadId:J
    :cond_ba
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_be
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 116
    .restart local v19       #threadId:J
    const/4 v4, 0x0

    move-object v0, v15

    move-wide/from16 v1, v19

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_d6
    .catchall {:try_start_6a .. :try_end_d6} :catchall_50

    goto :goto_be
.end method


# virtual methods
.method public declared-synchronized addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft(J)Z
    .registers 5
    .parameter "threadId"

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/DraftCache$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/DraftCache$1;-><init>(Lcom/android/mms/util/DraftCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method public declared-synchronized removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDraftState(JZ)V
    .registers 9
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 126
    monitor-enter p0

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_9

    .line 143
    :cond_7
    monitor-exit p0

    return-void

    .line 131
    :cond_9
    if-eqz p3, :cond_30

    .line 132
    :try_start_b
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    .local v0, changed:Z
    :goto_15
    if-eqz v0, :cond_7

    .line 139
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mChangeListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;

    .line 140
    .local v2, l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    invoke-interface {v2, p1, p2, p3}, Lcom/android/mms/util/DraftCache$OnDraftChangedListener;->onDraftChanged(JZ)V
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2d

    goto :goto_1d

    .line 126
    .end local v0           #changed:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
    :catchall_2d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 134
    :cond_30
    :try_start_30
    iget-object v3, p0, Lcom/android/mms/util/DraftCache;->mDraftSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_2d

    move-result v0

    .restart local v0       #changed:Z
    goto :goto_15
.end method
