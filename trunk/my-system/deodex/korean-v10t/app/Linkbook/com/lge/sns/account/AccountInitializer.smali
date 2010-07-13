.class public abstract Lcom/lge/sns/account/AccountInitializer;
.super Ljava/lang/Object;
.source "AccountInitializer.java"

# interfaces
.implements Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
.implements Lcom/lge/sns/BackgroundJobManager$JobListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "AccountInitializer"


# instance fields
.field private final ctx:Landroid/content/Context;

.field feedCount:I

.field protected feedFacade:Lcom/lge/sns/feed/IFeedFacade;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/account/AccountInitializer$InitializeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final snsId:Ljava/lang/String;

.field protected snsManager:Lcom/lge/sns/SnsManager;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "ctx"
    .parameter "snsId"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    .line 45
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    .line 52
    iput-object p2, p0, Lcom/lge/sns/account/AccountInitializer;->snsId:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/lge/sns/account/AccountInitializer;->ctx:Landroid/content/Context;

    .line 54
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p1}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    .line 55
    .local v0, accountFacade:Lcom/lge/sns/account/IAccountFacade;
    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->uid:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 57
    return-void
.end method


# virtual methods
.method public addInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 73
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_10
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected executePreInitialize()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v4, p0, Lcom/lge/sns/account/AccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    .line 102
    .local v1, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    :try_start_b
    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 104
    .local v2, profileId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_3a

    .line 105
    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_28
    .catch Lcom/lge/sns/SnsException; {:try_start_b .. :try_end_28} :catch_2f

    move-result-object v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    .line 110
    .end local v2           #profileId:J
    :goto_2c
    return v4

    .restart local v2       #profileId:J
    :cond_2d
    move v4, v6

    .line 105
    goto :goto_2c

    .line 107
    .end local v2           #profileId:J
    :catch_2f
    move-exception v4

    move-object v0, v4

    .line 108
    .local v0, e:Lcom/lge/sns/SnsException;
    const-string v4, "AccountInitializer"

    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Lcom/lge/sns/SnsException;
    :cond_3a
    move v4, v6

    .line 110
    goto :goto_2c
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializer;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getInitializeJob()Ljava/lang/Runnable;
.end method

.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializer;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializer;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public initialize()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/sns/CacheManager;->clearCache()V

    .line 86
    iput v2, p0, Lcom/lge/sns/account/AccountInitializer;->feedCount:I

    .line 87
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v1, p0}, Lcom/lge/sns/feed/IFeedFacade;->addFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->executePreInitialize()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 89
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->snsId:Ljava/lang/String;

    invoke-static {v1}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v0

    .line 92
    .local v0, jobManager:Lcom/lge/sns/BackgroundJobManager;
    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->getInitializeJob()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addJob(Ljava/lang/Runnable;)V

    .line 93
    const/4 v1, 0x1

    .line 95
    .end local v0           #jobManager:Lcom/lge/sns/BackgroundJobManager;
    :goto_23
    return v1

    :cond_24
    move v1, v2

    goto :goto_23
.end method

.method protected notifyInitializeCompleted()V
    .registers 5

    .prologue
    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_27

    .line 155
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_24

    .line 157
    .local v1, l:Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    :try_start_15
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializer;->snsId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/lge/sns/account/AccountInitializer$InitializeListener;->onInitializeCompleted(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_9

    .line 158
    :catch_1b
    move-exception v3

    goto :goto_9

    .line 162
    .end local v1           #l:Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    :cond_1d
    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_24

    .line 164
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializer;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v2, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    .line 166
    return-void

    .line 162
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_24
    move-exception v3

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 164
    :catchall_27
    move-exception v2

    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializer;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v3, p0}, Lcom/lge/sns/feed/IFeedFacade;->removeFeedUpdateListener(Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;)V

    throw v2
.end method

.method public onFeedAdded(Lcom/lge/sns/feed/Feed;)V
    .registers 7
    .parameter "feed"

    .prologue
    .line 115
    iget v2, p0, Lcom/lge/sns/account/AccountInitializer;->feedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/sns/account/AccountInitializer;->feedCount:I

    .line 116
    iget-object v2, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 117
    :try_start_9
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_27

    .line 119
    .local v1, l:Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    :try_start_1b
    iget-object v3, p0, Lcom/lge/sns/account/AccountInitializer;->snsId:Ljava/lang/String;

    iget v4, p0, Lcom/lge/sns/account/AccountInitializer;->feedCount:I

    invoke-interface {v1, v3, v4}, Lcom/lge/sns/account/AccountInitializer$InitializeListener;->onFeedAdded(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_22} :catch_23

    goto :goto_f

    .line 120
    :catch_23
    move-exception v3

    goto :goto_f

    .line 124
    .end local v1           #l:Lcom/lge/sns/account/AccountInitializer$InitializeListener;
    :cond_25
    :try_start_25
    monitor-exit v2

    .line 125
    return-void

    .line 124
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v3
.end method

.method public onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
    .registers 2
    .parameter "feed"

    .prologue
    .line 131
    return-void
.end method

.method public onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
    .registers 2
    .parameter "feed"

    .prologue
    .line 128
    return-void
.end method

.method public onJobCompleted(Lcom/lge/sns/BackgroundJobManager;)V
    .registers 3
    .parameter "jobManager"

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/sns/account/AccountInitializer;->notifyInitializeCompleted()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 150
    return-void

    .line 147
    :catchall_4
    move-exception v0

    throw v0
.end method

.method public onJobExecuted(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "jobManager"
    .parameter "r"

    .prologue
    .line 142
    return-void
.end method

.method public onJobExecuting(Lcom/lge/sns/BackgroundJobManager;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "jobManager"
    .parameter "r"

    .prologue
    .line 138
    return-void
.end method

.method public onJobStarted(Lcom/lge/sns/BackgroundJobManager;)V
    .registers 2
    .parameter "jobManager"

    .prologue
    .line 135
    return-void
.end method

.method public removeInitializeListener(Lcom/lge/sns/account/AccountInitializer$InitializeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/account/AccountInitializer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v0

    .line 82
    return-void

    .line 81
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
