.class public final Landroid/provider/Calendar$CalendarAlerts;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Calendar$CalendarAlertsColumns;
.implements Landroid/provider/Calendar$EventsColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarAlerts"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_BY_INSTANCE:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "CalendarAlerts"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 966
    const-string v0, "content://calendar/calendar_alerts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    .line 974
    const-string v0, "content://calendar/calendar_alerts/by_instance"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alarmExists(Landroid/content/ContentResolver;JJJ)Z
    .registers 16
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "alarmTime"

    .prologue
    const-string v8, "alarmTime"

    const-string v7, "="

    const-string v6, " AND "

    .line 1098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "begin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarmTime"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1103
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "alarmTime"

    aput-object v8, v2, v4

    .line 1104
    .local v2, projection:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1105
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 1107
    .local v1, found:Z
    if-eqz v0, :cond_5c

    :try_start_55
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_62

    move-result v4

    if-lez v4, :cond_5c

    .line 1108
    const/4 v1, 0x1

    .line 1111
    :cond_5c
    if-eqz v0, :cond_61

    .line 1112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1115
    :cond_61
    return v1

    .line 1111
    :catchall_62
    move-exception v4

    if-eqz v0, :cond_68

    .line 1112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1111
    :cond_68
    throw v4
.end method

.method public static final findNextAlarmTime(Landroid/content/ContentResolver;J)J
    .registers 11
    .parameter "cr"
    .parameter "millis"

    .prologue
    const/4 v7, 0x0

    .line 1009
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarmTime>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1012
    .local v4, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "alarmTime"

    aput-object v5, v3, v7

    .line 1013
    .local v3, projection:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1014
    .local v2, cursor:Landroid/database/Cursor;
    const-wide/16 v0, -0x1

    .line 1016
    .local v0, alarmTime:J
    if-eqz v2, :cond_2f

    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1017
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_35

    move-result-wide v0

    .line 1020
    :cond_2f
    if-eqz v2, :cond_34

    .line 1021
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_34
    return-wide v0

    .line 1020
    :catchall_35
    move-exception v5

    if-eqz v2, :cond_3b

    .line 1021
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_3b
    throw v5
.end method

.method public static final insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;
    .registers 16
    .parameter "cr"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 979
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 980
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 981
    const-string v3, "begin"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 982
    const-string v3, "end"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 983
    const-string v3, "alarmTime"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 984
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 985
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 986
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v3, "minutes"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "cr"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 995
    sget-object v1, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "alarmTime ASC,begin ASC,title ASC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V
    .registers 15
    .parameter "cr"
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1042
    .local v2, now:J
    const-wide/32 v0, 0x5265c00

    sub-long v0, v2, v0

    .line 1043
    .local v0, ancient:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state=0 AND alarmTime<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "alarmTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #ancient:J
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, selection:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    .end local v2           #now:J
    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "begin"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "end"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "alarmTime"

    aput-object v3, v0, v2

    .line 1053
    .local v0, projection:[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1054
    .local p0, cursor:Landroid/database/Cursor;
    if-nez p0, :cond_67

    .line 1082
    .end local v0           #projection:[Ljava/lang/String;
    .end local v1           #selection:Ljava/lang/String;
    :goto_66
    return-void

    .line 1057
    .restart local v0       #projection:[Ljava/lang/String;
    .restart local v1       #selection:Ljava/lang/String;
    :cond_67
    const-string v0, "Calendar"

    .end local v0           #projection:[Ljava/lang/String;
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v1           #selection:Ljava/lang/String;
    move-result v0

    if-eqz v0, :cond_8c

    .line 1058
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missed alarms found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_8c
    :goto_8c
    :try_start_8c
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1063
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1064
    .local v6, id:J
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1065
    .local v2, begin:J
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1066
    .local v4, end:J
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1067
    .local v0, alarmTime:J
    sget-object v8, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1068
    .local v9, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1070
    const-string v9, "beginTime"

    .end local v9           #uri:Landroid/net/Uri;
    invoke-virtual {v8, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1071
    const-string v9, "endTime"

    invoke-virtual {v8, v9, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1072
    const/4 v9, 0x0

    const/high16 v10, 0x1000

    invoke-static {p1, v9, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1074
    .local v8, sender:Landroid/app/PendingIntent;
    const-string v9, "Calendar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rescheduling missed alarm, id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6           #id:J
    const-string v7, " begin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #begin:J
    const-string v3, " end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " alarmTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_101
    .catchall {:try_start_8c .. :try_end_101} :catchall_102

    goto :goto_8c

    .line 1079
    .end local v0           #alarmTime:J
    .end local v4           #end:J
    .end local v8           #sender:Landroid/app/PendingIntent;
    :catchall_102
    move-exception p1

    .end local p1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .restart local p1
    :cond_107
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_66
.end method
