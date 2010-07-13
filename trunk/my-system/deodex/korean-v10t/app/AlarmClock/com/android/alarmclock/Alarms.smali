.class public Lcom/android/alarmclock/Alarms;
.super Ljava/lang/Object;
.source "Alarms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/Alarms$AlarmCalculator;,
        Lcom/android/alarmclock/Alarms$AlarmSettings;,
        Lcom/android/alarmclock/Alarms$AlarmColumns;,
        Lcom/android/alarmclock/Alarms$DaysOfWeek;
    }
.end annotation


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.android.alarmclock.ALARM_ALERT"

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E k:mm"

.field public static final ID:Ljava/lang/String; = "alarm_id"

.field public static final LABEL:Ljava/lang/String; = "alarm_label"

.field private static final M12:Ljava/lang/String; = "h:mm aa"

.field private static final M24:Ljava/lang/String; = "k:mm"

.field static final PREF_SNOOZE_ID:Ljava/lang/String; = "snooze_id"

.field static final PREF_SNOOZE_LABEL:Ljava/lang/String; = "snooze_label"

.field static final PREF_SNOOZE_TIME:Ljava/lang/String; = "snooze_time"

.field public static final TIME:Ljava/lang/String; = "alarm_time"

.field private static mSnoozeID:I

.field private static mSnooze_Label:Ljava/lang/String;

.field private static mSnooze_Time:J

.field private static nSnoozeCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    .line 69
    const/4 v0, -0x1

    sput v0, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    .line 70
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/android/alarmclock/Alarms;->mSnooze_Time:J

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/alarmclock/Alarms;->mSnooze_Label:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 647
    return-void
.end method

