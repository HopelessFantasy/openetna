.class Landroid/content/SyncManager$SyncQueue;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueue"
.end annotation


# static fields
.field private static final DEBUG_CHECK_DATA_CONSISTENCY:Z


# instance fields
.field private final mOpsByKey:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncManager$SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsByWhen:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Landroid/content/SyncManager$SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/SyncStorageEngine;)V
    .registers 13
    .parameter "syncStorageEngine"

    .prologue
    .line 1975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    .line 1973
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    .line 1976
    iput-object p1, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 1977
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v1}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v10

    .line 1979
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1980
    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1d
    if-ge v8, v7, :cond_3c

    .line 1981
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 1982
    .local v9, op:Landroid/content/SyncStorageEngine$PendingOperation;
    new-instance v0, Landroid/content/SyncManager$SyncOperation;

    iget-object v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    iget v2, v9, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iget-object v3, v9, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncManager$SyncOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;J)V

    .line 1984
    .local v0, syncOperation:Landroid/content/SyncManager$SyncOperation;
    iput-object v9, v0, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 1985
    invoke-direct {p0, v0, v9}, Landroid/content/SyncManager$SyncQueue;->add(Landroid/content/SyncManager$SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    .line 1980
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 1989
    .end local v0           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    .end local v9           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_3c
    return-void
.end method

.method private add(Landroid/content/SyncManager$SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .registers 15
    .parameter "operation"
    .parameter "pop"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 2002
    iget-wide v3, p1, Landroid/content/SyncManager$SyncOperation;->delay:J

    cmp-long v3, v3, v10

    if-gez v3, :cond_1e

    .line 2003
    invoke-virtual {p0}, Landroid/content/SyncManager$SyncQueue;->head()Landroid/content/SyncManager$SyncOperation;

    move-result-object v1

    .line 2004
    .local v1, headOperation:Landroid/content/SyncManager$SyncOperation;
    if-eqz v1, :cond_3c

    .line 2005
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    .line 2017
    .end local v1           #headOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_1e
    :goto_1e
    iget-object v2, p1, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    .line 2018
    .local v2, operationKey:Ljava/lang/String;
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$SyncOperation;

    .line 2022
    .local v0, existingOperation:Landroid/content/SyncManager$SyncOperation;
    if-eqz v0, :cond_43

    iget-wide v3, v0, Landroid/content/SyncManager$SyncOperation;->delay:J

    cmp-long v3, v3, v10

    if-lez v3, :cond_43

    .line 2023
    iget-object v3, p1, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    const-string v4, "force"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_43

    move v3, v9

    .line 2059
    :goto_3b
    return v3

    .line 2008
    .end local v0           #existingOperation:Landroid/content/SyncManager$SyncOperation;
    .end local v2           #operationKey:Ljava/lang/String;
    .restart local v1       #headOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_3c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    goto :goto_1e

    .line 2028
    .end local v1           #headOperation:Landroid/content/SyncManager$SyncOperation;
    .restart local v0       #existingOperation:Landroid/content/SyncManager$SyncOperation;
    .restart local v2       #operationKey:Ljava/lang/String;
    :cond_43
    if-eqz v0, :cond_4f

    iget-wide v3, p1, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    iget-wide v5, v0, Landroid/content/SyncManager$SyncOperation;->earliestRunTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_4f

    move v3, v9

    .line 2031
    goto :goto_3b

    .line 2034
    :cond_4f
    if-eqz v0, :cond_54

    .line 2035
    invoke-virtual {p0, v2}, Landroid/content/SyncManager$SyncQueue;->removeByKey(Ljava/lang/String;)V

    .line 2038
    :cond_54
    iput-object p2, p1, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 2039
    iget-object v3, p1, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    if-nez v3, :cond_8a

    .line 2040
    new-instance p2, Landroid/content/SyncStorageEngine$PendingOperation;

    .end local p2
    iget-object v3, p1, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    iget v4, p1, Landroid/content/SyncManager$SyncOperation;->syncSource:I

    iget-object v5, p1, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p2, v3, v4, v5, v6}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2043
    .restart local p2
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v3, p2}, Landroid/content/SyncStorageEngine;->insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    .line 2044
    if-nez p2, :cond_88

    .line 2045
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error adding pending sync operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2048
    :cond_88
    iput-object p2, p1, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    .line 2056
    :cond_8a
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v3, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 2059
    const/4 v3, 0x1

    goto :goto_3b
.end method

