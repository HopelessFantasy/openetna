.class Lcom/android/server/vpn/VpnService$NotificationHelper;
.super Ljava/lang/Object;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method private constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 489
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService$NotificationHelper;-><init>(Lcom/android/server/vpn/VpnService;)V

    return-void
.end method

.method private enableNotification(Landroid/app/Notification;)V
    .registers 4
    .parameter "n"

    .prologue
    .line 518
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 520
    return-void
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .registers 13
    .parameter "duration"

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const-wide/16 v6, 0xe10

    const-wide/16 v8, 0x3c

    .line 537
    div-long v0, p1, v6

    .line 538
    .local v0, hours:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .local v2, sb:Ljava/lang/StringBuilder;
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1a

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    :cond_1a
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    rem-long v6, p1, v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-long v6, p1, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getNotificationMessage(Z)Ljava/lang/String;
    .registers 8
    .parameter "connected"

    .prologue
    .line 546
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    if-eqz p1, :cond_16

    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v4}, Lcom/android/server/vpn/VpnService;->access$800(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 548
    .local v0, time:J
    invoke-direct {p0, v0, v1}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 550
    .end local v0           #time:J
    :goto_15
    return-object v2

    :cond_16
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const v3, 0x7f030003

    invoke-virtual {v2, v3}, Lcom/android/server/vpn/VpnServiceBinder;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private getNotificationTitle(Z)Ljava/lang/String;
    .registers 6
    .parameter "connected"

    .prologue
    .line 528
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    if-eqz p1, :cond_21

    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Lcom/android/server/vpn/VpnServiceBinder;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 533
    .local v0, formatString:Ljava/lang/String;
    :goto_e
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v3, v3, Lcom/android/server/vpn/VpnService;->mProfile:Landroid/net/vpn/VpnProfile;

    invoke-virtual {v3}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 528
    .end local v0           #formatString:Ljava/lang/String;
    :cond_21
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v1, v1, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Lcom/android/server/vpn/VpnServiceBinder;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_e
.end method

.method private prepareNotificationIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v3, 0x0

    .line 523
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    new-instance v1, Landroid/net/vpn/VpnManager;

    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {v1, v2}, Landroid/net/vpn/VpnManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/vpn/VpnManager;->createSettingsActivityIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method disableNotification()V
    .registers 3

    .prologue
    .line 513
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    iget-object v0, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v0, v0, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/server/vpn/VpnServiceBinder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 515
    return-void
.end method

.method showDisconnect()V
    .registers 7

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v5, 0x0

    .line 502
    invoke-direct {p0, v5}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationTitle(Z)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    const v2, 0x7f020001

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 505
    .local v0, n:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {p0, v5}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationMessage(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->prepareNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 507
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 508
    invoke-virtual {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->disableNotification()V

    .line 509
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->enableNotification(Landroid/app/Notification;)V

    .line 510
    return-void
.end method

.method update()V
    .registers 7

    .prologue
    .local p0, this:Lcom/android/server/vpn/VpnService$NotificationHelper;,"Lcom/android/server/vpn/VpnService<TE;>.NotificationHelper;"
    const/4 v5, 0x1

    .line 491
    invoke-direct {p0, v5}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationTitle(Z)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, title:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    const/high16 v2, 0x7f02

    iget-object v3, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v3}, Lcom/android/server/vpn/VpnService;->access$800(Lcom/android/server/vpn/VpnService;)J

    move-result-wide v3

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 494
    .local v0, n:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$NotificationHelper;->this$0:Lcom/android/server/vpn/VpnService;

    iget-object v2, v2, Lcom/android/server/vpn/VpnService;->mContext:Lcom/android/server/vpn/VpnServiceBinder;

    invoke-direct {p0, v5}, Lcom/android/server/vpn/VpnService$NotificationHelper;->getNotificationMessage(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->prepareNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 496
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 497
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 498
    invoke-direct {p0, v0}, Lcom/android/server/vpn/VpnService$NotificationHelper;->enableNotification(Landroid/app/Notification;)V

    .line 499
    return-void
.end method
