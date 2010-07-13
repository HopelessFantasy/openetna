.class public Lcom/android/providers/calendar/CalendarAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CalendarAppWidgetProvider.java"


# static fields
.field static final ACTION_CALENDAR_APPWIDGET_UPDATE:Ljava/lang/String; = "com.android.providers.calendar.APPWIDGET_UPDATE"

.field static final CLASS_THIS_APPWIDGET:Ljava/lang/String; = "com.android.providers.calendar.CalendarAppWidgetProvider"

.field static final LOGD:Z = false

.field static final PACKAGE_THIS_APPWIDGET:Ljava/lang/String; = "com.android.providers.calendar"

.field static final TAG:Ljava/lang/String; = "CalendarAppWidgetProvider"

.field static final UPDATE_THRESHOLD:J = 0xea60L

.field static final WAKE_LOCK_TIMEOUT:J = 0xea60L

.field private static sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 4
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.providers.calendar"

    const-string v2, "com.android.providers.calendar.CalendarAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized getInstance()Lcom/android/providers/calendar/CalendarAppWidgetProvider;
    .registers 2

    .prologue
    .line 61
    const-class v0, Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    if-nez v1, :cond_e

    .line 62
    new-instance v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-direct {v1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    .line 64
    :cond_e
    sget-object v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, updateIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 126
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 127
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 128
    .local v2, thisAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 129
    .local v0, appWidgetIds:[I
    array-length v3, v0

    if-lez v3, :cond_11

    const/4 v3, 0x1

    :goto_10
    return v3

    :cond_11
    const/4 v3, 0x0

    goto :goto_10
.end method

.method private performUpdate(Landroid/content/Context;[I[JZ)V
    .registers 16
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter "changedEventIds"
    .parameter "considerIgnore"

    .prologue
    .line 197
    sget-object v6, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 200
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 201
    .local v2, now:J
    if-eqz p4, :cond_22

    sget-wide v7, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_22

    .line 202
    sget-wide v7, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    sub-long v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 203
    .local v0, delta:J
    const-wide/32 v7, 0xea60

    cmp-long v7, v0, v7

    if-gez v7, :cond_22

    .line 205
    monitor-exit v6

    .line 234
    .end local v0           #delta:J
    :goto_21
    return-void

    .line 210
    :cond_22
    sget-object v7, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v7, :cond_2e

    sget-object v7, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-nez v7, :cond_4d

    .line 213
    :cond_2e
    const-string v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 215
    .local v4, powerManager:Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "CalendarAppWidgetProvider"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    sput-object v7, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    sget-object v7, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 218
    sget-object v7, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0xea60

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 222
    .end local v4           #powerManager:Landroid/os/PowerManager;
    :cond_4d
    sput-wide v2, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 223
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 227
    invoke-static {p2}, Lcom/android/providers/calendar/AppWidgetShared;->mergeAppWidgetIdsLocked([I)V

    .line 228
    invoke-static {p3}, Lcom/android/providers/calendar/AppWidgetShared;->mergeChangedEventIdsLocked([J)V

    .line 231
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/android/providers/calendar/CalendarAppWidgetService;

    invoke-direct {v5, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v5, updateIntent:Landroid/content/Intent;
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    monitor-exit v6

    goto :goto_21

    .end local v2           #now:J
    .end local v5           #updateIntent:Landroid/content/Intent;
    :catchall_64
    move-exception v7

    monitor-exit v6
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v7
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 102
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 103
    .local v0, am:Landroid/app/AlarmManager;
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    .local v1, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 108
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/providers/calendar/TimeChangeReceiver;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 112
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/TimeChangeReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 94
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 76
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 81
    :goto_11
    return-void

    .line 79
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 6
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 120
    return-void
.end method

.method providerUpdated(Landroid/content/Context;J)V
    .registers 8
    .parameter "context"
    .parameter "changedEventId"

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, changedEventIds:[J
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_13

    .line 153
    const/4 v1, 0x1

    new-array v0, v1, [J

    .end local v0           #changedEventIds:[J
    aput-wide p2, v0, v3

    .line 156
    .restart local v0       #changedEventIds:[J
    :cond_13
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 158
    .end local v0           #changedEventIds:[J
    :cond_17
    return-void
.end method

.method timeUpdated(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "considerIgnore"

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 171
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 173
    :cond_a
    return-void
.end method
