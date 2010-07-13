.class public Lcom/android/calendar/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ALERT_INDEX_ALARM_TIME:I = 0x7

.field private static final ALERT_INDEX_ALL_DAY:I = 0x6

.field private static final ALERT_INDEX_BEGIN:I = 0x9

.field private static final ALERT_INDEX_EVENT_ID:I = 0x1

.field private static final ALERT_INDEX_EVENT_LOCATION:I = 0x4

.field private static final ALERT_INDEX_ID:I = 0x0

.field private static final ALERT_INDEX_MINUTES:I = 0x8

.field private static final ALERT_INDEX_SELF_ATTENDEE_STATUS:I = 0x5

.field private static final ALERT_INDEX_STATE:I = 0x2

.field private static final ALERT_INDEX_TITLE:I = 0x3

.field private static final ALERT_PROJECTION:[Ljava/lang/String; = null

.field private static final ALERT_PROJECTION_SMALL:[Ljava/lang/String; = null

.field private static final INSTANCES_INDEX_BEGIN:I = 0x0

.field private static final INSTANCES_INDEX_END:I = 0x1

.field private static final REMINDER_PROJECTION_SMALL:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AlertService"


# instance fields
.field private INSTANCE_PROJECTION:[Ljava/lang/String;

.field private volatile mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "_id"

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/calendar/AlertService;->ALERT_PROJECTION_SMALL:[Ljava/lang/String;

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    sput-object v0, Lcom/android/calendar/AlertService;->REMINDER_PROJECTION_SMALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "end"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/AlertService;->INSTANCE_PROJECTION:[Ljava/lang/String;

    .line 451
    return-void
.end method

.method private doTimeChanged()V
    .registers 6

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 433
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/calendar/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 434
    .local v3, service:Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroid/app/AlarmManager;

    move-object v2, v0

    .line 435
    .local v2, manager:Landroid/app/AlarmManager;
    invoke-static {v1, p0, v2}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 436
    invoke-static {p0}, Lcom/android/calendar/AlertReceiver;->updateAlertNotification(Landroid/content/Context;)V

    .line 437
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 478
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 455
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 457
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 459
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 460
    new-instance v1, Lcom/android/calendar/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/AlertService;->mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

    .line 461
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 474
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/calendar/AlertService;->mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/calendar/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 466
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 467
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/android/calendar/AlertService;->mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 469
    return-void
.end method

.method processMessage(Landroid/os/Message;)V
    .registers 76
    .parameter "msg"

    .prologue
    .line 102
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/os/Bundle;

    .line 106
    .local v31, bundle:Landroid/os/Bundle;
    const-string v7, "action"

    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 107
    .local v23, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "android.intent.action.TIME_SET"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 109
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/AlertService;->doTimeChanged()V

    .line 429
    :cond_2a
    :goto_2a
    return-void

    .line 114
    :cond_2b
    const-string v7, "uri"

    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 115
    .local v6, alertUri:Landroid/net/Uri;
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 116
    const-string v7, "AlertService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_59
    if-eqz v6, :cond_80

    .line 123
    new-instance v73, Landroid/content/ContentValues;

    invoke-direct/range {v73 .. v73}, Landroid/content/ContentValues;-><init>()V

    .line 124
    .local v73, values:Landroid/content/ContentValues;
    const-string v7, "receivedTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v73

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v2, v73

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    .end local v73           #values:Landroid/content/ContentValues;
    :cond_80
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 129
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 137
    .local v27, alertCursor:Landroid/database/Cursor;
    const/16 v37, 0x0

    .line 139
    .local v37, declined:Z
    if-eqz v27, :cond_97

    :try_start_91
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_ae

    .line 141
    :cond_97
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 142
    const-string v7, "AlertService"

    const-string v8, "alert not found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_91 .. :try_end_a7} :catchall_12d

    .line 165
    :cond_a7
    if-eqz v27, :cond_2a

    .line 166
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2a

    .line 146
    :cond_ae
    const/4 v7, 0x0

    :try_start_af
    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 147
    .local v28, alertId:J
    const/4 v7, 0x1

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 148
    .local v39, eventId:J
    const/16 v7, 0x8

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    .line 149
    .local v51, minutes:I
    const/4 v7, 0x3

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 150
    .local v41, eventName:Ljava/lang/String;
    const/4 v7, 0x4

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 151
    .local v50, location:Ljava/lang/String;
    const/4 v7, 0x6

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_125

    const/4 v7, 0x1

    move/from16 v22, v7

    .line 152
    .local v22, allDay:Z
    :goto_e4
    const/4 v7, 0x7

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 153
    .local v24, alarmTime:J
    const/4 v7, 0x5

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_129

    const/4 v7, 0x1

    move/from16 v37, v7

    .line 158
    :goto_fa
    const/16 v54, 0x1

    .line 159
    .local v54, newState:I
    if-eqz v37, :cond_100

    .line 160
    const/16 v54, 0x2

    .line 162
    :cond_100
    const/4 v7, 0x2

    move-object/from16 v0, v27

    move v1, v7

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->updateInt(II)Z

    .line 163
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->commitUpdates()Z
    :try_end_10c
    .catchall {:try_start_af .. :try_end_10c} :catchall_12d

    .line 165
    if-eqz v27, :cond_111

    .line 166
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_111
    if-eqz v37, :cond_134

    .line 172
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 173
    const-string v7, "AlertService"

    const-string v8, "event declined, alert cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 151
    .end local v22           #allDay:Z
    .end local v24           #alarmTime:J
    .end local v54           #newState:I
    :cond_125
    const/4 v7, 0x0

    move/from16 v22, v7

    goto :goto_e4

    .line 153
    .restart local v22       #allDay:Z
    .restart local v24       #alarmTime:J
    :cond_129
    const/4 v7, 0x0

    move/from16 v37, v7

    goto :goto_fa

    .line 165
    .end local v22           #allDay:Z
    .end local v24           #alarmTime:J
    .end local v28           #alertId:J
    .end local v39           #eventId:J
    .end local v41           #eventName:Ljava/lang/String;
    .end local v50           #location:Ljava/lang/String;
    .end local v51           #minutes:I
    :catchall_12d
    move-exception v7

    if-eqz v27, :cond_133

    .line 166
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    :cond_133
    throw v7

    .line 178
    .restart local v22       #allDay:Z
    .restart local v24       #alarmTime:J
    .restart local v28       #alertId:J
    .restart local v39       #eventId:J
    .restart local v41       #eventName:Ljava/lang/String;
    .restart local v50       #location:Ljava/lang/String;
    .restart local v51       #minutes:I
    .restart local v54       #newState:I
    :cond_134
    const-string v7, "beginTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v31

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 179
    .local v9, beginTime:J
    const-string v7, "endTime"

    const-wide/16 v11, 0x0

    move-object/from16 v0, v31

    move-object v1, v7

    move-wide v2, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 187
    .local v11, endTime:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertService;->INSTANCE_PROJECTION:[Ljava/lang/String;

    move-object v8, v0

    const-string v14, "begin ASC"

    move-object v7, v5

    invoke-static/range {v7 .. v14}, Landroid/provider/Calendar$Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v47

    .line 190
    .local v47, instanceCursor:Landroid/database/Cursor;
    const-wide/16 v45, 0x0

    .local v45, instanceBegin:J
    const-wide/16 v48, 0x0

    .line 192
    .local v48, instanceEnd:J
    if-eqz v47, :cond_17a

    :try_start_174
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_196

    .line 194
    :cond_17a
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 196
    const-string v7, "AlertService"

    const-string v8, "instance not found, alert cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18f
    .catchall {:try_start_174 .. :try_end_18f} :catchall_20f

    .line 203
    :cond_18f
    if-eqz v47, :cond_2a

    .line 204
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2a

    .line 200
    :cond_196
    const/4 v7, 0x0

    :try_start_197
    move-object/from16 v0, v47

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    .line 201
    const/4 v7, 0x1

    move-object/from16 v0, v47

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1a5
    .catchall {:try_start_197 .. :try_end_1a5} :catchall_20f

    move-result-wide v48

    .line 203
    if-eqz v47, :cond_1ab

    .line 204
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1ab
    if-lez v51, :cond_21b

    .line 212
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "minutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 214
    sget-object v15, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    sget-object v16, Lcom/android/calendar/AlertService;->REMINDER_PROJECTION_SMALL:[Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v5

    move-object/from16 v17, v13

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v68

    .line 217
    .local v68, reminderCursor:Landroid/database/Cursor;
    if-eqz v68, :cond_1f3

    :try_start_1ed
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_216

    .line 219
    :cond_1f3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_208

    .line 221
    const-string v7, "AlertService"

    const-string v8, "reminder not found, alert cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catchall {:try_start_1ed .. :try_end_208} :catchall_236

    .line 226
    :cond_208
    if-eqz v68, :cond_2a

    .line 227
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2a

    .line 203
    .end local v68           #reminderCursor:Landroid/database/Cursor;
    :catchall_20f
    move-exception v7

    if-eqz v47, :cond_215

    .line 204
    invoke-interface/range {v47 .. v47}, Landroid/database/Cursor;->close()V

    :cond_215
    throw v7

    .line 226
    .restart local v68       #reminderCursor:Landroid/database/Cursor;
    :cond_216
    if-eqz v68, :cond_21b

    .line 227
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->close()V

    .line 234
    .end local v68           #reminderCursor:Landroid/database/Cursor;
    :cond_21b
    cmp-long v7, v24, v48

    if-lez v7, :cond_23d

    .line 236
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 238
    const-string v7, "AlertService"

    const-string v8, "event ended, alert cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 226
    .restart local v68       #reminderCursor:Landroid/database/Cursor;
    :catchall_236
    move-exception v7

    if-eqz v68, :cond_23c

    .line 227
    invoke-interface/range {v68 .. v68}, Landroid/database/Cursor;->close()V

    :cond_23c
    throw v7

    .line 248
    .end local v68           #reminderCursor:Landroid/database/Cursor;
    :cond_23d
    move/from16 v0, v51

    int-to-long v0, v0

    move-wide v7, v0

    const-wide/32 v14, 0xea60

    mul-long/2addr v7, v14

    sub-long v32, v45, v7

    .line 249
    .local v32, computedAlarmTime:J
    if-lez v51, :cond_31f

    cmp-long v7, v32, v24

    if-eqz v7, :cond_31f

    .line 252
    cmp-long v7, v32, v24

    if-lez v7, :cond_268

    .line 254
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 256
    const-string v7, "AlertService"

    const-string v8, "event postponed, alert cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 267
    :cond_268
    const-wide/32 v7, 0x36ee80

    sub-long v66, v24, v7

    .line 268
    .local v66, recently:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "CalendarAlerts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "minutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "alarmTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v66

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "alarmTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 274
    sget-object v7, Lcom/android/calendar/AlertService;->ALERT_PROJECTION_SMALL:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5, v7, v13, v8}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 275
    if-eqz v27, :cond_31f

    .line 277
    :try_start_2fc
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_31c

    .line 279
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_317

    .line 281
    const-string v7, "AlertService"

    const-string v8, "duplicate alarm, alert cancelled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_317
    .catchall {:try_start_2fc .. :try_end_317} :catchall_342

    .line 286
    :cond_317
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2a

    :cond_31c
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 292
    .end local v66           #recently:J
    :cond_31f
    const-string v13, "state=1"

    .line 293
    sget-object v7, Lcom/android/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v5, v7, v13, v8}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 295
    if-eqz v27, :cond_330

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_347

    .line 296
    :cond_330
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 297
    const-string v7, "AlertService"

    const-string v8, "no fired alarms found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 286
    .restart local v66       #recently:J
    :catchall_342
    move-exception v7

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v7

    .line 302
    .end local v66           #recently:J
    :cond_347
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v57

    .line 304
    .local v57, numReminders:I
    :cond_34b
    :goto_34b
    :try_start_34b
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_397

    .line 305
    const/4 v7, 0x1

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    .line 306
    .local v63, otherEventId:J
    const/4 v7, 0x0

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v59

    .line 307
    .local v59, otherAlertId:J
    const/4 v7, 0x2

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 308
    .local v58, otherAlarmState:I
    const/16 v7, 0x9

    move-object/from16 v0, v27

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    .line 309
    .local v61, otherBeginTime:J
    cmp-long v7, v63, v39

    if-nez v7, :cond_34b

    cmp-long v7, v59, v28

    if-eqz v7, :cond_34b

    const/4 v7, 0x1

    move/from16 v0, v58

    move v1, v7

    if-ne v0, v1, :cond_34b

    cmp-long v7, v61, v9

    if-nez v7, :cond_34b

    .line 317
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_394

    .line 318
    const-string v7, "AlertService"

    const-string v8, "multiple alarms for this event"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_394
    .catchall {:try_start_34b .. :try_end_394} :catchall_3f7

    .line 320
    :cond_394
    add-int/lit8 v57, v57, -0x1

    goto :goto_34b

    .line 324
    .end local v58           #otherAlarmState:I
    .end local v59           #otherAlertId:J
    .end local v61           #otherBeginTime:J
    .end local v63           #otherEventId:J
    :cond_397
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 327
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3be

    .line 328
    const-string v7, "AlertService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating new alarm notification, numReminders: "

    .end local v13           #selection:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_3be
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v50

    move/from16 v3, v57

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v56

    .line 337
    .local v56, notification:Landroid/app/Notification;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v65

    .line 338
    .local v65, prefs:Landroid/content/SharedPreferences;
    const-string v7, "preferences_alerts_type"

    const-string v8, "1"

    move-object/from16 v0, v65

    move-object v1, v7

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 341
    .local v70, reminderType:Ljava/lang/String;
    const-string v7, "2"

    move-object/from16 v0, v70

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3fc

    .line 342
    const-string v7, "AlertService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 343
    const-string v7, "AlertService"

    const-string v8, "alert preference is OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 324
    .end local v56           #notification:Landroid/app/Notification;
    .end local v65           #prefs:Landroid/content/SharedPreferences;
    .end local v70           #reminderType:Ljava/lang/String;
    .restart local v13       #selection:Ljava/lang/String;
    :catchall_3f7
    move-exception v7

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v7

    .line 348
    .end local v13           #selection:Ljava/lang/String;
    .restart local v56       #notification:Landroid/app/Notification;
    .restart local v65       #prefs:Landroid/content/SharedPreferences;
    .restart local v70       #reminderType:Ljava/lang/String;
    :cond_3fc
    const-string v7, "notification"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/app/NotificationManager;

    .line 350
    .local v55, nm:Landroid/app/NotificationManager;
    const-string v7, "preferences_alerts_vibrate"

    const/4 v8, 0x0

    move-object/from16 v0, v65

    move-object v1, v7

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v71

    .line 354
    .local v71, reminderVibrate:Z
    const-string v38, "content://settings/system/notification_sound"

    .line 356
    .local v38, defaultRingTone:Ljava/lang/String;
    const-string v7, "preferences_alerts_ringtone"

    move-object/from16 v0, v65

    move-object v1, v7

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 361
    .local v69, reminderRingtone:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v72

    .line 362
    .local v72, remindertoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/AlertService;->mcontext:Landroid/content/Context;

    .line 364
    const-string v7, "vijay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alertservice.supresswarnings() mcontext= "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertService;->mcontext:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v7, "content://media"

    move-object/from16 v0, v69

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_487

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AlertService;->mcontext:Landroid/content/Context;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v42

    .line 370
    .local v42, filepath:Ljava/lang/String;
    const-string v7, "vijay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Alertservice.supresswarnings() Media _data result = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-nez v42, :cond_487

    .line 374
    const-string v7, "vijay"

    const-string v8, "Error!! set Default Notification  /system/notification_sound"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v7, "content://settings/system/notification_sound"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v72

    .line 381
    .end local v42           #filepath:Ljava/lang/String;
    :cond_487
    if-eqz v71, :cond_495

    .line 382
    move-object/from16 v0, v56

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move v7, v0

    or-int/lit8 v7, v7, 0x2

    move v0, v7

    move-object/from16 v1, v56

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 391
    :cond_495
    invoke-static/range {v69 .. v69}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_564

    const/4 v7, 0x0

    :goto_49c
    move-object v0, v7

    move-object/from16 v1, v56

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 394
    const-string v7, "0"

    move-object/from16 v0, v70

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_568

    .line 395
    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v30, alertIntent:Landroid/content/Intent;
    const-class v7, Lcom/android/calendar/AlertActivity;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 397
    const/high16 v7, 0x1000

    move-object/from16 v0, v30

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendar/AlertService;->startActivity(Landroid/content/Intent;)V

    .line 409
    .end local v30           #alertIntent:Landroid/content/Intent;
    :goto_4ca
    new-instance v73, Landroid/content/ContentValues;

    invoke-direct/range {v73 .. v73}, Landroid/content/ContentValues;-><init>()V

    .line 410
    .restart local v73       #values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 411
    .local v34, currentTime:J
    const-string v7, "notifyTime"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v73

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v73

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    const-wide/32 v7, 0xea60

    add-long v7, v7, v24

    cmp-long v7, v34, v7

    if-lez v7, :cond_559

    .line 418
    sub-long v7, v34, v24

    const-wide/32 v9, 0xea60

    div-long v52, v7, v9

    .line 419
    .end local v9           #beginTime:J
    .local v52, minutesLate:J
    const/16 v43, 0x5

    .line 420
    .local v43, flags:I
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v26

    .line 421
    .local v26, alarmTimeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v36

    .line 422
    .local v36, currentTimeStr:Ljava/lang/String;
    const-string v7, "AlertService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calendar reminder alarm for event id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " minute(s) late;"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " expected alarm at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but got it at: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .end local v26           #alarmTimeStr:Ljava/lang/String;
    .end local v36           #currentTimeStr:Ljava/lang/String;
    .end local v43           #flags:I
    .end local v52           #minutesLate:J
    :cond_559
    const/4 v7, 0x0

    move-object/from16 v0, v55

    move v1, v7

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_2a

    .end local v34           #currentTime:J
    .end local v73           #values:Landroid/content/ContentValues;
    .restart local v9       #beginTime:J
    :cond_564
    move-object/from16 v7, v72

    .line 391
    goto/16 :goto_49c

    .line 401
    :cond_568
    const-string v7, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/view/LayoutInflater;

    .line 402
    .local v44, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030006

    const/4 v8, 0x0

    move-object/from16 v0, v44

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .local v15, view:Landroid/view/View;
    move-object/from16 v14, p0

    move-object/from16 v16, v41

    move-object/from16 v17, v50

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    .line 404
    invoke-static/range {v14 .. v22}, Lcom/android/calendar/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V

    goto/16 :goto_4ca
.end method
