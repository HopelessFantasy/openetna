.class public Lcom/android/providers/calendar/CalendarAppWidgetService;
.super Landroid/app/Service;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarAppWidgetService$1;,
        Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    }
.end annotation


# static fields
.field static final ACTION_CLASS:Ljava/lang/String; = "com.android.calendar.LaunchActivity"

.field static final ACTION_PACKAGE:Ljava/lang/String; = "com.android.calendar"

.field static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field static final EVENT_SORT_ORDER:Ljava/lang/String; = "startDay ASC, allDay DESC, begin ASC"

.field static final INDEX_ALL_DAY:I = 0x0

.field static final INDEX_BEGIN:I = 0x1

.field static final INDEX_CALENDAR_ID:I = 0x8

.field static final INDEX_COLOR:I = 0x3

.field static final INDEX_END:I = 0x2

.field static final INDEX_EVENT_ID:I = 0x9

.field static final INDEX_EVENT_LOCATION:I = 0x7

.field static final INDEX_HAS_ALARM:I = 0x6

.field static final INDEX_RRULE:I = 0x5

.field static final INDEX_TITLE:I = 0x4

.field static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field static final LOGD:Z = false

.field static final SEARCH_DURATION:J = 0x240c8400L

.field static final TAG:Ljava/lang/String; = "CalendarAppWidgetService"

.field static final UPDATE_NO_EVENTS:J = 0x1499700L


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 454
    return-void
.end method

.method private buildMarkedEvents(Landroid/database/Cursor;Ljava/util/Set;J)Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .registers 23
    .parameter "cursor"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;"
        }
    .end annotation

    .prologue
    .line 477
    .local p2, watchEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;-><init>(Lcom/android/providers/calendar/CalendarAppWidgetService;Lcom/android/providers/calendar/CalendarAppWidgetService$1;)V

    .line 478
    .local v15, events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 480
    .local v16, recycle:Landroid/text/format/Time;
    const/4 v4, -0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 481
    :cond_16
    :goto_16
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 482
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v17

    .line 483
    .local v17, row:I
    const/16 v4, 0x9

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 484
    .local v13, eventId:J
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 485
    .local v6, start:J
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 486
    .local v8, end:J
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_85

    const/4 v4, 0x1

    move v10, v4

    .line 489
    .local v10, allDay:Z
    :goto_45
    if-eqz v10, :cond_59

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v6

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide v2, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v8

    :cond_59
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 495
    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v11

    .line 497
    .local v11, eventFlip:J
    cmp-long v4, v11, p3

    if-ltz v4, :cond_16

    .line 502
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 503
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    .line 506
    :cond_75
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_88

    .line 508
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    .line 509
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    .line 510
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    goto :goto_16

    .line 486
    .end local v10           #allDay:Z
    .end local v11           #eventFlip:J
    :cond_85
    const/4 v4, 0x0

    move v10, v4

    goto :goto_45

    .line 511
    .restart local v10       #allDay:Z
    .restart local v11       #eventFlip:J
    :cond_88
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_a0

    .line 513
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_98

    .line 514
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryConflictRow:I

    .line 516
    :cond_98
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    goto/16 :goto_16

    .line 517
    :cond_a0
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b1

    .line 519
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryRow:I

    .line 520
    iput-wide v6, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    .line 521
    const/4 v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    goto/16 :goto_16

    .line 522
    :cond_b1
    iget-wide v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_bf

    .line 524
    iget v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v15, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->secondaryCount:I

    goto/16 :goto_16

    .line 530
    .end local v6           #start:J
    .end local v8           #end:J
    .end local v10           #allDay:Z
    .end local v11           #eventFlip:J
    .end local v13           #eventId:J
    .end local v17           #row:I
    :cond_bf
    return-object v15
.end method