.method private debugCheckDataStructures(Z)V
    .registers 14
    .parameter "checkDatabase"

    .prologue
    .line 2129
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    iget-object v10, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->size()I

    move-result v10

    if-eq v9, v10, :cond_3d

    .line 2130
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size mismatch: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " != "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v11}, Ljava/util/PriorityQueue;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2133
    :cond_3d
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v9}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$SyncOperation;

    .line 2134
    .local v6, operation:Landroid/content/SyncManager$SyncOperation;
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    iget-object v10, v6, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    .line 2135
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is in mOpsByWhen but not mOpsByKey"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2139
    .end local v6           #operation:Landroid/content/SyncManager$SyncOperation;
    :cond_78
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2140
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncManager$SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncManager$SyncOperation;

    .line 2141
    .restart local v6       #operation:Landroid/content/SyncManager$SyncOperation;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2142
    .local v4, key:Ljava/lang/String;
    iget-object v9, v6, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c5

    .line 2143
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in mOpsByKey doesn\'t match key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2146
    :cond_c5
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v9, v6}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_82

    .line 2147
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is in mOpsByKey but not mOpsByWhen"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2152
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncManager$SyncOperation;>;"
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #operation:Landroid/content/SyncManager$SyncOperation;
    :cond_ec
    if-eqz p1, :cond_178

    .line 2153
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v9}, Landroid/content/SyncStorageEngine;->getPendingOperationCount()I

    move-result v0

    .line 2154
    .local v0, N:I
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v9, v0, :cond_178

    .line 2155
    iget-object v9, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v9}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v7

    .line 2157
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2158
    .local v8, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_108
    if-ge v2, v0, :cond_13e

    .line 2159
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 2160
    .local v5, op:Landroid/content/SyncStorageEngine$PendingOperation;
    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2162
    const-string v9, ": account="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    iget-object v9, v5, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    const-string v9, " syncSource="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2165
    iget v9, v5, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2166
    const-string v9, " authority="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    iget-object v9, v5, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    add-int/lit8 v2, v2, 0x1

    goto :goto_108

    .line 2170
    .end local v5           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_13e
    invoke-virtual {p0, v8}, Landroid/content/SyncManager$SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 2171
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DB size mismatch: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " != "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2176
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_178
    return-void
.end method


# virtual methods
.method public add(Landroid/content/SyncManager$SyncOperation;)Z
    .registers 4
    .parameter "operation"

    .prologue
    .line 1992
    new-instance v0, Landroid/content/SyncManager$SyncOperation;

    invoke-direct {v0, p1}, Landroid/content/SyncManager$SyncOperation;-><init>(Landroid/content/SyncManager$SyncOperation;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/SyncManager$SyncQueue;->add(Landroid/content/SyncManager$SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public clear(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 2098
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2099
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncManager$SyncOperation;>;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 2100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2101
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncManager$SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncManager$SyncOperation;

    .line 2102
    .local v2, syncOperation:Landroid/content/SyncManager$SyncOperation;
    if-eqz p1, :cond_26

    iget-object v3, v2, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2103
    :cond_26
    if-eqz p2, :cond_30

    iget-object v3, v2, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2106
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2107
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 2108
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in mOpsByWhen"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2112
    :cond_5a
    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v4, v2, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v3, v4}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2113
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find pending row for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2119
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncManager$SyncOperation;>;"
    .end local v2           #syncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_7d
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter "sb"

    .prologue
    .line 2122
    const-string v2, "SyncQueue: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2123
    iget-object v2, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncManager$SyncOperation;

    .line 2124
    .local v1, operation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2126
    .end local v1           #operation:Landroid/content/SyncManager$SyncOperation;
    :cond_31
    return-void
.end method

.method public head()Landroid/content/SyncManager$SyncOperation;
    .registers 2

    .prologue
    .line 2080
    iget-object v0, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/SyncManager$SyncOperation;

    return-object p0
.end method

.method public popHead()V
    .registers 5

    .prologue
    .line 2085
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$SyncOperation;

    .line 2086
    .local v0, operation:Landroid/content/SyncManager$SyncOperation;
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_31

    .line 2087
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in mOpsByKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2090
    :cond_31
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v2, v0, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v1, v2}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 2091
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2095
    :cond_54
    return-void
.end method

.method public removeByKey(Ljava/lang/String;)V
    .registers 6
    .parameter "operationKey"

    .prologue
    .line 2064
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByKey:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncManager$SyncOperation;

    .line 2065
    .local v0, operationToRemove:Landroid/content/SyncManager$SyncOperation;
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mOpsByWhen:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2066
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in mOpsByWhen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2070
    :cond_2f
    iget-object v1, p0, Landroid/content/SyncManager$SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v2, v0, Landroid/content/SyncManager$SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v1, v2}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2071
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2076
    :cond_52
    return-void
.end method
