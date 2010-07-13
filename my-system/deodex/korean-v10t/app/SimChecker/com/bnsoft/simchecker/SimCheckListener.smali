.class public Lcom/bnsoft/simchecker/SimCheckListener;
.super Landroid/content/BroadcastReceiver;
.source "SimCheckListener.java"


# static fields
.field public static final ACTION_SIMCHANGED:Ljava/lang/String; = "android.intent.action.SIM_CHANGED"

.field public static final NOTIFICATION_TICKER_ICONID:I = 0x7f020000

.field public static final NOTIFICATION_TICKER_REFERENCE_ID:I = 0x1825f

.field public static final TAG:Ljava/lang/String; = "SimCheckListener"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private registeSimchangedNotification(Landroid/content/Context;)V
    .registers 14
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 49
    .local v8, resource:Landroid/content/res/Resources;
    const v10, 0x7f040005

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, notification_ticker_title:Ljava/lang/String;
    const v10, 0x7f040006

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, expanded_title:Ljava/lang/String;
    const v10, 0x7f040007

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, expanded_body:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 53
    .local v0, currentTime:J
    const-string v10, "notification"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 55
    .local v5, notificationManager:Landroid/app/NotificationManager;
    new-instance v4, Landroid/app/Notification;

    const/high16 v10, 0x7f02

    invoke-direct {v4, v10, v6, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 58
    .local v4, notification:Landroid/app/Notification;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v9, simcheckeintent:Landroid/content/Intent;
    const-string v10, "android.intent.action.SIM_CHANGED"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-static {p1, v11, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 63
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, p1, v3, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 68
    const v10, 0x1825f

    invoke-virtual {v5, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 69
    return-void
.end method

.method static final removeSimchangedNotification(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 75
    .local v0, notificationManager:Landroid/app/NotificationManager;
    const v1, 0x1825f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, " [[[[[  SimCheckListener receive SIM_NOT_CHANGED_INFO_ACTION  ]]]]]"

    const-string v2, "SimCheckListener"

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_CHANGED_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 29
    const-string v0, "SimCheckListener"

    const-string v0, " [[[[[  SimCheckListener receive SIM_CHANGED_INFO_ACTION  ]]]]]"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-direct {p0, p1}, Lcom/bnsoft/simchecker/SimCheckListener;->registeSimchangedNotification(Landroid/content/Context;)V

    .line 43
    :cond_1a
    :goto_1a
    return-void

    .line 32
    :cond_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_NOT_CHANGED_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 34
    const-string v0, "SimCheckListener"

    const-string v0, " [[[[[  SimCheckListener receive SIM_NOT_CHANGED_INFO_ACTION  ]]]]]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 36
    :cond_2f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_IMPORTED_INFO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 38
    const-string v0, "SimCheckListener"

    const-string v0, " [[[[[  SimCheckListener receive SIM_NOT_CHANGED_INFO_ACTION  ]]]]]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {p1}, Lcom/bnsoft/simchecker/SimCheckListener;->removeSimchangedNotification(Landroid/content/Context;)V

    goto :goto_1a
.end method