.method public static declared-synchronized addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .registers 8
    .parameter "contentResolver"

    .prologue
    .line 423
    const-class v4, Lcom/android/alarmclock/Alarms;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 424
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 425
    .local v1, hour:I
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v2

    .line 426
    .local v2, min:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 427
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "hour"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const-string v5, "minutes"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 429
    sget-object v5, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_36

    move-result-object v5

    monitor-exit v4

    return-object v5

    .line 423
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #hour:I
    .end local v2           #min:I
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_36
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method static calculateAlarm(IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;
    .registers 12
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 920
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 921
    .local v1, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 923
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 924
    .local v2, nowHour:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 927
    .local v3, nowMinute:I
    if-lt p0, v2, :cond_1e

    if-ne p0, v2, :cond_23

    if-gt p1, v3, :cond_23

    .line 929
    :cond_1e
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 931
    :cond_23
    invoke-virtual {v1, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 932
    invoke-virtual {v1, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 933
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 934
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 936
    invoke-virtual {p2, v1}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->getNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 940
    .local v0, addDays:I
    if-lez v0, :cond_3d

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 941
    :cond_3d
    return-object v1
.end method

.method static calculateNextAlert(Landroid/content/Context;)Lcom/android/alarmclock/Alarms$AlarmCalculator;
    .registers 3
    .parameter "context"

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 685
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/alarmclock/Alarms$AlarmCalculator;

    invoke-direct {v0}, Lcom/android/alarmclock/Alarms$AlarmCalculator;-><init>()V

    .line 686
    .local v0, alarmCalc:Lcom/android/alarmclock/Alarms$AlarmCalculator;
    invoke-static {v1, v0}, Lcom/android/alarmclock/Alarms;->getAlarms(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;)V

    .line 687
    return-object v0
.end method

.method private static declared-synchronized deleteAlarm(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 5
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 469
    const-class v0, Lcom/android/alarmclock/Alarms;

    monitor-enter v0

    :try_start_3
    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 470
    monitor-exit v0

    return-void

    .line 469
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized deleteAlarm(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 439
    const-class v3, Lcom/android/alarmclock/Alarms;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 441
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v1

    .line 442
    .local v1, snoozeId:I
    if-ne v1, p1, :cond_10

    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 444
    :cond_10
    sget-object v4, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 446
    .local v2, uri:Landroid/net/Uri;
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 448
    monitor-exit v3

    return-void

    .line 439
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #snoozeId:I
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_22
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static declared-synchronized deleteSelectedAlarms(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "alarmId"

    .prologue
    .line 454
    const-class v3, Lcom/android/alarmclock/Alarms;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v4, "content://com.android.alarmclock/alarm/2"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 457
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v1

    .line 458
    .local v1, snoozeId:I
    if-ne v1, p1, :cond_15

    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 460
    :cond_15
    sget-object v4, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 461
    .local v2, uri:Landroid/net/Uri;
    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 464
    monitor-exit v3

    return-void

    .line 454
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #snoozeId:I
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_24
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method static disableAlert(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 815
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 817
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.alarmclock.ALARM_ALERT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "alarm_id"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    const/high16 v3, 0x1000

    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 821
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 822
    invoke-static {p0, v4}, Lcom/android/alarmclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 823
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/android/alarmclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public static disableExpiredAlarms(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 695
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/alarmclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 696
    .local v0, cur:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 698
    .local v4, now:J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 701
    :cond_14
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 702
    .local v3, id:I
    const/4 v8, 0x5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v10, :cond_48

    move v2, v10

    .line 704
    .local v2, enabled:Z
    :goto_20
    new-instance v1, Lcom/android/alarmclock/Alarms$DaysOfWeek;

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-direct {v1, v8}, Lcom/android/alarmclock/Alarms$DaysOfWeek;-><init>(I)V

    .line 706
    .local v1, daysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;
    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 708
    .local v6, time:J
    if-eqz v2, :cond_3e

    invoke-virtual {v1}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->isRepeatSet()Z

    move-result v8

    if-nez v8, :cond_3e

    cmp-long v8, v6, v4

    if-gez v8, :cond_3e

    .line 711
    invoke-static {p0, v3, v9}, Lcom/android/alarmclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 713
    :cond_3e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_14

    .line 715
    .end local v1           #daysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;
    .end local v2           #enabled:Z
    .end local v3           #id:I
    .end local v6           #time:J
    :cond_44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 716
    return-void

    .restart local v3       #id:I
    :cond_48
    move v2, v9

    .line 702
    goto :goto_20
.end method

.method static disableSnoozeAlert(Landroid/content/Context;)I
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    .line 857
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v0

    .line 858
    .local v0, id:I
    if-ne v0, v4, :cond_9

    move v1, v4

    .line 860
    :goto_8
    return v1

    .line 859
    :cond_9
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v4, v1, v2, v3}, Lcom/android/alarmclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJLjava/lang/String;)V

    move v1, v0

    .line 860
    goto :goto_8
.end method

.method public static declared-synchronized enableAlarm(Landroid/content/Context;IZ)V
    .registers 6
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 588
    const-class v1, Lcom/android/alarmclock/Alarms;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    move-result v0

    .line 589
    .local v0, aid:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    if-eq v0, p1, :cond_10

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/android/alarmclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 590
    :cond_10
    invoke-static {p0, p1, p2}, Lcom/android/alarmclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 591
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    .line 592
    monitor-exit v1

    return-void

    .line 588
    .end local v0           #aid:I
    :catchall_18
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static declared-synchronized enableAlarmInternal(Landroid/content/Context;IZ)V
    .registers 15
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 596
    const-class v11, Lcom/android/alarmclock/Alarms;

    monitor-enter v11

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 612
    .local v7, resolver:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Alarms] enableAlarmInternal -> mSnoozeID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 613
    sget v0, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    if-ne v0, p1, :cond_30

    .line 614
    sget-wide v2, Lcom/android/alarmclock/Alarms;->mSnooze_Time:J

    sget-object v4, Lcom/android/alarmclock/Alarms;->mSnooze_Label:Ljava/lang/String;

    sget v5, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/alarmclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJLjava/lang/String;I)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_7f

    .line 641
    :goto_2e
    monitor-exit v11

    return-void

    .line 618
    :cond_30
    :try_start_30
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 619
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "enabled"

    if-eqz p2, :cond_82

    const/4 v1, 0x1

    :goto_3b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    if-eqz p2, :cond_9b

    .line 624
    new-instance v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;

    invoke-direct {v6}, Lcom/android/alarmclock/Alarms$1EnableAlarm;-><init>()V

    .line 625
    .local v6, enableAlarm:Lcom/android/alarmclock/Alarms$1EnableAlarm;
    invoke-static {v7, v6, p1}, Lcom/android/alarmclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;I)V

    .line 626
    iget-object v0, v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    if-nez v0, :cond_84

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** enableAlarmInternal failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_30 .. :try_end_7e} :catchall_7f

    goto :goto_2e

    .line 596
    .end local v6           #enableAlarm:Lcom/android/alarmclock/Alarms$1EnableAlarm;
    .end local v7           #resolver:Landroid/content/ContentResolver;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_7f
    move-exception v0

    monitor-exit v11

    throw v0

    .line 619
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_82
    const/4 v1, 0x0

    goto :goto_3b

    .line 634
    .restart local v6       #enableAlarm:Lcom/android/alarmclock/Alarms$1EnableAlarm;
    :cond_84
    :try_start_84
    iget v0, v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mHour:I

    iget v1, v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mMinutes:I

    iget-object v2, v6, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/Alarms;->calculateAlarm(IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 636
    .local v8, time:J
    const-string v0, "alarmtime"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 639
    .end local v6           #enableAlarm:Lcom/android/alarmclock/Alarms$1EnableAlarm;
    .end local v8           #time:J
    :cond_9b
    sget-object v0, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v10, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_84 .. :try_end_a7} :catchall_7f

    goto :goto_2e
.end method

.method static enableAlert(Landroid/content/Context;ILjava/lang/String;J)V
    .registers 12
    .parameter "context"
    .parameter "id"
    .parameter "label"
    .parameter "atTimeInMillis"

    .prologue
    const/4 v6, 0x0

    .line 782
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 785
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.alarmclock.ALARM_ALERT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "alarm_id"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    const-string v5, "alarm_label"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const-string v5, "alarm_time"

    invoke-virtual {v2, v5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 790
    const/high16 v5, 0x1000

    invoke-static {p0, v6, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 794
    .local v3, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v6, p3, p4, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 801
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/android/alarmclock/Alarms;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 803
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 804
    .local v1, c:Ljava/util/Calendar;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 805
    invoke-static {p0, v1}, Lcom/android/alarmclock/Alarms;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, timeString:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/alarmclock/Alarms;->saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method private static enableSnoozeAlert(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 883
    const-string v5, "AlarmClock"

    invoke-virtual {p0, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 886
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "snooze_id"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 887
    .local v2, id:I
    if-ne v2, v8, :cond_12

    move v5, v9

    .line 897
    :goto_11
    return v5

    .line 888
    :cond_12
    const-string v5, "snooze_time"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 889
    .local v0, atTimeInMillis:J
    if-ne v2, v8, :cond_1e

    move v5, v9

    goto :goto_11

    .line 892
    :cond_1e
    const-string v5, "snooze_label"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 893
    .local v3, label:Ljava/lang/String;
    if-nez v3, :cond_2e

    .line 894
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 896
    :cond_2e
    invoke-static {p0, v2, v3, v0, v1}, Lcom/android/alarmclock/Alarms;->enableAlert(Landroid/content/Context;ILjava/lang/String;J)V

    .line 897
    const/4 v5, 0x1

    goto :goto_11
.end method

.method private static formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 960
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "E k:mm"

    move-object v0, v1

    .line 961
    .local v0, format:Ljava/lang/String;
    :goto_9
    if-nez p1, :cond_12

    const-string v1, ""

    .end local p0
    :goto_d
    return-object v1

    .line 960
    .end local v0           #format:Ljava/lang/String;
    .restart local p0
    :cond_e
    const-string v1, "E h:mm aa"

    move-object v0, v1

    goto :goto_9

    .line 961
    .restart local v0       #format:Ljava/lang/String;
    :cond_12
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_d
.end method

.method static formatTime(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 946
    invoke-static {p1, p2, p3}, Lcom/android/alarmclock/Alarms;->calculateAlarm(IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v0

    .line 947
    .local v0, c:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/android/alarmclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 952
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "k:mm"

    move-object v0, v1

    .line 953
    .local v0, format:Ljava/lang/String;
    :goto_9
    if-nez p1, :cond_12

    const-string v1, ""

    .end local p0
    :goto_d
    return-object v1

    .line 952
    .end local v0           #format:Ljava/lang/String;
    .restart local p0
    :cond_e
    const-string v1, "h:mm aa"

    move-object v0, v1

    goto :goto_9

    .line 953
    .restart local v0       #format:Ljava/lang/String;
    :cond_12
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_d
.end method

.method static get24HourMode(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 978
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getAlarm(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;I)V
    .registers 11
    .parameter "contentResolver"
    .parameter "alarmSetting"
    .parameter "alarmId"

    .prologue
    .line 520
    const-class v7, Lcom/android/alarmclock/Alarms;

    monitor-enter v7

    :try_start_3
    sget-object v0, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/alarmclock/Alarms$AlarmColumns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 525
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Alarm] getAlarm() -> nSnoozeCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 526
    invoke-static {p1, v6}, Lcom/android/alarmclock/Alarms;->getAlarms(Lcom/android/alarmclock/Alarms$AlarmSettings;Landroid/database/Cursor;)V

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    .line 528
    monitor-exit v7

    return-void

    .line 520
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_35
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized getAlarms(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;)V
    .registers 5
    .parameter "contentResolver"
    .parameter "alarmSettings"

    .prologue
    .line 488
    const-class v1, Lcom/android/alarmclock/Alarms;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 489
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {p1, v0}, Lcom/android/alarmclock/Alarms;->getAlarms(Lcom/android/alarmclock/Alarms$AlarmSettings;Landroid/database/Cursor;)V

    .line 490
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 491
    monitor-exit v1

    return-void

    .line 488
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_f
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static declared-synchronized getAlarms(Lcom/android/alarmclock/Alarms$AlarmSettings;Landroid/database/Cursor;)V
    .registers 15
    .parameter "alarmSettings"
    .parameter "cur"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 495
    const-class v10, Lcom/android/alarmclock/Alarms;

    monitor-enter v10

    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 498
    :cond_b
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 499
    .local v1, id:I
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 500
    .local v3, hour:I
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 501
    .local v4, minutes:I
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 502
    .local v9, daysOfWeek:I
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_4b

    move v2, v11

    .line 503
    .local v2, enabled:Z
    :goto_27
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_4d

    move v6, v11

    .line 504
    .local v6, vibrate:Z
    :goto_2f
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 505
    .local v7, message:Ljava/lang/String;
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 506
    .local v8, alert:Ljava/lang/String;
    new-instance v5, Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-direct {v5, v9}, Lcom/android/alarmclock/Alarms$DaysOfWeek;-><init>(I)V

    move-object v0, p0

    invoke-interface/range {v0 .. v8}, Lcom/android/alarmclock/Alarms$AlarmSettings;->reportAlarm(IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_4f

    move-result v0

    if-nez v0, :cond_b

    .line 511
    .end local v1           #id:I
    .end local v2           #enabled:Z
    .end local v3           #hour:I
    .end local v4           #minutes:I
    .end local v6           #vibrate:Z
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #alert:Ljava/lang/String;
    .end local v9           #daysOfWeek:I
    :cond_49
    monitor-exit v10

    return-void

    .restart local v1       #id:I
    .restart local v3       #hour:I
    .restart local v4       #minutes:I
    .restart local v9       #daysOfWeek:I
    :cond_4b
    move v2, v12

    .line 502
    goto :goto_27

    .restart local v2       #enabled:Z
    :cond_4d
    move v6, v12

    .line 503
    goto :goto_2f

    .line 495
    .end local v1           #id:I
    .end local v2           #enabled:Z
    .end local v3           #hour:I
    .end local v4           #minutes:I
    .end local v9           #daysOfWeek:I
    :catchall_4f
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 8
    .parameter "contentResolver"

    .prologue
    .line 478
    const-class v6, Lcom/android/alarmclock/Alarms;

    monitor-enter v6

    :try_start_3
    sget-object v1, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/alarmclock/Alarms$AlarmColumns;->ALARM_QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized getAlarmsId(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 8
    .parameter "contentResolver"

    .prologue
    .line 988
    const-class v6, Lcom/android/alarmclock/Alarms;

    monitor-enter v6

    :try_start_3
    sget-object v1, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/alarmclock/Alarms$AlarmColumns;->ALARM_IDS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 720
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static getSnoozeAlarmId(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 867
    const-string v1, "AlarmClock"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 869
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "snooze_id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSnoozeAlarmTime(Landroid/content/Context;)J
    .registers 5
    .parameter "context"

    .prologue
    .line 873
    const-string v1, "AlarmClock"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 875
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "snooze_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getSnoozeCount()I
    .registers 2

    .prologue
    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Alarm] getSnoozeCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 997
    sget v0, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    return v0
.end method

.method public static getSnoozeID()I
    .registers 1

    .prologue
    .line 1002
    sget v0, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    return v0
.end method

.method public static getSnoozeLabel()Ljava/lang/String;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/alarmclock/Alarms;->mSnooze_Label:Ljava/lang/String;

    return-object v0
.end method

.method public static getSnoozeTime()J
    .registers 2

    .prologue
    .line 74
    sget-wide v0, Lcom/android/alarmclock/Alarms;->mSnooze_Time:J

    return-wide v0
.end method

.method public static incrementSnoozeCount()V
    .registers 2

    .prologue
    .line 1007
    sget v0, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Alarm] incrementSnoozeCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 1010
    return-void
.end method

.method public static resetSnoozeCount()V
    .registers 2

    .prologue
    .line 1014
    const/4 v0, 0x0

    sput v0, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    .line 1015
    const/4 v0, -0x1

    sput v0, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Alarm] resetSnoozeCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 1019
    return-void
.end method

.method static saveNextAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "timeString"

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 972
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJLjava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "id"
    .parameter "atTimeInMillis"
    .parameter "label"

    .prologue
    .line 844
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 846
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 848
    const-string v2, "snooze_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 849
    const-string v2, "snooze_label"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 851
    return-void
.end method

.method static saveSnoozeAlert(Landroid/content/Context;IJLjava/lang/String;I)V
    .registers 11
    .parameter "context"
    .parameter "id"
    .parameter "atTimeInMillis"
    .parameter "label"
    .parameter "cnt"

    .prologue
    const-string v4, "PREF_SNOOZE_CT"

    .line 828
    const-string v2, "AlarmClock"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 830
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 831
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "snooze_id"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 832
    const-string v2, "snooze_time"

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 833
    const-string v2, "snooze_label"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 834
    const-string v2, "PREF_SNOOZE_CT"

    invoke-interface {v0, v4, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 835
    const-string v2, "SNOOZE_ID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 836
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 838
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save PREF_SNOOZE_CT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PREF_SNOOZE_CT"

    const/4 v3, -0x1

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveSnoozeAlert CT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public static declared-synchronized setAlarm(Landroid/content/Context;IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "id"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"

    .prologue
    .line 550
    const-class v4, Lcom/android/alarmclock/Alarms;

    monitor-enter v4

    :try_start_3
    new-instance v3, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 551
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 552
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {p3, p4, p5}, Lcom/android/alarmclock/Alarms;->calculateAlarm(IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 554
    .local v1, time:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Alarm] setAlarm() -> nSnoozeCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/alarmclock/Alarms;->nSnoozeCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/android/alarmclock/Alarms;->resetSnoozeCount()V

    .line 561
    const-string v5, "enabled"

    if-eqz p2, :cond_b0

    const/4 p2, 0x1

    .end local p2
    :goto_36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string p2, "hour"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string p2, "minutes"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string p2, "alarmtime"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    const-string p2, "daysofweek"

    invoke-virtual {p5}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->getCoded()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string p2, "vibrate"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 567
    const-string p2, "message"

    invoke-virtual {v3, p2, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string p2, "alert"

    invoke-virtual {v3, p2, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    sget-object p2, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    int-to-long p3, p1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {v0, p2, v3, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 572
    .end local p4
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    move-result p2

    .line 573
    .local p2, aid:I
    sput p2, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    .line 574
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[Alarm] saveAlarm -> mSnoozeID : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget p4, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 575
    const/4 p3, -0x1

    if-eq p2, p3, :cond_ab

    if-eq p2, p1, :cond_ab

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/alarmclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V

    .line 576
    .end local p1
    :cond_ab
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_b2

    .line 577
    monitor-exit v4

    return-void

    .line 561
    .restart local p1
    .local p2, enabled:Z
    .restart local p3
    .restart local p4
    :cond_b0
    const/4 p2, 0x0

    goto :goto_36

    .line 550
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #time:J
    .end local v3           #values:Landroid/content/ContentValues;
    .end local p1
    .end local p2           #enabled:Z
    .end local p3
    .end local p4
    :catchall_b2
    move-exception p0

    .end local p0
    monitor-exit v4

    throw p0
.end method

.method public static setNextAlert(Landroid/content/Context;)V
    .registers 12
    .parameter "context"

    .prologue
    const-string v10, "[Alarm] setNextAlert() in Snooze snoozeTime : "

    const-string v9, " AlarmTime : "

    .line 730
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v4

    .line 732
    .local v4, snoozeId:I
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/alarmclock/Alarms$AlarmCalculator;

    move-result-object v0

    .line 733
    .local v0, ac:Lcom/android/alarmclock/Alarms$AlarmCalculator;
    invoke-virtual {v0}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getIndex()I

    move-result v3

    .line 734
    .local v3, id:I
    invoke-virtual {v0}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getAlert()J

    move-result-wide v1

    .line 736
    .local v1, atTime:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Alarm] setNextAlert() -> snoozeId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " alarmId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/alarmclock/Alarms$AlarmCalculator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Label : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/alarmclock/Alarms$AlarmCalculator;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 737
    const/4 v7, -0x1

    if-ne v4, v7, :cond_70

    .line 739
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, v1, v7

    if-gez v7, :cond_6c

    .line 741
    invoke-virtual {v0}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v3, v7, v1, v2}, Lcom/android/alarmclock/Alarms;->enableAlert(Landroid/content/Context;ILjava/lang/String;J)V

    .line 765
    :goto_6b
    return-void

    .line 745
    :cond_6c
    invoke-static {p0, v3}, Lcom/android/alarmclock/Alarms;->disableAlert(Landroid/content/Context;I)V

    goto :goto_6b

    .line 750
    :cond_70
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmTime(Landroid/content/Context;)J

    move-result-wide v5

    .line 752
    .local v5, snoozeTime:J
    cmp-long v7, v5, v1

    if-lez v7, :cond_a6

    .line 754
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Alarm] setNextAlert() in Snooze snoozeTime : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AlarmTime : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 755
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 756
    invoke-static {}, Lcom/android/alarmclock/Alarms;->resetSnoozeCount()V

    .line 757
    invoke-virtual {v0}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v3, v7, v1, v2}, Lcom/android/alarmclock/Alarms;->enableAlert(Landroid/content/Context;ILjava/lang/String;J)V

    goto :goto_6b

    .line 761
    :cond_a6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Alarm] setNextAlert() in Snooze snoozeTime : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AlarmTime : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 762
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->enableSnoozeAlert(Landroid/content/Context;)Z

    goto :goto_6b
.end method

.method public static setSnoozeID(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 1023
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/alarmclock/Alarms;->mSnoozeID:I

    .line 1024
    return-void
.end method

.method public static setSnoozeLabel(Ljava/lang/String;)V
    .registers 1
    .parameter "label"

    .prologue
    .line 80
    sput-object p0, Lcom/android/alarmclock/Alarms;->mSnooze_Label:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static setSnoozeTime(J)V
    .registers 2
    .parameter "time"

    .prologue
    .line 77
    sput-wide p0, Lcom/android/alarmclock/Alarms;->mSnooze_Time:J

    .line 78
    return-void
.end method

.method private static setStatusBarIcon(Landroid/content/Context;Z)V
    .registers 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 905
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, alarmChanged:Landroid/content/Intent;
    const-string v1, "alarmSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 908
    return-void
.end method