.method private calculateUpdateTime(Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)J
    .registers 15
    .parameter "cursor"
    .parameter "events"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 257
    const-wide/16 v8, -0x1

    .line 258
    .local v8, result:J
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_33

    .line 259
    iget v0, p2, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 260
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 261
    .local v2, start:J
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 262
    .local v4, end:J
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_34

    move v6, v11

    .line 265
    .local v6, allDay:Z
    :goto_1e
    if-eqz v6, :cond_2d

    .line 266
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 267
    .local v7, recycle:Landroid/text/format/Time;
    invoke-direct {p0, v7, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v2

    .line 268
    invoke-direct {p0, v7, v4, v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->convertUtcToLocal(Landroid/text/format/Time;J)J

    move-result-wide v4

    .end local v7           #recycle:Landroid/text/format/Time;
    :cond_2d
    move-object v0, p0

    move-object v1, p1

    .line 271
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getEventFlip(Landroid/database/Cursor;JJZ)J

    move-result-wide v8

    .line 273
    .end local v2           #start:J
    .end local v4           #end:J
    .end local v6           #allDay:Z
    :cond_33
    return-wide v8

    .restart local v2       #start:J
    .restart local v4       #end:J
    :cond_34
    move v6, v10

    .line 262
    goto :goto_1e
.end method

.method private convertUtcToLocal(Landroid/text/format/Time;J)J
    .registers 6
    .parameter "recycle"
    .parameter "utcTime"

    .prologue
    .line 240
    if-nez p1, :cond_7

    .line 241
    new-instance p1, Landroid/text/format/Time;

    .end local p1
    invoke-direct {p1}, Landroid/text/format/Time;-><init>()V

    .line 243
    .restart local p1
    :cond_7
    const-string v0, "UTC"

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 244
    invoke-virtual {p1, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 245
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private formatDebugTime(JJ)Ljava/lang/String;
    .registers 16
    .parameter "unixTime"
    .parameter "now"

    .prologue
    const-wide/32 v9, 0xea60

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 221
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 223
    sub-long v0, p1, p3

    .line 224
    .local v0, delta:J
    cmp-long v3, v0, v9

    if-lez v3, :cond_33

    .line 225
    div-long/2addr v0, v9

    .line 226
    const-string v3, "[%d] %s (%+d mins)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 229
    :goto_32
    return-object v3

    .line 228
    :cond_33
    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    .line 229
    const-string v3, "[%d] %s (%+d secs)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const-string v5, "%H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32
.end method

.method private getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .registers 6
    .parameter "context"

    .prologue
    .line 423
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x7f03

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 424
    .local v1, views:Landroid/widget/RemoteViews;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisible(Landroid/widget/RemoteViews;Z)V

    .line 427
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v0

    .line 428
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 430
    return-object v1
.end method

.method private getAppWidgetUpdate(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)Landroid/widget/RemoteViews;
    .registers 30
    .parameter "context"
    .parameter "cursor"
    .parameter "events"

    .prologue
    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 328
    .local v17, res:Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 330
    .local v18, resolver:Landroid/content/ContentResolver;
    new-instance v22, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x7f03

    move-object/from16 v0, v22

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 331
    .local v22, views:Landroid/widget/RemoteViews;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->setNoEventsVisible(Landroid/widget/RemoteViews;Z)V

    .line 333
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 334
    .local v19, time:Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 335
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    .line 336
    .local v25, yearDay:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v14, v0

    .line 339
    .local v14, dateNumber:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 342
    .local v15, dayOfWeek:Ljava/lang/String;
    const v4, 0x7f090003

    move-object/from16 v0, v22

    move v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 343
    const v4, 0x7f090002

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 346
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryRow:I

    move v4, v0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 350
    .local v11, colorFilter:I
    const v4, 0x7f090005

    move-object/from16 v0, v22

    move v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 351
    const v4, 0x7f090008

    move-object/from16 v0, v22

    move v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 352
    const v4, 0x7f090006

    move-object/from16 v0, v22

    move v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 355
    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 356
    .local v5, start:J
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_175

    const/4 v4, 0x1

    move v10, v4

    .line 360
    .local v10, allDay:Z
    :goto_a6
    if-eqz v10, :cond_179

    .line 361
    const v9, 0x82010

    .line 372
    .local v9, flags:I
    :cond_ab
    :goto_ab
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 373
    or-int/lit16 v9, v9, 0x80

    :cond_b3
    move-object/from16 v4, p1

    move-wide v7, v5

    .line 375
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v23

    .line 376
    .local v23, whenString:Ljava/lang/String;
    const v4, 0x7f090005

    move-object/from16 v0, v22

    move v1, v4

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v16

    .line 380
    .local v16, pendingIntent:Landroid/app/PendingIntent;
    const/high16 v4, 0x7f09

    move-object/from16 v0, v22

    move v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 383
    const/4 v4, 0x4

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 384
    .local v21, titleString:Ljava/lang/String;
    if-eqz v21, :cond_e8

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f2

    .line 385
    :cond_e8
    const v4, 0x7f070002

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 387
    :cond_f2
    const v4, 0x7f090008

    move-object/from16 v0, v22

    move v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 390
    const/16 v20, 0x4

    .line 391
    .local v20, titleLines:I
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    move v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_190

    .line 392
    .end local v5           #start:J
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    move v4, v0

    const/4 v5, 0x1

    sub-int v13, v4, v5

    .line 393
    .local v13, count:I
    const/high16 v4, 0x7f08

    move-object/from16 v0, v17

    move v1, v4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, conflictString:Ljava/lang/String;
    const v4, 0x7f090007

    move-object/from16 v0, v22

    move v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 396
    const v4, 0x7f090007

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 397
    add-int/lit8 v20, v20, -0x1

    .line 403
    .end local v12           #conflictString:Ljava/lang/String;
    .end local v13           #count:I
    :goto_13e
    const/4 v4, 0x7

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 404
    .local v24, whereString:Ljava/lang/String;
    if-eqz v24, :cond_19d

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19d

    .line 405
    const v4, 0x7f090006

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 406
    const v4, 0x7f090006

    move-object/from16 v0, v22

    move v1, v4

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 407
    add-int/lit8 v20, v20, -0x1

    .line 414
    :goto_166
    const v4, 0x7f090008

    const-string v5, "setMaxLines"

    move-object/from16 v0, v22

    move v1, v4

    move-object v2, v5

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 416
    return-object v22

    .line 356
    .end local v9           #flags:I
    .end local v10           #allDay:Z
    .end local v16           #pendingIntent:Landroid/app/PendingIntent;
    .end local v20           #titleLines:I
    .end local v21           #titleString:Ljava/lang/String;
    .end local v23           #whenString:Ljava/lang/String;
    .end local v24           #whereString:Ljava/lang/String;
    .restart local v5       #start:J
    :cond_175
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_a6

    .line 364
    .restart local v10       #allDay:Z
    :cond_179
    const v9, 0x80001

    .line 367
    .restart local v9       #flags:I
    move-object/from16 v0, v19

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 368
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move v4, v0

    move/from16 v0, v25

    move v1, v4

    if-eq v0, v1, :cond_ab

    .line 369
    or-int/lit8 v9, v9, 0x10

    goto/16 :goto_ab

    .line 399
    .end local v5           #start:J
    .restart local v16       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v20       #titleLines:I
    .restart local v21       #titleString:Ljava/lang/String;
    .restart local v23       #whenString:Ljava/lang/String;
    :cond_190
    const v4, 0x7f090007

    const/16 v5, 0x8

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_13e

    .line 409
    .restart local v24       #whereString:Ljava/lang/String;
    :cond_19d
    const v4, 0x7f090006

    const/16 v5, 0x8

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_166
.end method

.method private getEventFlip(Landroid/database/Cursor;JJZ)J
    .registers 13
    .parameter "cursor"
    .parameter "start"
    .parameter "end"
    .parameter "allDay"

    .prologue
    .line 287
    sub-long v0, p4, p2

    .line 288
    .local v0, duration:J
    if-nez p6, :cond_b

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    :cond_b
    move-wide v2, p2

    .line 291
    :goto_c
    return-wide v2

    :cond_d
    add-long v2, p2, p4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    goto :goto_c
.end method

.method private getLaunchPendingIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .registers 8
    .parameter "context"
    .parameter "goToTime"

    .prologue
    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 441
    .local v0, launchIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.calendar.LaunchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 442
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_31

    .line 447
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 448
    const-string v1, "DETAIL_VIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    :cond_31
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;
    .registers 14
    .parameter "resolver"
    .parameter "searchDuration"
    .parameter "now"

    .prologue
    .line 547
    add-long v6, p4, p2

    .line 549
    .local v6, end:J
    sget-object v0, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "%d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 552
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "%s=1 AND %s!=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "selected"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "selfAttendeeStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 556
    .local v3, selection:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/calendar/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "startDay ASC, allDay DESC, begin ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V
    .registers 27
    .parameter "context"
    .parameter "appWidgetIds"
    .parameter
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 149
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 150
    .local v12, cursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 151
    .local v20, views:Landroid/widget/RemoteViews;
    const-wide/16 v18, -0x1

    .line 154
    .local v18, triggerTime:J
    const-wide/32 v7, 0x240c8400

    move-object/from16 v5, p0

    move-wide/from16 v9, p4

    :try_start_10
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getUpcomingInstancesCursor(Landroid/content/ContentResolver;JJ)Landroid/database/Cursor;

    move-result-object v12

    .line 155
    if-eqz v12, :cond_53

    .line 156
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarAppWidgetService;->buildMarkedEvents(Landroid/database/Cursor;Ljava/util/Set;J)Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;

    move-result-object v13

    .line 158
    .local v13, events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    const/16 v16, 0x1

    .line 159
    .local v16, shouldUpdate:Z
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_2e

    .line 160
    move-object v0, v13

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->watchFound:Z

    move/from16 v16, v0

    .line 163
    :cond_2e
    iget v5, v13, Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;->primaryCount:I

    if-nez v5, :cond_3e

    .line 164
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_58

    move-result-object v20

    .line 173
    .end local v13           #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .end local v16           #shouldUpdate:Z
    :cond_36
    :goto_36
    if-eqz v12, :cond_3b

    .line 174
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_3b
    if-nez v20, :cond_5f

    .line 210
    :goto_3d
    return-void

    .line 165
    .restart local v13       #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .restart local v16       #shouldUpdate:Z
    :cond_3e
    if-eqz v16, :cond_36

    .line 166
    :try_start_40
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetUpdate(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)Landroid/widget/RemoteViews;

    move-result-object v20

    .line 167
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarAppWidgetService;->calculateUpdateTime(Landroid/database/Cursor;Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;)J

    move-result-wide v18

    goto :goto_36

    .line 170
    .end local v13           #events:Lcom/android/providers/calendar/CalendarAppWidgetService$MarkedEvents;
    .end local v16           #shouldUpdate:Z
    :cond_53
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetService;->getAppWidgetNoEvents(Landroid/content/Context;)Landroid/widget/RemoteViews;
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_58

    move-result-object v20

    goto :goto_36

    .line 173
    :catchall_58
    move-exception v5

    if-eqz v12, :cond_5e

    .line 174
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5e
    throw v5

    .line 185
    :cond_5f
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    .line 186
    .local v14, gm:Landroid/appwidget/AppWidgetManager;
    if-eqz p2, :cond_9e

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_9e

    .line 187
    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 198
    :goto_73
    const-wide/16 v7, -0x1

    cmp-long v5, v18, v7

    if-eqz v5, :cond_7d

    cmp-long v5, v18, p4

    if-gez v5, :cond_82

    .line 200
    :cond_7d
    const-wide/32 v7, 0x1499700

    add-long v18, p4, v7

    .line 203
    :cond_82
    const-string v5, "alarm"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    .line 204
    .local v11, am:Landroid/app/AlarmManager;
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v15

    .line 206
    .local v15, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v11, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 207
    const/4 v5, 0x1

    move-object v0, v11

    move v1, v5

    move-wide/from16 v2, v18

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3d

    .line 189
    .end local v11           #am:Landroid/app/AlarmManager;
    .end local v15           #pendingUpdate:Landroid/app/PendingIntent;
    :cond_9e
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v17

    .line 190
    .local v17, thisWidget:Landroid/content/ComponentName;
    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_73
.end method

.method private setNoEventsVisible(Landroid/widget/RemoteViews;Z)V
    .registers 8
    .parameter "views"
    .parameter "noEvents"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 303
    const v1, 0x7f090001

    if-eqz p2, :cond_3c

    move v2, v3

    :goto_9
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 305
    if-eqz p2, :cond_3e

    move v0, v4

    .line 306
    .local v0, otherViews:I
    :goto_f
    const v1, 0x7f090002

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 307
    const v1, 0x7f090003

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 308
    const v1, 0x7f090004

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 309
    const v1, 0x7f090005

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 310
    const v1, 0x7f090008

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 313
    if-eqz p2, :cond_3b

    .line 314
    const v1, 0x7f090007

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 315
    const v1, 0x7f090006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 317
    :cond_3b
    return-void

    .end local v0           #otherViews:I
    :cond_3c
    move v2, v4

    .line 303
    goto :goto_9

    :cond_3e
    move v0, v3

    .line 305
    goto :goto_f
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 89
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_6
    sget-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    if-nez v1, :cond_15

    .line 92
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 93
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 95
    :cond_15
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public run()V
    .registers 7

    .prologue
    .line 108
    :goto_0
    const-wide/16 v4, -0x1

    .line 112
    .local v4, now:J
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_5
    sget-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    if-nez v1, :cond_11

    .line 117
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->clearLocked()V

    .line 118
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarAppWidgetService;->stopSelf()V

    .line 119
    monitor-exit v0

    return-void

    .line 123
    :cond_11
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 125
    sget-wide v4, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 126
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->collectAppWidgetIdsLocked()[I

    move-result-object v2

    .line 127
    .local v2, appWidgetIds:[I
    invoke-static {}, Lcom/android/providers/calendar/AppWidgetShared;->collectChangedEventIdsLocked()Ljava/util/Set;

    move-result-object v3

    .line 128
    .local v3, changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_25

    move-object v0, p0

    move-object v1, p0

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarAppWidgetService;->performUpdate(Landroid/content/Context;[ILjava/util/Set;J)V

    goto :goto_0

    .line 128
    .end local v2           #appWidgetIds:[I
    .end local v3           #changedEventIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method
