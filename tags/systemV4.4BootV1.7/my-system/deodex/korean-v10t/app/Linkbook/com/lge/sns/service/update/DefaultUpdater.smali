.class public Lcom/lge/sns/service/update/DefaultUpdater;
.super Lcom/lge/sns/service/update/MiniFeedUpdater;
.source "DefaultUpdater.java"


# instance fields
.field protected mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field protected messageFacade:Lcom/lge/sns/message/IMessageFacade;

.field protected profileFacade:Lcom/lge/sns/profile/IProfileFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V
    .registers 4
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/MiniFeedUpdater;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .line 23
    iget-object v0, p0, Lcom/lge/sns/service/update/DefaultUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/DefaultUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 24
    iget-object v0, p0, Lcom/lge/sns/service/update/DefaultUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/DefaultUpdater;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 25
    iget-object v0, p0, Lcom/lge/sns/service/update/DefaultUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/DefaultUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    .line 26
    return-void
.end method

.method private updateFriends(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 69
    :goto_5
    return-void

    .line 66
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v2, "Fail to update Friend List"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private updateMessageThread(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v3, 0x0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/message/IMessageFacade;->updateThreads(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_d

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    .line 42
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 38
    goto :goto_a

    .line 39
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v2, "Fail to update profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 42
    goto :goto_a
.end method

.method private updateProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const-string v3, "Linkbook.AutoUpdater"

    .line 47
    :try_start_2
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->refreshProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_13

    .line 52
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_1d

    .line 57
    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/sns/media/IMediaFacade;->updateAllMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_27

    .line 61
    :goto_12
    return-void

    .line 48
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v1, "Fail to update profile"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 54
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v1, "Fail to update profile comment"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 58
    .end local v0           #e:Ljava/lang/Exception;
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 59
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v1, "Fail to update Media Files"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method


# virtual methods
.method protected executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/lge/sns/service/update/MiniFeedUpdater;->executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 30
    .local v0, result:Z
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/DefaultUpdater;->updateMessageThread(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/DefaultUpdater;->updateProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/DefaultUpdater;->updateFriends(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v0
.end method

.method protected getUpdateReport(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
    .registers 5
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 72
    new-instance v0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;

    invoke-direct {v0}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;-><init>()V

    .line 73
    .local v0, r:Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/feed/IFeedFacade;->getNewFeedCount(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->setNumberOfFeed(I)V

    .line 74
    iget-object v1, p0, Lcom/lge/sns/service/update/DefaultUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/message/IMessageFacade;->getThreadCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->setNumberOfMessage(I)V

    .line 75
    return-object v0
.end method
