.class public Lcom/android/calendar/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# static fields
.field private static final ALERT_INDEX_EVENT_LOCATION:I = 0x1

.field private static final ALERT_INDEX_TITLE:I = 0x0

.field private static final ALERT_PROJECTION:[Ljava/lang/String; = null

.field private static final DELETE_ACTION:Ljava/lang/String; = "delete"

.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AlertReceiver;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    sget-object v1, Lcom/android/calendar/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_3
    sget-object v2, Lcom/android/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1e

    .line 91
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 93
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/android/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 95
    sget-object v2, Lcom/android/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 97
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1e
    sget-object v2, Lcom/android/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .registers 4
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 107
    sget-object v0, Lcom/android/calendar/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    sget-object v1, Lcom/android/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_12

    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 110
    sget-object v1, Lcom/android/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 113
    :cond_12
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 15
    .parameter "context"
    .parameter "title"
    .parameter "location"
    .parameter "numReminders"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 166
    .local v5, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, clickIntent:Landroid/content/Intent;
    const-class v6, Lcom/android/calendar/AlertActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v1, deleteIntent:Landroid/content/Intent;
    const-class v6, Lcom/android/calendar/AlertReceiver;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 173
    const-string v6, "delete"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_33

    .line 176
    :cond_2c
    const v6, 0x7f080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 180
    :cond_33
    if-le p3, v7, :cond_70

    .line 182
    const/4 v6, 0x2

    if-ne p3, v6, :cond_68

    .line 183
    const v6, 0x7f080026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, format:Ljava/lang/String;
    :goto_3f
    new-array v6, v7, [Ljava/lang/Object;

    sub-int v7, p3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .end local v2           #format:Ljava/lang/String;
    .local v3, helperString:Ljava/lang/String;
    :goto_4d
    new-instance v4, Landroid/app/Notification;

    const v6, 0x7f02001f

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 196
    .local v4, notification:Landroid/app/Notification;
    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, p0, p1, v3, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 200
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 202
    return-object v4

    .line 185
    .end local v3           #helperString:Ljava/lang/String;
    .end local v4           #notification:Landroid/app/Notification;
    :cond_68
    const v6, 0x7f080027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #format:Ljava/lang/String;
    goto :goto_3f

    .line 189
    .end local v2           #format:Ljava/lang/String;
    :cond_70
    move-object v3, p2

    .restart local v3       #helperString:Ljava/lang/String;
    goto :goto_4d
.end method

.method public static updateAlertNotification(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 122
    .local v1, cr:Landroid/content/ContentResolver;
    if-nez v1, :cond_8

    .line 159
    :cond_7
    :goto_7
    return-void

    .line 126
    :cond_8
    const-string v7, "state=1"

    .line 127
    .local v7, selection:Ljava/lang/String;
    sget-object v9, Lcom/android/calendar/AlertReceiver;->ALERT_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v9, v7, v10}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    .local v0, alertCursor:Landroid/database/Cursor;
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 132
    .local v3, nm:Landroid/app/NotificationManager;
    if-nez v0, :cond_1f

    .line 133
    invoke-virtual {v3, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_7

    .line 137
    :cond_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_2c

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {v3, v11}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_7

    .line 144
    :cond_2c
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 145
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v9, "preferences_alerts_type"

    const-string v10, "1"

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, reminderType:Ljava/lang/String;
    const-string v9, "2"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 151
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, title:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, location:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-static {p0, v8, v2, v9}, Lcom/android/calendar/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v4

    .line 156
    .local v4, notification:Landroid/app/Notification;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    invoke-virtual {v3, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_7
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    const-string v3, "delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/calendar/DismissAllAlarmsService;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :goto_16
    return-void

    .line 70
    :cond_17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v0, i:Landroid/content/Intent;
    const-class v3, Lcom/android/calendar/AlertService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 73
    const-string v3, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 77
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_3c

    .line 78
    const-string v3, "uri"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_3c
    invoke-static {p1, v0}, Lcom/android/calendar/AlertReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_16
.end method
