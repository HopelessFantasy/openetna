.class public Lcom/lge/sns/service/update/TwitterUpdater;
.super Lcom/lge/sns/service/update/MiniFeedUpdater;
.source "TwitterUpdater.java"


# instance fields
.field private messageFacade:Lcom/lge/sns/message/IMessageFacade;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V
    .registers 4
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/MiniFeedUpdater;-><init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V

    .line 16
    iget-object v0, p0, Lcom/lge/sns/service/update/TwitterUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/TwitterUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 17
    iget-object v0, p0, Lcom/lge/sns/service/update/TwitterUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/TwitterUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    .line 18
    return-void
.end method

.method private updateFriends(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/service/update/TwitterUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 42
    :goto_5
    return-void

    .line 39
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v2, "Fail to update Friend List"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method private updateMessages(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const-string v3, "Linkbook.AutoUpdater"

    .line 47
    :try_start_2
    iget-object v1, p0, Lcom/lge/sns/service/update/TwitterUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    const-string v2, "Inbox"

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_11

    .line 52
    :goto_9
    :try_start_9
    iget-object v1, p0, Lcom/lge/sns/service/update/TwitterUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    const-string v2, "Outbox"

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/sns/message/IMessageFacade;->updateMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_1b

    .line 57
    :goto_10
    return-void

    .line 48
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v1, "Fail to update Inbox"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 53
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 54
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v1, "Fail to update Outbox"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private updateProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/service/update/TwitterUpdater;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->refreshProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 34
    :goto_5
    return-void

    .line 31
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 32
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Linkbook.AutoUpdater"

    const-string v2, "Fail to update profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method


# virtual methods
.method protected executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/lge/sns/service/update/MiniFeedUpdater;->executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 22
    .local v0, result:Z
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/TwitterUpdater;->updateProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/TwitterUpdater;->updateMessages(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/service/update/TwitterUpdater;->updateFriends(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v0
.end method

.method protected getUpdateReport(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
    .registers 6
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 60
    new-instance v0, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;

    invoke-direct {v0}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;-><init>()V

    .line 61
    .local v0, r:Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
    iget-object v1, p0, Lcom/lge/sns/service/update/TwitterUpdater;->feedFacade:Lcom/lge/sns/feed/IFeedFacade;

    invoke-interface {v1, p1}, Lcom/lge/sns/feed/IFeedFacade;->getNewFeedCount(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->setNumberOfFeed(I)V

    .line 62
    iget-object v1, p0, Lcom/lge/sns/service/update/TwitterUpdater;->messageFacade:Lcom/lge/sns/message/IMessageFacade;

    const-string v2, "Inbox"

    invoke-interface {v1, p1, p2, v2}, Lcom/lge/sns/message/IMessageFacade;->getMessageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->setNumberOfMessage(I)V

    .line 63
    return-object v0
.end method
