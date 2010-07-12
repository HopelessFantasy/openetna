.class public abstract Landroid/content/TempProviderSyncAdapter;
.super Landroid/content/SyncAdapter;
.source "TempProviderSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/TempProviderSyncAdapter$SyncThread;,
        Landroid/content/TempProviderSyncAdapter$SyncData;
    }
.end annotation


# static fields
.field private static final MAX_GET_SERVER_DIFFS_LOOP_COUNT:I = 0x14

.field private static final MAX_UPLOAD_CHANGES_LOOP_COUNT:I = 0xa

.field private static final NUM_ALLOWED_SIMULTANEOUS_DELETIONS:I = 0x5

.field private static final PERCENT_ALLOWED_SIMULTANEOUS_DELETIONS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "Sync"


# instance fields
.field private volatile mAdapterSyncStarted:Z

.field private mContext:Landroid/content/Context;

.field private volatile mProvider:Landroid/content/SyncableContentProvider;

.field private volatile mProviderSyncStarted:Z

.field private volatile mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;


# direct methods
.method public constructor <init>(Landroid/content/SyncableContentProvider;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/SyncAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    .line 34
    iput-object p1, p0, Landroid/content/TempProviderSyncAdapter;->mProvider:Landroid/content/SyncableContentProvider;

    .line 35
    return-void
.end method

.method static synthetic access$000(Landroid/content/TempProviderSyncAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Landroid/content/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    return v0
.end method

.method static synthetic access$002(Landroid/content/TempProviderSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Landroid/content/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/content/TempProviderSyncAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Landroid/content/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    return v0
.end method

.method static synthetic access$102(Landroid/content/TempProviderSyncAdapter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Landroid/content/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    return p1
.end method

.method static synthetic access$200(Landroid/content/TempProviderSyncAdapter;)Landroid/content/SyncableContentProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mProvider:Landroid/content/SyncableContentProvider;

    return-object v0
.end method

.method static synthetic access$302(Landroid/content/TempProviderSyncAdapter;Landroid/content/TempProviderSyncAdapter$SyncThread;)Landroid/content/TempProviderSyncAdapter$SyncThread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    return-object p1
.end method


# virtual methods
.method public cancelSync()V
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    if-eqz v0, :cond_9

    .line 533
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    invoke-virtual {v0}, Landroid/content/TempProviderSyncAdapter$SyncThread;->cancelSync()V

    .line 535
    :cond_9
    return-void
.end method

.method protected createSyncInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .registers 13
    .parameter "stats"

    .prologue
    const-wide/16 v8, 0x0

    .line 538
    iget-wide v2, p1, Landroid/content/SyncStats;->numEntries:J

    .line 539
    .local v2, numEntries:J
    iget-wide v0, p1, Landroid/content/SyncStats;->numDeletes:J

    .line 541
    .local v0, numDeletedEntries:J
    cmp-long v7, v0, v8

    if-nez v7, :cond_1a

    move-wide v4, v8

    .line 545
    .local v4, percentDeleted:J
    :goto_b
    const-wide/16 v7, 0x5

    cmp-long v7, v0, v7

    if-lez v7, :cond_22

    const-wide/16 v7, 0x14

    cmp-long v7, v4, v7

    if-lez v7, :cond_22

    const/4 v7, 0x1

    move v6, v7

    .line 548
    .local v6, tooManyDeletions:Z
    :goto_19
    return v6

    .line 541
    .end local v4           #percentDeleted:J
    .end local v6           #tooManyDeletions:Z
    :cond_1a
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v0

    add-long v9, v2, v0

    div-long/2addr v7, v9

    move-wide v4, v7

    goto :goto_b

    .line 545
    .restart local v4       #percentDeleted:J
    :cond_22
    const/4 v7, 0x0

    move v6, v7

    goto :goto_19
.end method

.method protected initTempProvider(Landroid/content/SyncableContentProvider;)V
    .registers 2
    .parameter "cp"

    .prologue
    .line 158
    return-void
.end method

.method public abstract isReadOnly()Z
.end method

.method protected logSyncDetails(JJLandroid/content/SyncResult;)V
    .registers 10
    .parameter "bytesSent"
    .parameter "bytesReceived"
    .parameter "result"

    .prologue
    .line 518
    const/16 v0, 0xab7

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Sync"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 519
    return-void
.end method

.method public newSyncData()Landroid/content/TempProviderSyncAdapter$SyncData;
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onAccountsChanged([Ljava/lang/String;)V
.end method

.method public abstract onSyncCanceled()V
.end method

.method public abstract onSyncEnding(Landroid/content/SyncContext;Z)V
.end method

.method public abstract onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V
.end method

.method public readSyncData(Landroid/content/SyncableContentProvider;)Landroid/content/TempProviderSyncAdapter$SyncData;
    .registers 3
    .parameter "contentProvider"

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract sendClientDiffs(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;Z)V
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 49
    iput-object p1, p0, Landroid/content/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public startSync(Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .parameter "syncContext"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 522
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    if-eqz v0, :cond_a

    .line 523
    sget-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {p1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    .line 529
    :goto_9
    return-void

    .line 527
    :cond_a
    new-instance v0, Landroid/content/TempProviderSyncAdapter$SyncThread;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/TempProviderSyncAdapter$SyncThread;-><init>(Landroid/content/TempProviderSyncAdapter;Landroid/content/SyncContext;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    .line 528
    iget-object v0, p0, Landroid/content/TempProviderSyncAdapter;->mSyncThread:Landroid/content/TempProviderSyncAdapter$SyncThread;

    invoke-virtual {v0}, Landroid/content/TempProviderSyncAdapter$SyncThread;->start()V

    goto :goto_9
.end method

.method public writeSyncData(Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;)V
    .registers 3
    .parameter "syncData"
    .parameter "contentProvider"

    .prologue
    .line 142
    return-void
.end method
