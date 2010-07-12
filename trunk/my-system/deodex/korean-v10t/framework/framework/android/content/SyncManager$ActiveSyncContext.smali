.class Landroid/content/SyncManager$ActiveSyncContext;
.super Landroid/content/ISyncContext$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveSyncContext"
.end annotation


# instance fields
.field final mContentProvider:Landroid/content/IContentProvider;

.field final mHistoryRowId:J

.field final mStartTime:J

.field final mSyncAdapter:Landroid/content/ISyncAdapter;

.field final mSyncOperation:Landroid/content/SyncManager$SyncOperation;

.field mTimeoutStartTime:J

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;Landroid/content/IContentProvider;Landroid/content/ISyncAdapter;J)V
    .registers 9
    .parameter
    .parameter "syncOperation"
    .parameter "contentProvider"
    .parameter "syncAdapter"
    .parameter "historyRowId"

    .prologue
    .line 972
    iput-object p1, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    .line 973
    invoke-direct {p0}, Landroid/content/ISyncContext$Stub;-><init>()V

    .line 974
    iput-object p2, p0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    .line 975
    iput-wide p5, p0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 976
    iput-object p3, p0, Landroid/content/SyncManager$ActiveSyncContext;->mContentProvider:Landroid/content/IContentProvider;

    .line 977
    iput-object p4, p0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 979
    iget-wide v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    iput-wide v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    .line 980
    return-void
.end method


# virtual methods
.method public onFinished(Landroid/content/SyncResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 993
    iget-object v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    invoke-static {v0, p0, p1}, Landroid/content/SyncManager;->access$700(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 994
    return-void
.end method

.method public sendHeartbeat()V
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    invoke-static {v0}, Landroid/content/SyncManager;->access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v0

    if-ne v0, p0, :cond_d

    .line 985
    iget-object v0, p0, Landroid/content/SyncManager$ActiveSyncContext;->this$0:Landroid/content/SyncManager;

    invoke-virtual {v0}, Landroid/content/SyncManager;->updateHeartbeatTime()V

    .line 987
    :cond_d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;)V

    .line 1007
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter "sb"

    .prologue
    .line 997
    const-string v0, "startTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeoutStartTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryRowId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    return-void
.end method
