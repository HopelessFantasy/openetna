.class public Lcom/android/providers/subscribedfeeds/GoogleSubscribedFeedsProvider;
.super Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;
.source "GoogleSubscribedFeedsProvider.java"


# instance fields
.field private mSyncAdapter:Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getSyncAdapter()Landroid/content/SyncAdapter;
    .registers 3

    .prologue
    .line 26
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/subscribedfeeds/GoogleSubscribedFeedsProvider;->mSyncAdapter:Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;

    if-nez v0, :cond_10

    .line 27
    new-instance v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;

    invoke-virtual {p0}, Lcom/android/providers/subscribedfeeds/GoogleSubscribedFeedsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;-><init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V

    iput-object v0, p0, Lcom/android/providers/subscribedfeeds/GoogleSubscribedFeedsProvider;->mSyncAdapter:Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;

    .line 29
    :cond_10
    iget-object v0, p0, Lcom/android/providers/subscribedfeeds/GoogleSubscribedFeedsProvider;->mSyncAdapter:Lcom/android/providers/subscribedfeeds/SubscribedFeedsSyncAdapter;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 26
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
