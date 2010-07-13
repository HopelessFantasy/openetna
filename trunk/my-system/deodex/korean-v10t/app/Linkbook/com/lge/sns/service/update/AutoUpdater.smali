.class public abstract Lcom/lge/sns/service/update/AutoUpdater;
.super Ljava/lang/Object;
.source "AutoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
    }
.end annotation


# static fields
.field static final MIN_CHECK_INTERVAL:J = 0x927c0L

.field public static final TAG:Ljava/lang/String; = "Linkbook.AutoUpdater"


# instance fields
.field protected final account:Lcom/lge/sns/account/Account;

.field protected final accountFacade:Lcom/lge/sns/account/IAccountFacade;

.field protected final ctx:Landroid/content/Context;

.field private notifyManger:Landroid/app/NotificationManager;

.field protected final snsManager:Lcom/lge/sns/SnsManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/lge/sns/account/Account;)V
    .registers 4
    .parameter "ctx"
    .parameter "account"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/AutoUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    .line 67
    iput-object p1, p0, Lcom/lge/sns/service/update/AutoUpdater;->ctx:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    .line 69
    iget-object v0, p0, Lcom/lge/sns/service/update/AutoUpdater;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v0, p1}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/service/update/AutoUpdater;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    .line 70
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lge/sns/service/update/AutoUpdater;->notifyManger:Landroid/app/NotificationManager;

    .line 71
    return-void
.end method


# virtual methods
.method protected abstract executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected getNotification(Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;)Landroid/app/Notification;
    .registers 14
    .parameter "r"

    .prologue
    const/4 v11, 0x0

    .line 74
    iget-object v6, p0, Lcom/lge/sns/service/update/AutoUpdater;->ctx:Landroid/content/Context;

    const v7, 0x7f05002e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, tickerText:Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/sns/service/update/AutoUpdater;->ctx:Landroid/content/Context;

    const v7, 0x7f05002c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfFeed()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    invoke-virtual {p1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfMessage()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfFeed()I

    move-result v6

    if-nez v6, :cond_9f

    invoke-virtual {p1}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfMessage()I

    move-result v6

    if-lez v6, :cond_9f

    .line 79
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lge.sns.account.intent.action.VIEW_MESSAGE"

    iget-object v7, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v7}, Lcom/lge/sns/account/Account;->toUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    .local v4, notificationIntent:Landroid/content/Intent;
    :goto_44
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v6, p0, Lcom/lge/sns/service/update/AutoUpdater;->ctx:Landroid/content/Context;

    invoke-static {v6, v11, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 86
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/lge/sns/service/update/AutoUpdater;->ctx:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030008

    invoke-direct {v1, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 87
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v6, 0x7f080016

    iget-object v7, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v7}, Lcom/lge/sns/account/Account;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 88
    const v6, 0x7f080017

    iget-object v7, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v7}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 89
    const v6, 0x7f080018

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 91
    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f0200ad

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 92
    .local v3, notification:Landroid/app/Notification;
    const v6, -0xff0100

    iput v6, v3, Landroid/app/Notification;->ledARGB:I

    .line 93
    const/16 v6, 0x12c

    iput v6, v3, Landroid/app/Notification;->ledOnMS:I

    .line 94
    const/16 v6, 0x3e8

    iput v6, v3, Landroid/app/Notification;->ledOffMS:I

    .line 95
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x11

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 96
    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 97
    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 98
    return-object v3

    .line 81
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v1           #contentView:Landroid/widget/RemoteViews;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #notificationIntent:Landroid/content/Intent;
    :cond_9f
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.lge.sns.account.intent.action.VIEW_FEED"

    iget-object v7, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v7}, Lcom/lge/sns/account/Account;->toUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #notificationIntent:Landroid/content/Intent;
    goto :goto_44
.end method

.method protected abstract getUpdateReport(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
.end method

.method protected notifyUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/service/update/AutoUpdater;->getUpdateReport(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;

    move-result-object v0

    .line 103
    .local v0, r:Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;
    invoke-virtual {v0}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfFeed()I

    move-result v1

    if-gtz v1, :cond_10

    invoke-virtual {v0}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfMessage()I

    move-result v1

    if-lez v1, :cond_20

    .line 104
    :cond_10
    iget-object v1, p0, Lcom/lge/sns/service/update/AutoUpdater;->notifyManger:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v0}, Lcom/lge/sns/service/update/AutoUpdater;->getNotification(Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 107
    :cond_20
    const-string v1, "Linkbook.AutoUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfFeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " feeds and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/lge/sns/service/update/AutoUpdater$UpdateReport;->getNumberOfMessage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages are updated from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v3}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 52
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/CacheManager;->clearCache()V

    .line 53
    iget-object v4, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v4}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v0

    .line 54
    .local v0, cred:Lcom/lge/sns/account/Credential;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 55
    iget-object v4, p0, Lcom/lge/sns/service/update/AutoUpdater;->account:Lcom/lge/sns/account/Account;

    invoke-virtual {v4}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, snsId:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, userId:Ljava/lang/String;
    if-eqz v2, :cond_34

    if-eqz v3, :cond_34

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/lge/sns/service/update/AutoUpdater;->executeUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 59
    .local v1, result:Z
    if-eqz v1, :cond_34

    iget-object v4, p0, Lcom/lge/sns/service/update/AutoUpdater;->accountFacade:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v4, v2}, Lcom/lge/sns/account/IAccountFacade;->isNotify(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/lge/sns/service/update/AutoUpdater;->notifyUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1           #result:Z
    .end local v2           #snsId:Ljava/lang/String;
    .end local v3           #userId:Ljava/lang/String;
    :cond_34
    return-void
.end method
