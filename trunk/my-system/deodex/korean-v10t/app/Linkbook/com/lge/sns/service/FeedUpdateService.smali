.class public Lcom/lge/sns/service/FeedUpdateService;
.super Landroid/app/Service;
.source "FeedUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/service/FeedUpdateService$FeedUpdateBinder;
    }
.end annotation


# static fields
.field public static final ACTION_FEED_UPDATE:Ljava/lang/String; = "com.lge.sns.intent.action.UPDATE_FEED"

.field public static final CATEGORY_SNS_SERVICE:Ljava/lang/String; = "com.lge.intent.category.SERVICE"

.field static final MIN_CHECK_INTERVAL:J = 0x927c0L

.field static final TAG:Ljava/lang/String; = "FeedUpdateService"


# instance fields
.field private accountFacade:Lcom/lge/sns/account/IAccountFacade;

.field private settingFacade:Lcom/lge/sns/setting/ISettingFacade;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    return-void
.end method

.method private startFeedUpdate(J)V
    .registers 10
    .parameter "current"

    .prologue
    .line 66
    invoke-static {}, Lcom/lge/sns/BackgroundJobManager;->getInstance()Lcom/lge/sns/BackgroundJobManager;

    move-result-object v3

    .line 67
    .local v3, jomManager:Lcom/lge/sns/BackgroundJobManager;
    iget-object v5, p0, Lcom/lge/sns/service/FeedUpdateService;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/lge/sns/account/IAccountFacade;->getAccountList(Z)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/account/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/account/Account;

    .line 69
    .local v0, account:Lcom/lge/sns/account/Account;
    invoke-static {p0, v0}, Lcom/lge/sns/service/update/AutoUpdateFactory;->getAutoUpdater(Landroid/content/Context;Lcom/lge/sns/account/Account;)Lcom/lge/sns/service/update/AutoUpdater;

    move-result-object v4

    .line 70
    .local v4, updater:Lcom/lge/sns/service/update/AutoUpdater;
    invoke-virtual {v3, v4}, Lcom/lge/sns/BackgroundJobManager;->addJob(Ljava/lang/Runnable;)V

    goto :goto_f

    .line 72
    .end local v0           #account:Lcom/lge/sns/account/Account;
    .end local v4           #updater:Lcom/lge/sns/service/update/AutoUpdater;
    :cond_23
    iget-object v5, p0, Lcom/lge/sns/service/FeedUpdateService;->settingFacade:Lcom/lge/sns/setting/ISettingFacade;

    invoke-interface {v5, p1, p2}, Lcom/lge/sns/setting/ISettingFacade;->scheduleNextAlarm(J)V

    .line 73
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    .line 48
    .local v0, snsManager:Lcom/lge/sns/SnsManager;
    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/service/FeedUpdateService;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 49
    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/service/FeedUpdateService;->settingFacade:Lcom/lge/sns/setting/ISettingFacade;

    .line 50
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const-string v4, "FeedUpdateService"

    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, current:J
    const-string v2, "FeedUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FeedUpdateService is invoked at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v2, "com.lge.sns.intent.action.UPDATE_FEED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/lge/sns/service/FeedUpdateService;->startFeedUpdate(J)V

    .line 63
    :goto_30
    return-void

    .line 61
    :cond_31
    const-string v2, "FeedUpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method
