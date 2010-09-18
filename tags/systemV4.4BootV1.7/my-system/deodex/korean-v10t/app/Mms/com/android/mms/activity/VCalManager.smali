.class public Lcom/android/mms/activity/VCalManager;
.super Ljava/lang/Object;
.source "VCalManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCalManager"

.field private static final TIME_FORMAT_STRING:Ljava/lang/String; = "%Y-%m-%d %H:%M:%S"


# instance fields
.field private mCalendars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mUri:Landroid/net/Uri;

.field private mVCalValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    .line 80
    iput-object p2, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 63
    if-nez p1, :cond_e

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 67
    :cond_e
    iput-object p1, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    .line 69
    invoke-direct {p0, p2}, Lcom/android/mms/activity/VCalManager;->parseVCalendar(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    .line 70
    return-void
.end method

.method private static convertLongToRFC2445DateTime(J)Ljava/lang/String;
    .registers 4
    .parameter "mills"

    .prologue
    .line 378
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 380
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 381
    const-string v1, "%Y%m%dT%H%M%SZ"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFirstIDFromCalendar()I
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 401
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_28

    .line 402
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 403
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 404
    .local v8, id:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 409
    .end local v8           #id:I
    :goto_24
    return v0

    .line 407
    :cond_25
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_28
    const/4 v0, -0x1

    goto :goto_24
.end method

.method private getReminders(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;Ljava/lang/String;)V
    .registers 12
    .parameter "evtStruct"
    .parameter "localid"

    .prologue
    const/4 v3, 0x0

    .line 385
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 387
    .local v7, c:Landroid/database/Cursor;
    const-string v8, ""

    .line 388
    .local v8, data:Ljava/lang/String;
    :goto_22
    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 389
    const-string v0, "method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 390
    invoke-virtual {p1, v8}, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->addReminderList(Ljava/lang/String;)V

    goto :goto_22

    .line 392
    :cond_38
    if-eqz v7, :cond_3d

    .line 393
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_3d
    return-void
.end method

.method private static isNull(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 371
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 372
    :cond_e
    const/4 v0, 0x1

    .line 374
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private parseVCalendar(Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 11
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    .line 308
    new-instance v4, Landroid/syncml/pim/vcalendar/VCalParser;

    invoke-direct {v4}, Landroid/syncml/pim/vcalendar/VCalParser;-><init>()V

    .line 309
    .local v4, parser:Landroid/syncml/pim/vcalendar/VCalParser;
    new-instance v0, Landroid/syncml/pim/VDataBuilder;

    invoke-direct {v0}, Landroid/syncml/pim/VDataBuilder;-><init>()V

    .line 311
    .local v0, builder:Landroid/syncml/pim/VDataBuilder;
    if-nez p1, :cond_f

    move-object v6, v8

    .line 335
    :goto_e
    return-object v6

    .line 316
    :cond_f
    :try_start_f
    invoke-virtual {v4, p1, v0}, Landroid/syncml/pim/vcalendar/VCalParser;->parse(Ljava/lang/String;Landroid/syncml/pim/VDataBuilder;)Z
    :try_end_12
    .catch Landroid/syncml/pim/vcalendar/VCalException; {:try_start_f .. :try_end_12} :catch_39

    .line 322
    const-string v1, ""

    .line 323
    .local v1, curCalendarId:Ljava/lang/String;
    iget-object v6, v0, Landroid/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/syncml/pim/VNode;

    .line 325
    .local v5, vnode:Landroid/syncml/pim/VNode;
    iget-object v6, v5, Landroid/syncml/pim/VNode;->VName:Ljava/lang/String;

    const-string v7, "VCALENDAR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 328
    invoke-direct {p0}, Lcom/android/mms/activity/VCalManager;->getFirstIDFromCalendar()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    .line 317
    .end local v1           #curCalendarId:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #vnode:Landroid/syncml/pim/VNode;
    :catch_39
    move-exception v2

    .line 318
    .local v2, e:Landroid/syncml/pim/vcalendar/VCalException;
    const-string v6, "VCalManager"

    const-string v7, "VCalException: "

    invoke-static {v6, v7, v2}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v8

    .line 319
    goto :goto_e

    .line 329
    .end local v2           #e:Landroid/syncml/pim/vcalendar/VCalException;
    .restart local v1       #curCalendarId:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #vnode:Landroid/syncml/pim/VNode;
    :cond_43
    iget-object v6, v5, Landroid/syncml/pim/VNode;->VName:Ljava/lang/String;

    const-string v7, "VEVENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_57

    iget-object v6, v5, Landroid/syncml/pim/VNode;->VName:Ljava/lang/String;

    const-string v7, "VTODO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 331
    :cond_57
    invoke-static {v5, v1}, Lcom/android/mms/activity/VCalManager;->setEventMap(Landroid/syncml/pim/VNode;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v6

    goto :goto_e

    .end local v5           #vnode:Landroid/syncml/pim/VNode;
    :cond_5c
    move-object v6, v8

    .line 335
    goto :goto_e
.end method

.method private static setEventMap(Landroid/syncml/pim/VNode;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .parameter "vnode"
    .parameter "calId"

    .prologue
    const/4 v7, 0x0

    .line 339
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 341
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "calendar_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Landroid/syncml/pim/VNode;->propList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/syncml/pim/PropertyNode;

    .line 343
    .local v1, prop:Landroid/syncml/pim/PropertyNode;
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 344
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 345
    .local v2, time:Landroid/text/format/Time;
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "DESCRIPTION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 346
    const-string v4, "description"

    iget-object v5, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 347
    :cond_38
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "DTEND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 348
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 349
    const-string v4, "dtend"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    .line 350
    :cond_55
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "DTSTART"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 351
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 352
    const-string v4, "dtstart"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    .line 353
    :cond_72
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "SUMMARY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 354
    const-string v4, "title"

    iget-object v5, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 355
    :cond_84
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "LOCATION"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 356
    const-string v4, "eventLocation"

    iget-object v5, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 357
    :cond_97
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "DUE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 358
    const-string v4, "duration"

    iget-object v5, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 359
    :cond_aa
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "RRULE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 360
    const-string v4, "rrule"

    iget-object v5, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 361
    :cond_bd
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propName:Ljava/lang/String;

    const-string v5, "COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 362
    iget-object v4, v1, Landroid/syncml/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 363
    const-string v4, "lastDate"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_11

    .line 367
    .end local v1           #prop:Landroid/syncml/pim/PropertyNode;
    .end local v2           #time:Landroid/text/format/Time;
    :cond_db
    return-object v3
.end method


# virtual methods
.method public getCalendars()[Ljava/lang/String;
    .registers 15

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    if-nez v0, :cond_55

    .line 85
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "displayName"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_22

    .line 90
    const/4 v0, 0x0

    .line 113
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_21
    return-object v0

    .line 93
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    .line 95
    :goto_29
    :try_start_29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 96
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 97
    .local v9, id:J
    const-string v0, "displayName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_29 .. :try_end_4c} :catchall_4d

    goto :goto_29

    .line 101
    .end local v9           #id:J
    .end local v12           #name:Ljava/lang/String;
    :catchall_4d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_52
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 105
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_55
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 106
    .local v11, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v13

    .line 107
    .local v13, size:I
    if-gtz v13, :cond_63

    .line 108
    const/4 v0, 0x0

    goto :goto_21

    .line 111
    :cond_63
    new-array v7, v13, [Ljava/lang/String;

    .line 112
    .local v7, calendarArray:[Ljava/lang/String;
    invoke-interface {v11, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v0, v7

    .line 113
    goto :goto_21
.end method

.method public getCompleted()Ljava/lang/String;
    .registers 5

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v3, "lastDate"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 299
    .local v0, complete:Ljava/lang/Long;
    if-nez v0, :cond_e

    .line 300
    const/4 v2, 0x0

    .line 304
    :goto_d
    return-object v2

    .line 302
    :cond_e
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 303
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 304
    const-string v2, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method public getData()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v3, 0x0

    const-string v13, "VCalManager"

    .line 121
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_10

    .line 122
    const-string v0, "VCalManager"

    const-string v0, "Bad content URI."

    invoke-static {v13, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 178
    :goto_f
    return-object v0

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 128
    .local v7, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 129
    .local v12, uid:Ljava/lang/String;
    if-nez v7, :cond_41

    .line 130
    const-string v0, "VCalManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot query the content from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 131
    goto :goto_f

    .line 134
    :cond_41
    :try_start_41
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 135
    new-instance v8, Landroid/syncml/pim/vcalendar/CalendarStruct;

    invoke-direct {v8}, Landroid/syncml/pim/vcalendar/CalendarStruct;-><init>()V

    .line 137
    .local v8, calStruct:Landroid/syncml/pim/vcalendar/CalendarStruct;
    const-string v0, "eventTimezone"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Landroid/syncml/pim/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 140
    new-instance v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v11}, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 142
    .local v11, evtStruct:Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;
    iput-object v12, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 143
    const-string v0, "description"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 145
    const-string v0, "dtend"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/activity/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 147
    const-string v0, "dtstart"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/activity/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 149
    const-string v0, "duration"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 151
    const-string v0, "eventLocation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 153
    const-string v0, "hasAlarm"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    .line 155
    const-string v0, "lastDate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/activity/VCalManager;->convertLongToRFC2445DateTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    .line 157
    const-string v0, "rrule"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 159
    const-string v0, "eventStatus"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 161
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 164
    iget-object v0, v11, Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/activity/VCalManager;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 165
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/android/mms/activity/VCalManager;->getReminders(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;Ljava/lang/String;)V

    .line 168
    :cond_f3
    invoke-virtual {v8, v11}, Landroid/syncml/pim/vcalendar/CalendarStruct;->addEventList(Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;)V
    :try_end_f6
    .catchall {:try_start_41 .. :try_end_f6} :catchall_10d

    .line 171
    :try_start_f6
    new-instance v9, Landroid/syncml/pim/vcalendar/VCalComposer;

    invoke-direct {v9}, Landroid/syncml/pim/vcalendar/VCalComposer;-><init>()V

    .line 173
    .local v9, composer:Landroid/syncml/pim/vcalendar/VCalComposer;
    const/4 v0, 0x1

    invoke-virtual {v9, v8, v0}, Landroid/syncml/pim/vcalendar/VCalComposer;->createVCal(Landroid/syncml/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_ff
    .catchall {:try_start_f6 .. :try_end_ff} :catchall_10d
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_ff} :catch_105

    move-result-object v0

    .line 178
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 174
    .end local v9           #composer:Landroid/syncml/pim/vcalendar/VCalComposer;
    :catch_105
    move-exception v0

    move-object v10, v0

    .line 178
    .local v10, e:Ljava/lang/Exception;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto/16 :goto_f

    .end local v8           #calStruct:Landroid/syncml/pim/vcalendar/CalendarStruct;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #evtStruct:Landroid/syncml/pim/vcalendar/CalendarStruct$EventStruct;
    :catchall_10d
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getDateTimeEnd()Ljava/lang/String;
    .registers 5

    .prologue
    .line 268
    iget-object v2, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v3, "dtend"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 269
    .local v0, end:Ljava/lang/Long;
    if-nez v0, :cond_e

    .line 270
    const/4 v2, 0x0

    .line 274
    :goto_d
    return-object v2

    .line 272
    :cond_e
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 273
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 274
    const-string v2, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method public getDateTimeStart()Ljava/lang/String;
    .registers 5

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v3, "dtstart"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 255
    .local v0, start:Ljava/lang/Long;
    if-nez v0, :cond_e

    .line 256
    const/4 v2, 0x0

    .line 260
    :goto_d
    return-object v2

    .line 258
    :cond_e
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 259
    .local v1, time:Landroid/text/format/Time;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 260
    const-string v2, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method public getDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEventLocation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v1, "eventLocation"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const-string v8, "VCalManager"

    .line 187
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_10

    .line 188
    const-string v0, "VCalManager"

    const-string v0, "Bad content URI."

    invoke-static {v8, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 202
    :goto_f
    return-object v0

    .line 192
    :cond_10
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 194
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_3b

    .line 195
    const-string v0, "VCalManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot query the content from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 196
    goto :goto_f

    .line 199
    :cond_3b
    :try_start_3b
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vcs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_5f

    move-result-object v0

    .line 202
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_f

    :catchall_5f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getRepeatRule()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public save(Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "calendarName"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mCalendars:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 216
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_c

    .line 217
    const/4 v1, 0x0

    .line 221
    :goto_b
    return-object v1

    .line 220
    :cond_c
    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    iget-object v1, p0, Lcom/android/mms/activity/VCalManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/activity/VCalManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/activity/VCalManager;->mVCalValues:Landroid/content/ContentValues;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_b
.end method
