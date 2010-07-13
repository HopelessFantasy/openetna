.class public abstract Lcom/lge/sns/service/update/MiniFeedUpdater;
.super Lcom/lge/sns/service/update/AutoUpdater;
.source "MiniFeedUpdater.java"


# instance fields
.field protected feedFacade:Lcom/lge/sns/feed/IFeedFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V
    .registers 4
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/AutoUpdater;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .line 23
    iget-object v0, p0, Lcom/lge/sns/service/update/MiniFeedUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getFeeds(Landroid/content/Context;)Lcom/lge/sns/feed/IFeedFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/MiniFeedUpdater;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    .line 24
    return-void
.end method


# virtual methods
.method protected executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/service/update/MiniFeedUpdater;->updateMiniFeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isRecentlyUpdated(J)Z
    .registers 8
    .parameter "current"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/lge/sns/service/update/MiniFeedUpdater;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    iget-object v2, p0, Lcom/lge/sns/service/update/MiniFeedUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/sns/account/IAccountFacade;->getFeedUpdatedDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 30
    .local v0, lastUpdated:Ljava/util/Date;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-lez v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method protected updateMiniFeed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v6, 0x0

    const-string v5, "Linkbook.AutoUpdater"

    .line 35
    const-string v3, "Linkbook.AutoUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start updating for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    .local v0, current:J
    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/service/update/MiniFeedUpdater;->isRecentlyUpdated(J)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 40
    :try_start_25
    iget-object v3, p0, Lcom/lge/sns/service/update/MiniFeedUpdater;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v3, p1, p2}, Lcom/lge/sns/feed/IFeedFacade;->refreshFeedList(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Lcom/lge/sns/SnsException; {:try_start_25 .. :try_end_2a} :catch_31

    move-result v3

    if-lez v3, :cond_2f

    const/4 v3, 0x1

    .line 47
    :goto_2e
    return v3

    :cond_2f
    move v3, v6

    .line 40
    goto :goto_2e

    .line 41
    :catch_31
    move-exception v3

    move-object v2, v3

    .line 42
    .local v2, e:Lcom/lge/sns/SnsException;
    const-string v3, "Linkbook.AutoUpdater"

    const-string v3, "Fail to update feeds"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #e:Lcom/lge/sns/SnsException;
    :goto_3a
    move v3, v6

    .line 47
    goto :goto_2e

    .line 45
    :cond_3c
    const-string v3, "Linkbook.AutoUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feeds from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was updated recently. ignore this invocation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method
