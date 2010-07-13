.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x1

.field private static final ATTENDEES_INDEX_STATUS:I = 0x2

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final ATTENDEE_NO_RESPONSE:I = -0x1

.field private static final ATTENDEE_VALUES:[I = null

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final EVENT_INDEX_ACCESS_LEVEL:I = 0xb

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_COLOR:I = 0xc

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_HAS_ALARM:I = 0xa

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_SYNC_ID:I = 0x6

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_REMINDERS:I = 0x5

.field private static final MENU_ADD_REMINDER:I = 0x1

.field private static final MENU_DELETE:I = 0x3

.field private static final MENU_EDIT:I = 0x2

.field private static final MENU_GROUP_DELETE:I = 0x3

.field private static final MENU_GROUP_EDIT:I = 0x2

.field private static final MENU_GROUP_REMINDER:I = 0x1

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field static final UPDATE_ALL:I = 0x1

.field static final UPDATE_SINGLE:I


# instance fields
.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mDefaultReminderMinutes:I

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mIsRepeating:Z

.field private mOriginalAttendeeResponse:I

.field private mOriginalMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationship:I

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersContainer:Landroid/widget/LinearLayout;

.field private mResponseOffset:I

.field private mStartMillis:J

.field private mUri:Landroid/net/Uri;

.field private mVisibility:I

.field private mWildcardPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "_id"

    .line 72
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "color"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 100
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 110
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    return-void

    nop

    :array_80
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    iput v1, p0, Lcom/android/calendar/EventInfoActivity;->mVisibility:I

    .line 153
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mRelationship:I

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    .line 168
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventInfoActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->addReminder()V

    return-void
.end method

.method private addReminder()V
    .registers 7

    .prologue
    .line 418
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    if-nez v0, :cond_15

    .line 419
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 425
    :goto_11
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 426
    return-void

    .line 422
    :cond_15
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_11
.end method

.method private createExceptionResponse(Landroid/content/ContentResolver;JJI)V
    .registers 23
    .parameter "cr"
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    .line 526
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 527
    .local v4, uri:Landroid/net/Uri;
    sget-object v5, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 528
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_17

    .line 559
    .end local v4           #uri:Landroid/net/Uri;
    :goto_16
    return-void

    .line 533
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_17
    :try_start_17
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 534
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v15, values:Landroid/content/ContentValues;
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 537
    .local v14, title:Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 538
    .local v13, timezone:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 539
    .local v10, calendarId:I
    const/4 v3, 0x3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_b7

    const/4 v3, 0x1

    move v9, v3

    .line 540
    .local v9, allDay:Z
    :goto_37
    const/4 v3, 0x6

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 542
    .local v12, syncId:Ljava/lang/String;
    const-string v3, "title"

    invoke-virtual {v15, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v3, "eventTimezone"

    invoke-virtual {v15, v3, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v3, "allDay"

    if-eqz v9, :cond_bb

    const/4 v4, 0x1

    .end local v4           #uri:Landroid/net/Uri;
    :goto_4b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v3, "calendar_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    const-string v3, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    const-string v3, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v3, "originalEvent"

    invoke-virtual {v15, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v3, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const-string v3, "originalAllDay"

    if-eqz v9, :cond_bd

    const/4 v4, 0x1

    :goto_8f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v3, "eventStatus"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v3, "selfAttendeeStatus"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_b2
    .catchall {:try_start_17 .. :try_end_b2} :catchall_bf

    .line 557
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_16

    .line 539
    .end local v9           #allDay:Z
    .end local v12           #syncId:Ljava/lang/String;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_b7
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_37

    .line 544
    .restart local v9       #allDay:Z
    .restart local v12       #syncId:Ljava/lang/String;
    :cond_bb
    const/4 v4, 0x0

    goto :goto_4b

    .line 550
    .end local v4           #uri:Landroid/net/Uri;
    :cond_bd
    const/4 v4, 0x0

    goto :goto_8f

    .line 557
    .end local v9           #allDay:Z
    .end local v10           #calendarId:I
    .end local v12           #syncId:Ljava/lang/String;
    .end local v13           #timezone:Ljava/lang/String;
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    :catchall_bf
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private doDelete()V
    .registers 8

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    .line 583
    return-void
.end method

.method private doEdit()V
    .registers 6

    .prologue
    .line 572
    sget-object v2, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 573
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 574
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 575
    const-string v2, "endTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 576
    const-class v2, Lcom/android/calendar/EditEvent;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 579
    return-void
.end method

.method private findResponseIndexFor(I)I
    .registers 5
    .parameter "response"

    .prologue
    .line 562
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    array-length v1, v2

    .line 563
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_4
    if-ge v0, v1, :cond_11

    .line 564
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_e

    move v2, v0

    .line 568
    :goto_d
    return v2

    .line 563
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 568
    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private initAttendeesCursor()V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_15

    .line 340
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 341
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mRelationship:I

    .line 344
    :cond_15
    return-void
.end method

.method private initCalendarsCursor()V
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 350
    :cond_9
    return-void
.end method

.method private initEventCursor()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_10

    :cond_e
    move v1, v4

    .line 335
    :goto_f
    return v1

    .line 330
    :cond_10
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 331
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0xb

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/EventInfoActivity;->mVisibility:I

    .line 332
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 333
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, rRule:Ljava/lang/String;
    if-eqz v0, :cond_36

    move v1, v4

    :goto_32
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    move v1, v3

    .line 335
    goto :goto_f

    :cond_36
    move v1, v3

    .line 334
    goto :goto_32
.end method

.method private saveResponse(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v0, :cond_c

    :cond_a
    move v0, v2

    .line 508
    :goto_b
    return v0

    .line 473
    :cond_c
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 474
    .local v8, spinner:Landroid/widget/Spinner;
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    sub-int v7, v0, v1

    .line 475
    .local v7, position:I
    if-gtz v7, :cond_21

    move v0, v2

    .line 476
    goto :goto_b

    .line 479
    :cond_21
    sget-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v6, v0, v7

    .line 482
    .local v6, status:I
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-ne v6, v0, :cond_2b

    move v0, v2

    .line 483
    goto :goto_b

    .line 486
    :cond_2b
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    .line 487
    .local v4, attendeeId:J
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-nez v0, :cond_3f

    .line 489
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 490
    goto :goto_b

    .line 494
    :cond_3f
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v9

    .line 495
    .local v9, whichEvents:I
    packed-switch v9, :pswitch_data_66

    .line 505
    const-string v0, "Calendar"

    const-string v1, "Unexpected choice for updating invitation response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 508
    goto :goto_b

    :pswitch_51
    move v0, v2

    .line 497
    goto :goto_b

    .line 499
    :pswitch_53
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->createExceptionResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 500
    goto :goto_b

    .line 502
    :pswitch_5c
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 503
    goto :goto_b

    .line 495
    nop

    :pswitch_data_66
    .packed-switch -0x1
        :pswitch_51
        :pswitch_53
        :pswitch_5c
    .end packed-switch
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .registers 4
    .parameter "id"
    .parameter "text"

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 743
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_9

    .line 746
    :goto_8
    return-void

    .line 745
    :cond_9
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private setVisibilityCommon(II)V
    .registers 4
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 749
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 750
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 751
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 753
    :cond_9
    return-void
.end method

.method private updateRemindersVisibility()V
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 456
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 460
    :goto_f
    return-void

    .line 458
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_f
.end method

.method private updateResponse(Landroid/content/ContentResolver;JJI)V
    .registers 12
    .parameter "cr"
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 513
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 516
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "attendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v2, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    sget-object v2, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 520
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method private updateView()V
    .registers 33

    .prologue
    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-nez v3, :cond_8

    .line 699
    :goto_7
    return-void

    .line 589
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 590
    .local v26, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 592
    .local v13, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 593
    .local v18, eventName:Ljava/lang/String;
    if-eqz v18, :cond_22

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2c

    .line 594
    :cond_22
    const v3, 0x7f080007

    move-object/from16 v0, v26

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 597
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1a4

    const/4 v3, 0x1

    move v9, v3

    .line 598
    .local v9, allDay:Z
    :goto_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 599
    .local v23, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 600
    .local v15, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 601
    .local v24, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1a8

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 602
    .local v21, hasAlarm:Z
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 603
    .local v20, eventTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v4, -0x44000001

    and-int v12, v3, v4

    .line 605
    .local v12, color:I
    const v3, 0x7f0c003b

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 606
    .local v10, calBackground:Landroid/view/View;
    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 608
    const v3, 0x7f0c0002

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 609
    .local v29, title:Landroid/widget/TextView;
    move-object/from16 v0, v29

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 611
    const v3, 0x7f0c003c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 612
    .local v17, divider:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v12, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 615
    if-eqz v18, :cond_c3

    .line 616
    const v3, 0x7f0c0002

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 622
    :cond_c3
    if-eqz v9, :cond_1ad

    .line 623
    const/16 v8, 0x2012

    .line 630
    .local v8, flags:I
    :cond_c7
    :goto_c7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide v6, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v31

    .line 631
    .local v31, when:Ljava/lang/String;
    const v3, 0x7f0c0003

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 634
    new-instance v28, Landroid/text/format/Time;

    invoke-direct/range {v28 .. v28}, Landroid/text/format/Time;-><init>()V

    .line 635
    .local v28, time:Landroid/text/format/Time;
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 636
    .local v22, localTimezone:Ljava/lang/String;
    if-eqz v9, :cond_f1

    .line 637
    const-string v22, "UTC"

    .line 639
    :cond_f1
    if-eqz v20, :cond_1bf

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bf

    if-nez v9, :cond_1bf

    .line 641
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v30

    .line 642
    .local v30, tz:Ljava/util/TimeZone;
    if-eqz v30, :cond_111

    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b9

    .line 643
    :cond_111
    move-object/from16 v16, v22

    .line 648
    .local v16, displayName:Ljava/lang/String;
    :goto_113
    const v3, 0x7f0c003f

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 654
    .end local v16           #displayName:Ljava/lang/String;
    .end local v30           #tz:Ljava/util/TimeZone;
    :goto_11e
    if-eqz v24, :cond_1cd

    .line 655
    new-instance v19, Landroid/pim/EventRecurrence;

    invoke-direct/range {v19 .. v19}, Landroid/pim/EventRecurrence;-><init>()V

    .line 656
    .local v19, eventRecurrence:Landroid/pim/EventRecurrence;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 657
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 658
    .local v14, date:Landroid/text/format/Time;
    if-eqz v9, :cond_137

    .line 659
    const-string v3, "UTC"

    iput-object v3, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 661
    :cond_137
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide v3, v0

    invoke-virtual {v14, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 662
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 663
    invoke-virtual/range {v19 .. v19}, Landroid/pim/EventRecurrence;->getRepeatString()Ljava/lang/String;

    move-result-object v25

    .line 664
    .local v25, repeatString:Ljava/lang/String;
    const v3, 0x7f0c0041

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 670
    .end local v14           #date:Landroid/text/format/Time;
    .end local v19           #eventRecurrence:Landroid/pim/EventRecurrence;
    .end local v25           #repeatString:Ljava/lang/String;
    :goto_154
    if-eqz v23, :cond_15c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1db

    .line 671
    :cond_15c
    const v3, 0x7f0c0004

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 682
    :cond_168
    :goto_168
    if-eqz v15, :cond_170

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_207

    .line 683
    :cond_170
    const v3, 0x7f0c0029

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 689
    :goto_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-eqz v3, :cond_213

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 692
    .local v11, calendarName:Ljava/lang/String;
    const v3, 0x7f0c0015

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 698
    .end local v11           #calendarName:Ljava/lang/String;
    :goto_19f
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateResponse()V

    goto/16 :goto_7

    .line 597
    .end local v8           #flags:I
    .end local v9           #allDay:Z
    .end local v10           #calBackground:Landroid/view/View;
    .end local v12           #color:I
    .end local v15           #description:Ljava/lang/String;
    .end local v17           #divider:Landroid/view/View;
    .end local v20           #eventTimezone:Ljava/lang/String;
    .end local v21           #hasAlarm:Z
    .end local v22           #localTimezone:Ljava/lang/String;
    .end local v23           #location:Ljava/lang/String;
    .end local v24           #rRule:Ljava/lang/String;
    .end local v28           #time:Landroid/text/format/Time;
    .end local v29           #title:Landroid/widget/TextView;
    .end local v31           #when:Ljava/lang/String;
    :cond_1a4
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_3a

    .line 601
    .restart local v9       #allDay:Z
    .restart local v15       #description:Ljava/lang/String;
    .restart local v23       #location:Ljava/lang/String;
    .restart local v24       #rRule:Ljava/lang/String;
    :cond_1a8
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_6a

    .line 625
    .restart local v10       #calBackground:Landroid/view/View;
    .restart local v12       #color:I
    .restart local v17       #divider:Landroid/view/View;
    .restart local v20       #eventTimezone:Ljava/lang/String;
    .restart local v21       #hasAlarm:Z
    .restart local v29       #title:Landroid/widget/TextView;
    :cond_1ad
    const/16 v8, 0x11

    .line 626
    .restart local v8       #flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 627
    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_c7

    .line 645
    .restart local v22       #localTimezone:Ljava/lang/String;
    .restart local v28       #time:Landroid/text/format/Time;
    .restart local v30       #tz:Ljava/util/TimeZone;
    .restart local v31       #when:Ljava/lang/String;
    :cond_1b9
    invoke-virtual/range {v30 .. v30}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #displayName:Ljava/lang/String;
    goto/16 :goto_113

    .line 650
    .end local v16           #displayName:Ljava/lang/String;
    .end local v30           #tz:Ljava/util/TimeZone;
    :cond_1bf
    const v3, 0x7f0c003d

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_11e

    .line 666
    :cond_1cd
    const v3, 0x7f0c0040

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_154

    .line 673
    :cond_1db
    const v3, 0x7f0c0004

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 674
    .local v27, textView:Landroid/widget/TextView;
    if-eqz v27, :cond_168

    .line 675
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 676
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    move-object v3, v0

    const-string v4, "geo:0,0?q="

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto/16 :goto_168

    .line 685
    .end local v27           #textView:Landroid/widget/TextView;
    :cond_207
    const v3, 0x7f0c0029

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    goto/16 :goto_17c

    .line 694
    :cond_213
    const v3, 0x7f0c0042

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto :goto_19f
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 173
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 174
    .local v0, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 177
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 31
    .parameter "icicle"

    .prologue
    .line 209
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 213
    .local v19, intent:Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 215
    .local v5, cr:Landroid/content/ContentResolver;
    const-string v7, "beginTime"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v19

    move-object v1, v7

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 216
    const-string v7, "endTime"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v19

    move-object v1, v7

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    move-object v7, v0

    sget-object v8, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 307
    .end local p1
    :goto_57
    return-void

    .line 224
    .restart local p1
    :cond_58
    const v7, 0x7f03000f

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->setContentView(I)V

    .line 227
    sget-object v6, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 228
    .local v6, uri:Landroid/net/Uri;
    const-string v7, "event_id=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, where:Ljava/lang/String;
    sget-object v7, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    .line 230
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->initAttendeesCursor()V

    .line 233
    sget-object v6, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 234
    const-string v7, "_id=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .end local v8           #where:Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v10, v0

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 235
    .restart local v8       #where:Ljava/lang/String;
    sget-object v7, Lcom/android/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    .line 236
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->initCalendarsCursor()V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 240
    .local v26, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoActivity;->mVisibility:I

    move v7, v0

    const/16 v9, 0x1f4

    if-lt v7, v9, :cond_11a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoActivity;->mRelationship:I

    move v7, v0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_11a

    .line 242
    const v7, 0x7f080029

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    :goto_e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 249
    .local v23, r:Landroid/content/res/Resources;
    const v7, 0x7f060001

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    .line 250
    .local v28, strings:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v27, v0

    .line 251
    .local v27, size:I
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .local v21, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .local v18, i:I
    :goto_101
    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_12b

    .line 253
    aget-object v7, v28, v18

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v18, v18, 0x1

    goto :goto_101

    .line 244
    .end local v18           #i:I
    .end local v21           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #r:Landroid/content/res/Resources;
    .end local v27           #size:I
    .end local v28           #strings:[Ljava/lang/String;
    :cond_11a
    const v7, 0x7f080028

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 255
    .restart local v18       #i:I
    .restart local v21       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23       #r:Landroid/content/res/Resources;
    .restart local v27       #size:I
    .restart local v28       #strings:[Ljava/lang/String;
    :cond_12b
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    .line 256
    const/high16 v7, 0x7f06

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    .line 257
    .local v20, labels:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    .line 259
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 260
    .local v22, prefs:Landroid/content/SharedPreferences;
    const-string v7, "preferences_default_reminder"

    const-string v9, "0"

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 262
    .local v16, durationString:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    .line 264
    const v7, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/16 v9, 0xa

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_1ca

    const/4 v7, 0x1

    move/from16 v17, v7

    .line 268
    .local v17, hasAlarm:Z
    :goto_183
    if-eqz v17, :cond_209

    .line 269
    sget-object v6, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 270
    const-string v7, "event_id=%d AND (method=1 OR method=0)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .end local v8           #where:Ljava/lang/String;
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 271
    .restart local v8       #where:Ljava/lang/String;
    sget-object v7, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 275
    .local v24, reminderCursor:Landroid/database/Cursor;
    :goto_1a4
    :try_start_1a4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1ce

    .line 276
    const/4 v7, 0x1

    move-object/from16 v0, v24

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 277
    .local v14, minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v9

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_1c4
    .catchall {:try_start_1a4 .. :try_end_1c4} :catchall_1c5

    goto :goto_1a4

    .line 289
    .end local v14           #minutes:I
    :catchall_1c5
    move-exception v7

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v7

    .line 267
    .end local v17           #hasAlarm:Z
    .end local v24           #reminderCursor:Landroid/database/Cursor;
    :cond_1ca
    const/4 v7, 0x0

    move/from16 v17, v7

    goto :goto_183

    .line 281
    .restart local v17       #hasAlarm:Z
    .restart local v24       #reminderCursor:Landroid/database/Cursor;
    :cond_1ce
    const/4 v7, -0x1

    :try_start_1cf
    move-object/from16 v0, v24

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 282
    :goto_1d5
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_206

    .line 283
    const/4 v7, 0x1

    move-object/from16 v0, v24

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 284
    .restart local v14       #minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-static/range {v9 .. v14}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    :try_end_205
    .catchall {:try_start_1cf .. :try_end_205} :catchall_1c5

    goto :goto_1d5

    .line 289
    .end local v14           #minutes:I
    :cond_206
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 293
    .end local v24           #reminderCursor:Landroid/database/Cursor;
    :cond_209
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateView()V

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 297
    new-instance v15, Lcom/android/calendar/EventInfoActivity$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EventInfoActivity$1;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    .line 302
    .local v15, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    const v7, 0x7f0c0035

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageButton;

    .line 303
    .local v25, reminderRemoveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    new-instance v7, Lcom/android/calendar/DeleteEventHelper;

    const/4 v8, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    .end local v8           #where:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 306
    new-instance v7, Lcom/android/calendar/EditResponseHelper;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    goto/16 :goto_57
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 372
    const v1, 0x7f08002a

    invoke-interface {p1, v3, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 374
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 375
    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 377
    const v1, 0x7f08003c

    invoke-interface {p1, v4, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 378
    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 379
    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 381
    const v1, 0x7f08003e

    invoke-interface {p1, v5, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 382
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 182
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_b

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    if-nez v1, :cond_b

    .line 202
    :cond_a
    :goto_a
    return-void

    .line 188
    :cond_b
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-eqz v1, :cond_a

    .line 194
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    .line 195
    .local v0, index:I
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v1, v0

    if-eq p3, v1, :cond_a

    .line 201
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 447
    const/16 v0, 0x43

    if-ne p1, v0, :cond_9

    .line 448
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 205
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 442
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 433
    :pswitch_c
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->addReminder()V

    goto :goto_a

    .line 436
    :pswitch_10
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doEdit()V

    goto :goto_a

    .line 439
    :pswitch_14
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    goto :goto_a

    .line 431
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method

.method public onPause()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 355
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_b

    .line 367
    :cond_a
    :goto_a
    return-void

    .line 358
    :cond_b
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 361
    .local v3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->saveReminders(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v6

    .line 363
    .local v6, changed:Z
    invoke-direct {p0, v0}, Lcom/android/calendar/EventInfoActivity;->saveResponse(Landroid/content/ContentResolver;)Z

    move-result v1

    or-int/2addr v6, v1

    .line 364
    if-eqz v6, :cond_a

    .line 365
    const v1, 0x7f080020

    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_a
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 391
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mVisibility:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_34

    .line 392
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 393
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 399
    :goto_19
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mVisibility:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_3b

    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mRelationship:I

    if-lt v0, v4, :cond_3b

    .line 401
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 402
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 403
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 404
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 412
    :goto_2f
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 395
    :cond_34
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 396
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_19

    .line 406
    :cond_3b
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 407
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 408
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 409
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2f
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 312
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 314
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 319
    :goto_c
    return-void

    .line 317
    :cond_d
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initAttendeesCursor()V

    .line 318
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initCalendarsCursor()V

    goto :goto_c
.end method

.method updateResponse()V
    .registers 10

    .prologue
    const v8, 0x7f0c0044

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 702
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mVisibility:I

    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_10

    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mRelationship:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_16

    .line 704
    :cond_10
    const/16 v4, 0x8

    invoke-direct {p0, v8, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 739
    :goto_15
    return-void

    .line 708
    :cond_16
    invoke-direct {p0, v8, v7}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 710
    const v4, 0x7f0c0046

    invoke-virtual {p0, v4}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 712
    .local v3, spinner:Landroid/widget/Spinner;
    iput v6, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    .line 713
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_31

    .line 714
    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    .line 716
    :cond_31
    iput v7, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    .line 723
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5e

    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v4, v6, :cond_5e

    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eqz v4, :cond_5e

    .line 727
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 728
    .local v1, entries:[Ljava/lang/CharSequence;
    iput v6, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    .line 729
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 732
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 733
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 736
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #entries:[Ljava/lang/CharSequence;
    :cond_5e
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v4}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v2

    .line 737
    .local v2, index:I
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 738
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_15
.end method
