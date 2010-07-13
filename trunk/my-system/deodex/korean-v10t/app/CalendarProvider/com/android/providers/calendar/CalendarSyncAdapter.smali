.class public final Lcom/android/providers/calendar/CalendarSyncAdapter;
.super Lcom/google/android/providers/AbstractGDataSyncAdapter;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarSyncAdapter$1;,
        Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;
    }
.end annotation


# static fields
.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDAR_KEY_COLUMNS:[Ljava/lang/String; = null

.field private static final CALENDAR_KEY_SORT_ORDER:Ljava/lang/String; = "_sync_account,url"

.field private static final FEEDS_KEY_COLUMNS:[Ljava/lang/String; = null

.field private static final FEEDS_KEY_SORT_ORDER:Ljava/lang/String; = "_sync_account, feed"

.field private static final SELECT_BY_ACCOUNT:Ljava/lang/String; = "_sync_account=?"

.field private static final SELECT_BY_ACCOUNT_AND_FEED:Ljava/lang/String; = "_sync_account=? AND url=?"

.field private static final TAG:Ljava/lang/String; = "Sync"

.field static final USER_AGENT_APP_VERSION:Ljava/lang/String; = "Android-GData-Calendar/1.1"

.field private static mRefresh:I

.field private static mServerDiffs:I

.field private static final sCanceledStatus:Ljava/lang/Integer;

.field private static final sConfirmedStatus:Ljava/lang/Integer;

.field private static final sTentativeStatus:Ljava/lang/Integer;


# instance fields
.field private final mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "url"

    const-string v5, "_sync_account"

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v5, v0, v2

    const-string v1, "url"

    aput-object v6, v0, v3

    sput-object v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    .line 85
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v5, v0, v2

    const-string v1, "feed"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->FEEDS_KEY_COLUMNS:[Ljava/lang/String;

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->sTentativeStatus:Ljava/lang/Integer;

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->sConfirmedStatus:Ljava/lang/Integer;

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->sCanceledStatus:Ljava/lang/Integer;

    .line 105
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "selected"

    aput-object v1, v0, v3

    const-string v1, "_sync_time"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v6, v0, v1

    const/4 v1, 0x4

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V
    .registers 7
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;-><init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V

    .line 121
    new-instance v0, Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient;

    const-string v2, "Android-GData-Calendar/1.1"

    invoke-direct {v1, p1, v2}, Lcom/google/android/gdata/client/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;

    new-instance v3, Lcom/google/android/gdata/client/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/gdata/client/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    .line 124
    return-void
.end method

.method private addAttendeesToEntry(JLcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 23
    .parameter "eventId"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 340
    .local v9, c:Landroid/database/Cursor;
    :try_start_27
    const-string v3, "attendeeName"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 341
    .local v11, nameIndex:I
    const-string v3, "attendeeEmail"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 342
    .local v10, emailIndex:I
    const-string v3, "attendeeStatus"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 343
    .local v15, statusIndex:I
    const-string v3, "attendeeType"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 344
    .local v17, typeIndex:I
    const-string v3, "attendeeRelationship"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 348
    .local v13, relIndex:I
    :goto_45
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_153

    .line 349
    new-instance v18, Lcom/google/wireless/gdata/calendar/data/Who;

    invoke-direct/range {v18 .. v18}, Lcom/google/wireless/gdata/calendar/data/Who;-><init>()V

    .line 350
    .local v18, who:Lcom/google/wireless/gdata/calendar/data/Who;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setValue(Ljava/lang/String;)V

    .line 351
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setEmail(Ljava/lang/String;)V

    .line 352
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 353
    .local v14, status:I
    packed-switch v14, :pswitch_data_158

    .line 370
    const-string v3, "Sync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attendee status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    .line 374
    :goto_8a
    move-object v0, v9

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 375
    .local v16, type:I
    packed-switch v16, :pswitch_data_166

    .line 386
    const-string v3, "Sync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attendee type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    .line 390
    :goto_b6
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 391
    .local v12, rel:I
    packed-switch v12, :pswitch_data_170

    .line 408
    const-string v3, "Sync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attendee relationship: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    .line 412
    :goto_dc
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addAttendee(Lcom/google/wireless/gdata/calendar/data/Who;)V
    :try_end_e3
    .catchall {:try_start_27 .. :try_end_e3} :catchall_e5

    goto/16 :goto_45

    .line 415
    .end local v10           #emailIndex:I
    .end local v11           #nameIndex:I
    .end local v12           #rel:I
    .end local v13           #relIndex:I
    .end local v14           #status:I
    .end local v15           #statusIndex:I
    .end local v16           #type:I
    .end local v17           #typeIndex:I
    .end local v18           #who:Lcom/google/wireless/gdata/calendar/data/Who;
    :catchall_e5
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 355
    .restart local v10       #emailIndex:I
    .restart local v11       #nameIndex:I
    .restart local v13       #relIndex:I
    .restart local v14       #status:I
    .restart local v15       #statusIndex:I
    .restart local v17       #typeIndex:I
    .restart local v18       #who:Lcom/google/wireless/gdata/calendar/data/Who;
    :pswitch_ea
    const/4 v3, 0x0

    :try_start_eb
    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_8a

    .line 358
    :pswitch_f2
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_8a

    .line 361
    :pswitch_fa
    const/4 v3, 0x2

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_8a

    .line 364
    :pswitch_102
    const/4 v3, 0x3

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto :goto_8a

    .line 367
    :pswitch_10a
    const/4 v3, 0x4

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setStatus(B)V

    goto/16 :goto_8a

    .line 377
    .restart local v16       #type:I
    :pswitch_113
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto :goto_b6

    .line 380
    :pswitch_11b
    const/4 v3, 0x2

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto :goto_b6

    .line 383
    :pswitch_123
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setType(B)V

    goto :goto_b6

    .line 393
    .restart local v12       #rel:I
    :pswitch_12b
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    goto :goto_dc

    .line 396
    :pswitch_133
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    goto :goto_dc

    .line 399
    :pswitch_13b
    const/4 v3, 0x2

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    goto :goto_dc

    .line 402
    :pswitch_143
    const/4 v3, 0x4

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V

    goto :goto_dc

    .line 405
    :pswitch_14b
    const/4 v3, 0x3

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/Who;->setRelationship(B)V
    :try_end_152
    .catchall {:try_start_eb .. :try_end_152} :catchall_e5

    goto :goto_dc

    .line 415
    .end local v12           #rel:I
    .end local v14           #status:I
    .end local v16           #type:I
    .end local v18           #who:Lcom/google/wireless/gdata/calendar/data/Who;
    :cond_153
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 417
    return-void

    .line 353
    nop

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_ea
        :pswitch_f2
        :pswitch_fa
        :pswitch_102
        :pswitch_10a
    .end packed-switch

    .line 375
    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_113
        :pswitch_11b
        :pswitch_123
    .end packed-switch

    .line 391
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_12b
        :pswitch_133
        :pswitch_13b
        :pswitch_14b
        :pswitch_143
    .end packed-switch
.end method

.method private addExtendedPropertiesToEntry(JLcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 15
    .parameter "eventId"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 463
    .local v6, c:Landroid/database/Cursor;
    :try_start_24
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 464
    .local v8, nameIndex:I
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 466
    .local v10, valueIndex:I
    :goto_30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 467
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 469
    .local v9, value:Ljava/lang/String;
    invoke-virtual {p3, v7, v9}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_42

    goto :goto_30

    .line 472
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameIndex:I
    .end local v9           #value:Ljava/lang/String;
    .end local v10           #valueIndex:I
    :catchall_42
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v8       #nameIndex:I
    .restart local v10       #valueIndex:I
    :cond_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 474
    return-void
.end method

.method private addRecurrenceToEntry(Landroid/pim/ICalendar$Component;Lcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 13
    .parameter "component"
    .parameter "event"

    .prologue
    const-string v9, "\n"

    .line 481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 485
    .local v2, first:Z
    invoke-virtual {p1}, Landroid/pim/ICalendar$Component;->getPropertyNames()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 487
    .local v6, propertyName:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/pim/ICalendar$Property;

    .line 488
    .local v5, property:Landroid/pim/ICalendar$Property;
    if-eqz v2, :cond_37

    .line 489
    const/4 v2, 0x0

    .line 493
    :goto_33
    invoke-virtual {v5, v7}, Landroid/pim/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_24

    .line 491
    :cond_37
    const-string v8, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 498
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #property:Landroid/pim/ICalendar$Property;
    .end local v6           #propertyName:Ljava/lang/String;
    :cond_3d
    invoke-virtual {p1}, Landroid/pim/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 499
    .local v1, children:Ljava/util/List;,"Ljava/util/List<Landroid/pim/ICalendar$Component;>;"
    if-eqz v1, :cond_60

    .line 500
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/ICalendar$Component;

    .line 501
    .local v0, child:Landroid/pim/ICalendar$Component;
    if-eqz v2, :cond_5a

    .line 502
    const/4 v2, 0x0

    .line 506
    :goto_56
    invoke-virtual {v0, v7}, Landroid/pim/ICalendar$Component;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_47

    .line 504
    :cond_5a
    const-string v8, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 509
    .end local v0           #child:Landroid/pim/ICalendar$Component;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_60
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setRecurrence(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private addRemindersToEntry(JLcom/google/wireless/gdata/calendar/data/EventEntry;)V
    .registers 15
    .parameter "eventId"
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 426
    .local v6, c:Landroid/database/Cursor;
    :try_start_24
    const-string v0, "method"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 427
    .local v8, methodIndex:I
    const-string v0, "minutes"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 429
    .local v9, minutesIndex:I
    :goto_30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 430
    new-instance v10, Lcom/google/wireless/gdata/calendar/data/Reminder;

    invoke-direct {v10}, Lcom/google/wireless/gdata/calendar/data/Reminder;-><init>()V

    .line 431
    .local v10, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMinutes(I)V

    .line 432
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 433
    .local v7, method:I
    packed-switch v7, :pswitch_data_82

    .line 447
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal method, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_62

    .line 452
    .end local v7           #method:I
    .end local v8           #methodIndex:I
    .end local v9           #minutesIndex:I
    .end local v10           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    :catchall_62
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 435
    .restart local v7       #method:I
    .restart local v8       #methodIndex:I
    .restart local v9       #minutesIndex:I
    .restart local v10       #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    :pswitch_67
    const/4 v0, 0x0

    :try_start_68
    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    .line 449
    :goto_6b
    invoke-virtual {p3, v10}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addReminder(Lcom/google/wireless/gdata/calendar/data/Reminder;)V

    goto :goto_30

    .line 438
    :pswitch_6f
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_6b

    .line 441
    :pswitch_74
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V

    goto :goto_6b

    .line 444
    :pswitch_79
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/google/wireless/gdata/calendar/data/Reminder;->setMethod(B)V
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_62

    goto :goto_6b

    .line 452
    .end local v7           #method:I
    .end local v10           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    :cond_7e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 454
    return-void

    .line 433
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_67
        :pswitch_6f
        :pswitch_74
        :pswitch_79
    .end packed-switch
.end method

.method private deletedEntryToContentValues(Ljava/lang/Long;Lcom/google/wireless/gdata/calendar/data/EventEntry;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "syncLocalId"
    .parameter "event"
    .parameter "values"

    .prologue
    .line 542
    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 545
    const-string v0, "_sync_local_id"

    invoke-virtual {p3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    const-string v0, "_sync_id"

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "_sync_version"

    invoke-virtual {p2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getEditUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method private entryToContentValues(Lcom/google/wireless/gdata/calendar/data/EventEntry;Ljava/lang/Long;Landroid/content/ContentValues;Ljava/lang/Object;)I
    .registers 36
    .parameter "event"
    .parameter "syncLocalId"
    .parameter "map"
    .parameter "info"

    .prologue
    .line 562
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;

    move-object/from16 v20, v0

    .line 594
    .local v20, syncInfo:Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;
    new-instance v21, Landroid/text/format/Time;

    const-string v28, "UTC"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 596
    .local v21, time:Landroid/text/format/Time;
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->clear()V

    .line 599
    const-string v28, "_sync_id"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getId()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getEditUri()Ljava/lang/String;

    move-result-object v25

    .line 601
    .local v25, version:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_44

    .line 604
    const-string v28, "_sync_version"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/providers/calendar/CalendarSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_44
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getOriginalEventId()Ljava/lang/String;

    move-result-object v14

    .line 609
    .local v14, originalId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getOriginalEventStartTime()Ljava/lang/String;

    move-result-object v15

    .line 610
    .local v15, originalStartTime:Ljava/lang/String;
    const/4 v13, 0x0

    .line 611
    .local v13, isRecurrenceException:Z
    invoke-static {v14}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_9c

    invoke-static {v15}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_9c

    .line 612
    const/4 v13, 0x1

    .line 613
    move-object/from16 v0, v21

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 614
    const-string v28, "originalEvent"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v28, "originalInstanceTime"

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    const-string v28, "originalAllDay"

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a6

    const/16 v29, 0x1

    :goto_8f
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    :cond_9c
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getStatus()B

    move-result v19

    .line 621
    .local v19, status:B
    packed-switch v19, :pswitch_data_3cc

    .line 636
    const/16 v28, 0x2

    .line 808
    :goto_a5
    return v28

    .line 616
    .end local v19           #status:B
    :cond_a6
    const/16 v29, 0x0

    goto :goto_8f

    .line 623
    .restart local v19       #status:B
    :pswitch_a9
    if-nez v13, :cond_ae

    .line 624
    const/16 v28, 0x1

    goto :goto_a5

    .line 626
    :cond_ae
    const-string v28, "eventStatus"

    sget-object v29, Lcom/android/providers/calendar/CalendarSyncAdapter;->sCanceledStatus:Ljava/lang/Integer;

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    :goto_bb
    const-string v28, "_sync_local_id"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v24

    .line 643
    .local v24, updated:Ljava/lang/String;
    const-string v28, "_sync_time"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v28, "_sync_dirty"

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getVisibility()B

    move-result v28

    packed-switch v28, :pswitch_data_3d6

    .line 662
    const-string v28, "Sync"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unexpected visibility "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getVisibility()B

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v28, 0x2

    goto :goto_a5

    .line 629
    .end local v24           #updated:Ljava/lang/String;
    :pswitch_10c
    const-string v28, "eventStatus"

    sget-object v29, Lcom/android/providers/calendar/CalendarSyncAdapter;->sTentativeStatus:Ljava/lang/Integer;

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_bb

    .line 632
    :pswitch_11a
    const-string v28, "eventStatus"

    sget-object v29, Lcom/android/providers/calendar/CalendarSyncAdapter;->sConfirmedStatus:Ljava/lang/Integer;

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_bb

    .line 649
    .restart local v24       #updated:Ljava/lang/String;
    :pswitch_128
    const-string v28, "visibility"

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    :goto_139
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getTransparency()B

    move-result v28

    packed-switch v28, :pswitch_data_3e2

    .line 676
    const-string v28, "Sync"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unexpected transparency "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getTransparency()B

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v28, 0x2

    goto/16 :goto_a5

    .line 652
    :pswitch_160
    const-string v28, "visibility"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_139

    .line 655
    :pswitch_172
    const-string v28, "visibility"

    const/16 v29, 0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_139

    .line 658
    :pswitch_184
    const-string v28, "visibility"

    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_139

    .line 669
    :pswitch_196
    const-string v28, "transparency"

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    :goto_1a7
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getHtmlUri()Ljava/lang/String;

    move-result-object v11

    .line 682
    .local v11, htmlUri:Ljava/lang/String;
    invoke-static {v11}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1bb

    .line 685
    const-string v28, "htmlUri"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1bb
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getTitle()Ljava/lang/String;

    move-result-object v23

    .line 690
    .local v23, title:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1d0

    .line 691
    const-string v28, "title"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_1d0
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, content:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1e4

    .line 697
    const-string v28, "description"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_1e4
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getWhere()Ljava/lang/String;

    move-result-object v27

    .line 702
    .local v27, where:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1f9

    .line 703
    const-string v28, "eventLocation"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :cond_1f9
    const-string v28, "calendar_id"

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getCommentsUri()Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, commentsUri:Ljava/lang/String;
    if-eqz v3, :cond_21e

    .line 712
    const-string v28, "commentsUri"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_21e
    const/16 v22, 0x0

    .line 718
    .local v22, timesSet:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v28

    if-eqz v28, :cond_237

    .line 721
    const-string v28, "hasAlarm"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    :cond_237
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v28

    if-eqz v28, :cond_24e

    .line 728
    const-string v28, "hasExtendedProperties"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    :cond_24e
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getFirstWhen()Lcom/google/wireless/gdata/calendar/data/When;

    move-result-object v26

    .line 733
    .local v26, when:Lcom/google/wireless/gdata/calendar/data/When;
    if-eqz v26, :cond_361

    .line 734
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/gdata/calendar/data/When;->getStartTime()Ljava/lang/String;

    move-result-object v18

    .line 735
    .local v18, startTime:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_302

    .line 736
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 746
    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/text/format/Time;->allDay:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2df

    .line 747
    const-string v28, "allDay"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    const-string v28, "eventTimezone"

    const-string v29, "UTC"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :goto_28b
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 754
    .local v7, dtstart:J
    const-wide/16 v28, 0x0

    cmp-long v28, v7, v28

    if-gez v28, :cond_2f1

    .line 756
    const-string v28, "Sync"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dtstart out of range: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v28, "dtstart"

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    const/16 v28, 0x2

    goto/16 :goto_a5

    .line 672
    .end local v3           #commentsUri:Ljava/lang/String;
    .end local v4           #content:Ljava/lang/String;
    .end local v7           #dtstart:J
    .end local v11           #htmlUri:Ljava/lang/String;
    .end local v18           #startTime:Ljava/lang/String;
    .end local v22           #timesSet:Z
    .end local v23           #title:Ljava/lang/String;
    .end local v26           #when:Lcom/google/wireless/gdata/calendar/data/When;
    .end local v27           #where:Ljava/lang/String;
    :pswitch_2cc
    const-string v28, "transparency"

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1a7

    .line 750
    .restart local v3       #commentsUri:Ljava/lang/String;
    .restart local v4       #content:Ljava/lang/String;
    .restart local v11       #htmlUri:Ljava/lang/String;
    .restart local v18       #startTime:Ljava/lang/String;
    .restart local v22       #timesSet:Z
    .restart local v23       #title:Ljava/lang/String;
    .restart local v26       #when:Lcom/google/wireless/gdata/calendar/data/When;
    .restart local v27       #where:Ljava/lang/String;
    :cond_2df
    const-string v28, "eventTimezone"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28b

    .line 761
    .restart local v7       #dtstart:J
    :cond_2f1
    const-string v28, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 763
    const/16 v22, 0x1

    .line 766
    .end local v7           #dtstart:J
    :cond_302
    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/gdata/calendar/data/When;->getEndTime()Ljava/lang/String;

    move-result-object v9

    .line 767
    .local v9, endTime:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_361

    .line 768
    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 769
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 770
    .local v5, dtend:J
    const-wide/16 v28, 0x0

    cmp-long v28, v5, v28

    if-gez v28, :cond_352

    .line 772
    const-string v28, "Sync"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dtend out of range: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v28, "dtstart"

    const/16 v29, -0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 775
    const/16 v28, 0x2

    goto/16 :goto_a5

    .line 777
    :cond_352
    const-string v28, "dtend"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 782
    .end local v5           #dtend:J
    .end local v9           #endTime:Ljava/lang/String;
    .end local v18           #startTime:Ljava/lang/String;
    :cond_361
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getRecurrence()Ljava/lang/String;

    move-result-object v16

    .line 783
    .local v16, recurrence:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_3b3

    .line 784
    new-instance v17, Landroid/pim/ICalendar$Component;

    const-string v28, "DUMMY"

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/pim/ICalendar$Component;-><init>(Ljava/lang/String;Landroid/pim/ICalendar$Component;)V

    .line 786
    .local v17, recurrenceComponent:Landroid/pim/ICalendar$Component;
    const/4 v12, 0x0

    .line 788
    .local v12, ical:Landroid/pim/ICalendar;
    :try_start_37b
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/pim/ICalendar;->parseComponent(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Landroid/pim/ICalendar$Component;
    :try_end_382
    .catch Landroid/pim/ICalendar$FormatException; {:try_start_37b .. :try_end_382} :catch_390

    .line 796
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/pim/RecurrenceSet;->populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z

    move-result v28

    if-nez v28, :cond_3b1

    .line 797
    const/16 v28, 0x2

    goto/16 :goto_a5

    .line 789
    :catch_390
    move-exception v10

    .line 791
    .local v10, fe:Landroid/pim/ICalendar$FormatException;
    const-string v28, "Sync"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to parse recurrence: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/16 v28, 0x2

    goto/16 :goto_a5

    .line 800
    .end local v10           #fe:Landroid/pim/ICalendar$FormatException;
    :cond_3b1
    const/16 v22, 0x1

    .line 803
    .end local v12           #ical:Landroid/pim/ICalendar;
    .end local v17           #recurrenceComponent:Landroid/pim/ICalendar$Component;
    :cond_3b3
    if-nez v22, :cond_3b9

    .line 804
    const/16 v28, 0x2

    goto/16 :goto_a5

    .line 807
    :cond_3b9
    const-string v28, "_sync_account"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const/16 v28, 0x0

    goto/16 :goto_a5

    .line 621
    :pswitch_data_3cc
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_11a
        :pswitch_a9
    .end packed-switch

    .line 647
    :pswitch_data_3d6
    .packed-switch 0x0
        :pswitch_128
        :pswitch_160
        :pswitch_172
        :pswitch_184
    .end packed-switch

    .line 667
    :pswitch_data_3e2
    .packed-switch 0x0
        :pswitch_196
        :pswitch_2cc
    .end packed-switch
.end method

.method private getServerDiffsForFeed(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 27
    .parameter "context"
    .parameter "baseSyncData"
    .parameter "tempProvider"
    .parameter "feed"
    .parameter "baseSyncInfo"
    .parameter "syncResult"

    .prologue
    .line 1091
    move-object/from16 v0, p5

    check-cast v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;

    move-object/from16 v17, v0

    .line 1092
    .local v17, syncInfo:Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v10, v0

    .line 1094
    .local v10, syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v6, "_sync_account=? AND url=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p4, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1098
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1099
    .local v13, map:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getMaxEntriesPerSync()I

    move-result v9

    .line 1102
    .local v9, maxResults:I
    :try_start_34
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_f4

    move-result v3

    if-nez v3, :cond_3e

    .line 1146
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1148
    :goto_3d
    return-void

    .line 1109
    :cond_3e
    const/4 v3, 0x0

    :try_start_3f
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    .line 1110
    const/4 v3, 0x6

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_82

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1111
    .local v16, syncEvents:Z
    :goto_53
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1112
    .local v18, syncTime:J
    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1113
    .local v7, feedUrl:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1114
    .local v14, name:Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 1117
    .local v15, origCalendarTimezone:Ljava/lang/String;
    if-nez v16, :cond_86

    .line 1120
    const-string v3, "Sync"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1121
    const-string v3, "Sync"

    const-string v4, "Ignoring sync request for non-syncable feed."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_3f .. :try_end_7e} :catchall_f4

    .line 1146
    :cond_7e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 1110
    .end local v7           #feedUrl:Ljava/lang/String;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #origCalendarTimezone:Ljava/lang/String;
    .end local v16           #syncEvents:Z
    .end local v18           #syncTime:J
    :cond_82
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_53

    .line 1126
    .restart local v7       #feedUrl:Ljava/lang/String;
    .restart local v14       #name:Ljava/lang/String;
    .restart local v15       #origCalendarTimezone:Ljava/lang/String;
    .restart local v16       #syncEvents:Z
    .restart local v18       #syncTime:J
    :cond_86
    :try_start_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Syncing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getFeedEntryClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v8, v17

    move-object/from16 v11, p6

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getServerDiffsImpl(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 1132
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mSyncCanceled:Z

    move v3, v0

    if-nez v3, :cond_bd

    invoke-virtual/range {p6 .. p6}, Landroid/content/SyncResult;->hasError()Z
    :try_end_ba
    .catchall {:try_start_86 .. :try_end_ba} :catchall_f4

    move-result v3

    if-eqz v3, :cond_c2

    .line 1146
    :cond_bd
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3d

    .line 1137
    :cond_c2
    :try_start_c2
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ef

    .line 1139
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 1140
    const-string v3, "timezone"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v13, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_c2 .. :try_end_ef} :catchall_f4

    .line 1146
    :cond_ef
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3d

    .end local v7           #feedUrl:Ljava/lang/String;
    .end local v14           #name:Ljava/lang/String;
    .end local v15           #origCalendarTimezone:Ljava/lang/String;
    .end local v16           #syncEvents:Z
    .end local v18           #syncTime:J
    :catchall_f4
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3
.end method


# virtual methods
.method protected createSyncInfo()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;

    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;-><init>()V

    return-object v0
.end method

.method protected cursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .registers 44
    .parameter "context"
    .parameter "c"
    .parameter "entry"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 155
    move-object/from16 v0, p3

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-object v13, v0

    .line 156
    .local v13, event:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;

    move-object/from16 v30, v0

    .line 158
    .local v30, syncInfo:Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;
    const-string v36, "url"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 163
    .local v16, feedUrl:Ljava/lang/String;
    const-string v36, "calendar_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    move-wide/from16 v0, v36

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarId:J

    .line 164
    const-string v36, "eventTimezone"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 166
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_71

    .line 169
    const-string v36, "timezone"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 174
    :cond_71
    const-string v36, "_sync_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setId(Ljava/lang/String;)V

    .line 175
    const-string v36, "_sync_version"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setEditUri(Ljava/lang/String;)V

    .line 179
    const-string v36, "eventStatus"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 180
    .local v19, localStatus:I
    packed-switch v19, :pswitch_data_380

    .line 192
    const/16 v29, 0x0

    .line 195
    .local v29, status:B
    :goto_b8
    move-object v0, v13

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setStatus(B)V

    .line 199
    const-string v36, "visibility"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 200
    .local v21, localVisibility:I
    packed-switch v21, :pswitch_data_38a

    .line 215
    const-string v36, "Sync"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unexpected value for visibility: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "; using default visibility."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v34, 0x0

    .line 220
    .local v34, visibility:B
    :goto_f7
    move-object v0, v13

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setVisibility(B)V

    .line 223
    const-string v36, "transparency"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 224
    .local v20, localTransparency:I
    packed-switch v20, :pswitch_data_396

    .line 233
    const-string v36, "Sync"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Unexpected value for transparency: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "; using opaque transparency."

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v32, 0x0

    .line 238
    .local v32, transparency:B
    :goto_136
    move-object v0, v13

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setTransparency(B)V

    .line 243
    const-string v36, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setTitle(Ljava/lang/String;)V

    .line 246
    const-string v36, "description"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setContent(Ljava/lang/String;)V

    .line 249
    const-string v36, "eventLocation"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setWhere(Ljava/lang/String;)V

    .line 252
    const-string v36, "_sync_local_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide v14, v0

    .line 253
    .local v14, eventId:J
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarSyncAdapter;->addAttendeesToEntry(JLcom/google/wireless/gdata/calendar/data/EventEntry;)V

    .line 256
    const-string v36, "commentsUri"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setCommentsUri(Ljava/lang/String;)V

    .line 258
    new-instance v33, Landroid/text/format/Time;

    const-string v36, "UTC"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 260
    .local v33, utc:Landroid/text/format/Time;
    const-string v36, "allDay"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-eqz v36, :cond_371

    const/16 v36, 0x1

    move/from16 v4, v36

    .line 262
    .local v4, allDay:Z
    :goto_1dc
    const/16 v28, 0x0

    .line 263
    .local v28, startTime:Ljava/lang/String;
    const/4 v12, 0x0

    .line 265
    .local v12, endTime:Ljava/lang/String;
    const-string v36, "dtstart"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 266
    .local v11, dtstartColumn:I
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_206

    .line 267
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 268
    .local v9, dtstart:J
    move-object/from16 v0, v33

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 269
    move-object/from16 v0, v33

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v28

    .line 273
    .end local v9           #dtstart:J
    :cond_206
    const-string v36, "dtend"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 274
    .local v8, dtendColumn:I
    move-object/from16 v0, p2

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_22d

    .line 275
    move-object/from16 v0, p2

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 276
    .local v6, dtend:J
    move-object/from16 v0, v33

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 277
    move-object/from16 v0, v33

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v12

    .line 280
    .end local v6           #dtend:J
    :cond_22d
    new-instance v35, Lcom/google/wireless/gdata/calendar/data/When;

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/calendar/data/When;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v35, when:Lcom/google/wireless/gdata/calendar/data/When;
    move-object v0, v13

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->addWhen(Lcom/google/wireless/gdata/calendar/data/When;)V

    .line 284
    const-string v36, "hasAlarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 285
    .local v18, hasReminder:Ljava/lang/Integer;
    if-eqz v18, :cond_262

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_262

    .line 286
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarSyncAdapter;->addRemindersToEntry(JLcom/google/wireless/gdata/calendar/data/EventEntry;)V

    .line 290
    :cond_262
    const-string v36, "hasExtendedProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 291
    .local v17, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v17, :cond_287

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v36

    if-eqz v36, :cond_287

    .line 292
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarSyncAdapter;->addExtendedPropertiesToEntry(JLcom/google/wireless/gdata/calendar/data/EventEntry;)V

    .line 295
    :cond_287
    const-wide/16 v24, -0x1

    .line 296
    .local v24, originalStartTime:J
    const-string v36, "originalEvent"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 297
    .local v23, originalId:Ljava/lang/String;
    const-string v36, "originalInstanceTime"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 298
    .local v26, originalStartTimeIndex:I
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-nez v36, :cond_2b7

    .line 299
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 301
    :cond_2b7
    const-wide/16 v36, -0x1

    cmp-long v36, v24, v36

    if-eqz v36, :cond_326

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_326

    .line 304
    const-string v36, "originalAllDay"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    if-eqz v36, :cond_377

    const/16 v36, 0x1

    move/from16 v22, v36

    .line 306
    .local v22, originalAllDay:Z
    :goto_2db
    const-string v36, "eventTimezone"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v0, p2

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 307
    .local v31, timezone:Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-eqz v36, :cond_2fb

    .line 308
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    .line 310
    :cond_2fb
    new-instance v27, Landroid/text/format/Time;

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 311
    .local v27, originalTime:Landroid/text/format/Time;
    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 313
    move-object/from16 v0, v33

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 314
    move-object/from16 v0, v33

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v36

    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventStartTime(Ljava/lang/String;)V

    .line 315
    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setOriginalEventId(Ljava/lang/String;)V

    .line 319
    .end local v22           #originalAllDay:Z
    .end local v27           #originalTime:Landroid/text/format/Time;
    .end local v31           #timezone:Ljava/lang/String;
    :cond_326
    new-instance v5, Landroid/pim/ICalendar$Component;

    const-string v36, "DUMMY"

    const/16 v37, 0x0

    move-object v0, v5

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/pim/ICalendar$Component;-><init>(Ljava/lang/String;Landroid/pim/ICalendar$Component;)V

    .line 321
    .local v5, component:Landroid/pim/ICalendar$Component;
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/pim/RecurrenceSet;->populateComponent(Landroid/database/Cursor;Landroid/pim/ICalendar$Component;)Z

    move-result v36

    if-eqz v36, :cond_344

    .line 322
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarSyncAdapter;->addRecurrenceToEntry(Landroid/pim/ICalendar$Component;Lcom/google/wireless/gdata/calendar/data/EventEntry;)V

    .line 327
    :cond_344
    invoke-virtual {v13}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getEditUri()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_37d

    move-object/from16 v36, v16

    .line 330
    :goto_34c
    return-object v36

    .line 182
    .end local v4           #allDay:Z
    .end local v5           #component:Landroid/pim/ICalendar$Component;
    .end local v8           #dtendColumn:I
    .end local v11           #dtstartColumn:I
    .end local v12           #endTime:Ljava/lang/String;
    .end local v14           #eventId:J
    .end local v17           #hasExtendedProperties:Ljava/lang/Integer;
    .end local v18           #hasReminder:Ljava/lang/Integer;
    .end local v20           #localTransparency:I
    .end local v21           #localVisibility:I
    .end local v23           #originalId:Ljava/lang/String;
    .end local v24           #originalStartTime:J
    .end local v26           #originalStartTimeIndex:I
    .end local v28           #startTime:Ljava/lang/String;
    .end local v29           #status:B
    .end local v32           #transparency:B
    .end local v33           #utc:Landroid/text/format/Time;
    .end local v34           #visibility:B
    .end local v35           #when:Lcom/google/wireless/gdata/calendar/data/When;
    :pswitch_34d
    const/16 v29, 0x2

    .line 183
    .restart local v29       #status:B
    goto/16 :goto_b8

    .line 185
    .end local v29           #status:B
    :pswitch_351
    const/16 v29, 0x1

    .line 186
    .restart local v29       #status:B
    goto/16 :goto_b8

    .line 188
    .end local v29           #status:B
    :pswitch_355
    const/16 v29, 0x0

    .line 189
    .restart local v29       #status:B
    goto/16 :goto_b8

    .line 202
    .restart local v21       #localVisibility:I
    :pswitch_359
    const/16 v34, 0x0

    .line 203
    .restart local v34       #visibility:B
    goto/16 :goto_f7

    .line 205
    .end local v34           #visibility:B
    :pswitch_35d
    const/16 v34, 0x1

    .line 206
    .restart local v34       #visibility:B
    goto/16 :goto_f7

    .line 208
    .end local v34           #visibility:B
    :pswitch_361
    const/16 v34, 0x2

    .line 209
    .restart local v34       #visibility:B
    goto/16 :goto_f7

    .line 211
    .end local v34           #visibility:B
    :pswitch_365
    const/16 v34, 0x3

    .line 212
    .restart local v34       #visibility:B
    goto/16 :goto_f7

    .line 226
    .restart local v20       #localTransparency:I
    :pswitch_369
    const/16 v32, 0x0

    .line 227
    .restart local v32       #transparency:B
    goto/16 :goto_136

    .line 229
    .end local v32           #transparency:B
    :pswitch_36d
    const/16 v32, 0x1

    .line 230
    .restart local v32       #transparency:B
    goto/16 :goto_136

    .line 260
    .restart local v14       #eventId:J
    .restart local v33       #utc:Landroid/text/format/Time;
    :cond_371
    const/16 v36, 0x0

    move/from16 v4, v36

    goto/16 :goto_1dc

    .line 304
    .restart local v4       #allDay:Z
    .restart local v8       #dtendColumn:I
    .restart local v11       #dtstartColumn:I
    .restart local v12       #endTime:Ljava/lang/String;
    .restart local v17       #hasExtendedProperties:Ljava/lang/Integer;
    .restart local v18       #hasReminder:Ljava/lang/Integer;
    .restart local v23       #originalId:Ljava/lang/String;
    .restart local v24       #originalStartTime:J
    .restart local v26       #originalStartTimeIndex:I
    .restart local v28       #startTime:Ljava/lang/String;
    .restart local v35       #when:Lcom/google/wireless/gdata/calendar/data/When;
    :cond_377
    const/16 v36, 0x0

    move/from16 v22, v36

    goto/16 :goto_2db

    .line 330
    .restart local v5       #component:Landroid/pim/ICalendar$Component;
    :cond_37d
    const/16 v36, 0x0

    goto :goto_34c

    .line 180
    :pswitch_data_380
    .packed-switch 0x0
        :pswitch_355
        :pswitch_351
        :pswitch_34d
    .end packed-switch

    .line 200
    :pswitch_data_38a
    .packed-switch 0x0
        :pswitch_359
        :pswitch_35d
        :pswitch_361
        :pswitch_365
    .end packed-switch

    .line 224
    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_369
        :pswitch_36d
    .end packed-switch
.end method

.method protected deletedCursorToEntry(Landroid/content/SyncContext;Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .registers 7
    .parameter "context"
    .parameter "c"
    .parameter "entry"

    .prologue
    .line 514
    move-object v0, p3

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-object v1, v0

    .line 515
    .local v1, event:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    const-string v2, "_sync_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setId(Ljava/lang/String;)V

    .line 516
    const-string v2, "_sync_version"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setEditUri(Ljava/lang/String;)V

    .line 517
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->setStatus(B)V

    .line 518
    return-void
.end method

.method protected getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 9
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    const/4 v2, 0x0

    .line 146
    const-class v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    if-eq p2, v0, :cond_22

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_22
    sget-object v1, Landroid/provider/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .registers 9
    .parameter "cp"
    .parameter "entryClass"

    .prologue
    const/4 v2, 0x0

    .line 138
    const-class v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    if-eq p2, v0, :cond_22

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected entry class, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_22
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getFeedEntryClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 1237
    const-class v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    return-object v0
.end method

.method protected getFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "account"

    .prologue
    .line 1233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getFeedUrl() should not get called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
    .registers 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    return-object v0
.end method

.method public getServerDiffs(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .registers 26
    .parameter "context"
    .parameter "baseSyncData"
    .parameter "tempProvider"
    .parameter "extras"
    .parameter "baseSyncInfo"
    .parameter "syncResult"

    .prologue
    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1031
    .local v8, cr:Landroid/content/ContentResolver;
    sget v3, Lcom/android/providers/calendar/CalendarSyncAdapter;->mServerDiffs:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/providers/calendar/CalendarSyncAdapter;->mServerDiffs:I

    .line 1032
    if-eqz p4, :cond_39

    const-string v3, "feed"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    move/from16 v18, v3

    .line 1033
    .local v18, syncingSingleFeed:Z
    :goto_1e
    if-eqz v18, :cond_3d

    .line 1034
    const-string v3, "feed"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, feedUrl:Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 1035
    invoke-direct/range {v3 .. v9}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getServerDiffsForFeed(Landroid/content/SyncContext;Landroid/content/TempProviderSyncAdapter$SyncData;Landroid/content/SyncableContentProvider;Ljava/lang/String;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 1085
    .end local v7           #feedUrl:Ljava/lang/String;
    .end local v8           #cr:Landroid/content/ContentResolver;
    :goto_38
    return-void

    .line 1032
    .end local v18           #syncingSingleFeed:Z
    .restart local v8       #cr:Landroid/content/ContentResolver;
    :cond_39
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_1e

    .line 1041
    .restart local v18       #syncingSingleFeed:Z
    :cond_3d
    sget-object v9, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v11, "_sync_account=?"

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1045
    .local v14, cursor:Landroid/database/Cursor;
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 1047
    .local v17, syncExtras:Landroid/os/Bundle;
    const/4 v15, 0x1

    .line 1050
    .local v15, refreshCalendars:Z
    :cond_58
    :goto_58
    :try_start_58
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1051
    const/4 v3, 0x6

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9a

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1052
    .local v16, syncEvents:Z
    :goto_69
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1054
    .restart local v7       #feedUrl:Ljava/lang/String;
    if-eqz v16, :cond_58

    .line 1062
    if-eqz v15, :cond_9e

    .line 1063
    sget v3, Lcom/android/providers/calendar/CalendarSyncAdapter;->mRefresh:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/providers/calendar/CalendarSyncAdapter;->mRefresh:I

    .line 1064
    const-string v3, "Fetching list of calendars"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 1066
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1067
    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    .line 1068
    .local v12, accountSelectionArgs:[Ljava/lang/String;
    sget-object v9, Landroid/provider/Calendar$Calendars;->LIVE_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v11, "_sync_account=?"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1072
    const/4 v15, 0x0

    .line 1073
    goto :goto_58

    .line 1051
    .end local v7           #feedUrl:Ljava/lang/String;
    .end local v12           #accountSelectionArgs:[Ljava/lang/String;
    .end local v16           #syncEvents:Z
    :cond_9a
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_69

    .line 1077
    .restart local v7       #feedUrl:Ljava/lang/String;
    .restart local v16       #syncEvents:Z
    :cond_9e
    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->clear()V

    .line 1078
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1079
    const-string v3, "feed"

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    sget-object v3, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v8

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_ba
    .catchall {:try_start_58 .. :try_end_ba} :catchall_bb

    goto :goto_58

    .line 1083
    .end local v7           #feedUrl:Ljava/lang/String;
    .end local v16           #syncEvents:Z
    :catchall_bb
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_c0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_38
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .registers 5
    .parameter "sb"
    .parameter "result"

    .prologue
    .line 1274
    invoke-super {p0, p1, p2}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 1275
    sget v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mRefresh:I

    if-lez v0, :cond_12

    .line 1276
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Lcom/android/providers/calendar/CalendarSyncAdapter;->mRefresh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1278
    :cond_12
    sget v0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mServerDiffs:I

    if-lez v0, :cond_21

    .line 1279
    const-string v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Lcom/android/providers/calendar/CalendarSyncAdapter;->mServerDiffs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1281
    :cond_21
    return-void
.end method

.method protected handleAllDeletedUnavailable(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
    .registers 10
    .parameter "syncData"
    .parameter "feed"

    .prologue
    const/4 v6, 0x1

    .line 521
    iget-object v0, p1, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_sync_account=? AND url=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 525
    return v6
.end method

.method protected initTempProvider(Landroid/content/SyncableContentProvider;)V
    .registers 13
    .parameter "cp"

    .prologue
    .line 1156
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1157
    .local v8, map:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_sync_account=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getAccount()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1161
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1162
    .local v7, idIndex:I
    const-string v0, "url"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1163
    .local v10, urlIndex:I
    const-string v0, "timezone"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1164
    .local v9, timezoneIndex:I
    :goto_34
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1165
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 1166
    const-string v0, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1167
    const-string v0, "url"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v0, "timezone"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v8}, Landroid/content/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_34

    .line 1171
    :cond_62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1172
    return-void
.end method

.method protected newEntry()Lcom/google/wireless/gdata/data/Entry;
    .registers 2

    .prologue
    .line 133
    new-instance v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    invoke-direct {v0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;-><init>()V

    return-object v0
.end method

.method public onAccountsChanged([Ljava/lang/String;)V
    .registers 16
    .parameter "accountsArray"

    .prologue
    const-string v9, "_sync_account"

    const-string v9, "calendar"

    .line 1175
    const-string v9, "yes"

    const-string v10, "ro.config.sync"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1225
    :cond_12
    :goto_12
    return-void

    .line 1184
    :cond_13
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1185
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 1186
    .local v3, cursorA:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1188
    .local v4, cursorB:Landroid/database/Cursor;
    const/4 v9, 0x0

    :try_start_1e
    const-string v10, "selected=1"

    const-string v11, "_sync_account,url"

    invoke-static {v2, v9, v10, v11}, Landroid/provider/Calendar$Calendars;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1190
    const-string v9, "url"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1191
    .local v7, urlIndexA:I
    const-string v9, "_sync_account"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1192
    .local v0, accountIndexA:I
    sget-object v9, Lcom/android/providers/calendar/CalendarSyncAdapter;->FEEDS_KEY_COLUMNS:[Ljava/lang/String;

    const-string v10, "authority=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "calendar"

    aput-object v13, v11, v12

    const-string v12, "_sync_account, feed"

    invoke-static {v2, v9, v10, v11, v12}, Landroid/provider/SubscribedFeeds$Feeds;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 1195
    const-string v9, "feed"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1196
    .local v8, urlIndexB:I
    const-string v9, "_sync_account"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1198
    .local v1, accountIndexB:I
    new-instance v9, Landroid/database/CursorJoiner;

    sget-object v10, Lcom/android/providers/calendar/CalendarSyncAdapter;->CALENDAR_KEY_COLUMNS:[Ljava/lang/String;

    sget-object v11, Lcom/android/providers/calendar/CalendarSyncAdapter;->FEEDS_KEY_COLUMNS:[Ljava/lang/String;

    invoke-direct {v9, v3, v10, v4, v11}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/CursorJoiner$Result;

    .line 1199
    .local v6, joinerResult:Landroid/database/CursorJoiner$Result;
    sget-object v9, Lcom/android/providers/calendar/CalendarSyncAdapter$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v6}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_ac

    goto :goto_5d

    .line 1201
    :pswitch_75
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "calendar"

    const-string v12, "cl"

    invoke-static {v2, v9, v10, v11, v12}, Landroid/provider/SubscribedFeeds;->addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_84
    .catchall {:try_start_1e .. :try_end_84} :catchall_85

    goto :goto_5d

    .line 1222
    .end local v0           #accountIndexA:I
    .end local v1           #accountIndexB:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #joinerResult:Landroid/database/CursorJoiner$Result;
    .end local v7           #urlIndexA:I
    .end local v8           #urlIndexB:I
    :catchall_85
    move-exception v9

    if-eqz v3, :cond_8b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1223
    :cond_8b
    if-eqz v4, :cond_90

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v9

    .line 1209
    .restart local v0       #accountIndexA:I
    .restart local v1       #accountIndexB:I
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #joinerResult:Landroid/database/CursorJoiner$Result;
    .restart local v7       #urlIndexA:I
    .restart local v8       #urlIndexB:I
    :pswitch_91
    :try_start_91
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "calendar"

    invoke-static {v2, v9, v10, v11}, Landroid/provider/SubscribedFeeds;->deleteFeed(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_85

    goto :goto_5d

    .line 1222
    .end local v6           #joinerResult:Landroid/database/CursorJoiner$Result;
    :cond_9f
    if-eqz v3, :cond_a4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1223
    :cond_a4
    if-eqz v4, :cond_12

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12

    .line 1199
    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_75
        :pswitch_91
    .end packed-switch
.end method

.method public onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "forced"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 532
    sput v1, Lcom/android/providers/calendar/CalendarSyncAdapter;->mServerDiffs:I

    .line 533
    sput v1, Lcom/android/providers/calendar/CalendarSyncAdapter;->mRefresh:I

    .line 534
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->onSyncStarting(Landroid/content/SyncContext;Ljava/lang/String;ZLandroid/content/SyncResult;)V

    .line 535
    return-void
.end method

.method public updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;)V
    .registers 44
    .parameter "feed"
    .parameter "syncLocalId"
    .parameter "entry"
    .parameter "provider"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 814
    move-object/from16 v0, p5

    check-cast v0, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;

    move-object/from16 v31, v0

    .line 815
    .local v31, syncInfo:Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;
    move-object/from16 v0, p3

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventEntry;

    move-object v11, v0

    .line 817
    .local v11, event:Lcom/google/wireless/gdata/calendar/data/EventEntry;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v17, map:Landroid/content/ContentValues;
    if-eqz p1, :cond_29

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    move/from16 v34, v0

    if-eqz v34, :cond_29

    .line 822
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/EventsFeed;

    move-object v12, v0

    .line 823
    .local v12, eventsFeed:Lcom/google/wireless/gdata/calendar/data/EventsFeed;
    invoke-virtual {v12}, Lcom/google/wireless/gdata/calendar/data/EventsFeed;->getTimezone()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/providers/calendar/CalendarSyncAdapter$SyncInfo;->calendarTimezone:Ljava/lang/String;

    .line 826
    .end local v12           #eventsFeed:Lcom/google/wireless/gdata/calendar/data/EventsFeed;
    :cond_29
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v34

    if-eqz v34, :cond_45

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v11

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarSyncAdapter;->deletedEntryToContentValues(Ljava/lang/Long;Lcom/google/wireless/gdata/calendar/data/EventEntry;Landroid/content/ContentValues;)V

    .line 831
    sget-object v34, Landroid/provider/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1024
    :cond_44
    :goto_44
    return-void

    .line 835
    :cond_45
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarSyncAdapter;->entryToContentValues(Lcom/google/wireless/gdata/calendar/data/EventEntry;Ljava/lang/Long;Landroid/content/ContentValues;Ljava/lang/Object;)I

    move-result v10

    .line 837
    .local v10, entryState:I
    const/16 v34, 0x1

    move v0, v10

    move/from16 v1, v34

    if-ne v0, v1, :cond_65

    .line 842
    sget-object v34, Landroid/provider/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_44

    .line 843
    :cond_65
    if-nez v10, :cond_308

    .line 847
    sget-object v34, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v27

    .line 848
    .local v27, result:Landroid/net/Uri;
    invoke-static/range {v27 .. v27}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    .line 850
    .local v28, rowId:J
    const-string v34, "hasAlarm"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 851
    .local v15, hasAlarm:Ljava/lang/Integer;
    if-eqz v15, :cond_16f

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_16f

    .line 853
    invoke-virtual {v11}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getReminders()Ljava/util/Vector;

    move-result-object v5

    .line 854
    .local v5, alarms:Ljava/util/Vector;
    if-nez v5, :cond_a4

    .line 855
    const-string v34, "Sync"

    const-string v35, "Have an alarm but do not have any reminders -- should not happen."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v34, Ljava/lang/IllegalStateException;

    const-string v35, "Have an alarm but do not have any reminders"

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 859
    :cond_a4
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v26

    .line 860
    .local v26, reminders:Ljava/util/Enumeration;
    :cond_a8
    invoke-interface/range {v26 .. v26}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v34

    if-eqz v34, :cond_16f

    .line 861
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 862
    .local v25, reminderValues:Landroid/content/ContentValues;
    const-string v34, "event_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 864
    invoke-interface/range {v26 .. v26}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/wireless/gdata/calendar/data/Reminder;

    .line 865
    .local v24, reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata/calendar/data/Reminder;->getMethod()B

    move-result v18

    .line 866
    .local v18, method:B
    packed-switch v18, :pswitch_data_33c

    .line 886
    const-string v34, "Sync"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unknown reminder method: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " should not happen!"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_f1
    invoke-virtual/range {v24 .. v24}, Lcom/google/wireless/gdata/calendar/data/Reminder;->getMinutes()I

    move-result v19

    .line 891
    .local v19, minutes:I
    const-string v34, "minutes"

    const/16 v35, -0x1

    move/from16 v0, v19

    move/from16 v1, v35

    if-ne v0, v1, :cond_16c

    const/16 v35, -0x1

    :goto_101
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    sget-object v34, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v34

    if-nez v34, :cond_a8

    .line 898
    new-instance v34, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v35, "Unable to insert reminders."

    invoke-direct/range {v34 .. v35}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 868
    .end local v19           #minutes:I
    :pswitch_124
    const-string v34, "method"

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f1

    .line 872
    :pswitch_136
    const-string v34, "method"

    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f1

    .line 876
    :pswitch_148
    const-string v34, "method"

    const/16 v35, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f1

    .line 880
    :pswitch_15a
    const-string v34, "method"

    const/16 v35, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_f1

    .restart local v19       #minutes:I
    :cond_16c
    move/from16 v35, v19

    .line 891
    goto :goto_101

    .line 904
    .end local v5           #alarms:Ljava/util/Vector;
    .end local v18           #method:B
    .end local v19           #minutes:I
    .end local v24           #reminder:Lcom/google/wireless/gdata/calendar/data/Reminder;
    .end local v25           #reminderValues:Landroid/content/ContentValues;
    .end local v26           #reminders:Ljava/util/Enumeration;
    :cond_16f
    invoke-virtual {v11}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v6

    .line 905
    .local v6, attendees:Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 906
    .local v7, attendeesEnum:Ljava/util/Enumeration;
    :cond_177
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v34

    if-eqz v34, :cond_28c

    .line 907
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 908
    .local v33, who:Lcom/google/wireless/gdata/calendar/data/Who;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 909
    .local v8, attendeesValues:Landroid/content/ContentValues;
    const-string v34, "event_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 910
    const-string v34, "attendeeName"

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v34, "attendeeEmail"

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v34

    packed-switch v34, :pswitch_data_348

    .line 931
    const-string v34, "Sync"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unknown attendee status "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/16 v30, 0x0

    .line 934
    .local v30, status:B
    :goto_1d7
    const-string v34, "attendeeStatus"

    invoke-static/range {v30 .. v30}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 936
    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v34

    packed-switch v34, :pswitch_data_356

    .line 953
    const-string v34, "Sync"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unknown attendee relationship "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/16 v23, 0x0

    .line 957
    .local v23, rel:B
    :goto_20a
    const-string v34, "attendeeRelationship"

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 960
    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v34

    packed-switch v34, :pswitch_data_364

    .line 971
    const-string v34, "Sync"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unknown attendee type "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v32, 0x0

    .line 974
    .local v32, type:B
    :goto_23d
    const-string v34, "attendeeType"

    invoke-static/range {v32 .. v32}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v35

    move-object v0, v8

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 975
    sget-object v34, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v34

    if-nez v34, :cond_177

    .line 976
    new-instance v34, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v35, "Unable to insert attendees."

    invoke-direct/range {v34 .. v35}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 916
    .end local v23           #rel:B
    .end local v30           #status:B
    .end local v32           #type:B
    :pswitch_260
    const/16 v30, 0x0

    .line 917
    .restart local v30       #status:B
    goto/16 :goto_1d7

    .line 919
    .end local v30           #status:B
    :pswitch_264
    const/16 v30, 0x3

    .line 920
    .restart local v30       #status:B
    goto/16 :goto_1d7

    .line 922
    .end local v30           #status:B
    :pswitch_268
    const/16 v30, 0x1

    .line 923
    .restart local v30       #status:B
    goto/16 :goto_1d7

    .line 925
    .end local v30           #status:B
    :pswitch_26c
    const/16 v30, 0x4

    .line 926
    .restart local v30       #status:B
    goto/16 :goto_1d7

    .line 928
    .end local v30           #status:B
    :pswitch_270
    const/16 v30, 0x2

    .line 929
    .restart local v30       #status:B
    goto/16 :goto_1d7

    .line 938
    :pswitch_274
    const/16 v23, 0x0

    .line 939
    .restart local v23       #rel:B
    goto :goto_20a

    .line 941
    .end local v23           #rel:B
    :pswitch_277
    const/16 v23, 0x2

    .line 942
    .restart local v23       #rel:B
    goto :goto_20a

    .line 944
    .end local v23           #rel:B
    :pswitch_27a
    const/16 v23, 0x1

    .line 945
    .restart local v23       #rel:B
    goto :goto_20a

    .line 947
    .end local v23           #rel:B
    :pswitch_27d
    const/16 v23, 0x3

    .line 948
    .restart local v23       #rel:B
    goto :goto_20a

    .line 950
    .end local v23           #rel:B
    :pswitch_280
    const/16 v23, 0x4

    .line 951
    .restart local v23       #rel:B
    goto :goto_20a

    .line 962
    :pswitch_283
    const/16 v32, 0x0

    .line 963
    .restart local v32       #type:B
    goto :goto_23d

    .line 965
    .end local v32           #type:B
    :pswitch_286
    const/16 v32, 0x1

    .line 966
    .restart local v32       #type:B
    goto :goto_23d

    .line 968
    .end local v32           #type:B
    :pswitch_289
    const/16 v32, 0x2

    .line 969
    .restart local v32       #type:B
    goto :goto_23d

    .line 981
    .end local v8           #attendeesValues:Landroid/content/ContentValues;
    .end local v23           #rel:B
    .end local v30           #status:B
    .end local v32           #type:B
    .end local v33           #who:Lcom/google/wireless/gdata/calendar/data/Who;
    :cond_28c
    const-string v34, "hasExtendedProperties"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 982
    .local v16, hasExtendedProperties:Ljava/lang/Integer;
    if-eqz v16, :cond_44

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v34

    if-eqz v34, :cond_44

    .line 985
    invoke-virtual {v11}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getExtendedProperties()Ljava/util/Hashtable;

    move-result-object v13

    .line 986
    .local v13, extendedProperties:Ljava/util/Hashtable;
    if-nez v13, :cond_2b3

    .line 987
    const-string v34, "Sync"

    const-string v35, "Have extendedProperties but do not have any properties-- should not happen."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v34, Ljava/lang/IllegalStateException;

    const-string v35, "Have extendedProperties but do not have any properties"

    invoke-direct/range {v34 .. v35}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 992
    :cond_2b3
    invoke-virtual {v13}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v21

    .line 993
    .local v21, propertyNames:Ljava/util/Enumeration;
    :cond_2b7
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v34

    if-eqz v34, :cond_44

    .line 994
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 995
    .local v20, propertyName:Ljava/lang/String;
    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 996
    .local v22, propertyValue:Ljava/lang/String;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 997
    .local v14, extendedPropertyValues:Landroid/content/ContentValues;
    const-string v34, "event_id"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object v0, v14

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 998
    const-string v34, "name"

    move-object v0, v14

    move-object/from16 v1, v34

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v34, "value"

    move-object v0, v14

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    sget-object v34, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v34

    if-nez v34, :cond_2b7

    .line 1004
    new-instance v34, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v35, "Unable to insert extended properties."

    invoke-direct/range {v34 .. v35}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 1014
    .end local v6           #attendees:Ljava/util/Vector;
    .end local v7           #attendeesEnum:Ljava/util/Enumeration;
    .end local v13           #extendedProperties:Ljava/util/Hashtable;
    .end local v14           #extendedPropertyValues:Landroid/content/ContentValues;
    .end local v15           #hasAlarm:Ljava/lang/Integer;
    .end local v16           #hasExtendedProperties:Ljava/lang/Integer;
    .end local v20           #propertyName:Ljava/lang/String;
    .end local v21           #propertyNames:Ljava/util/Enumeration;
    .end local v22           #propertyValue:Ljava/lang/String;
    .end local v27           #result:Landroid/net/Uri;
    .end local v28           #rowId:J
    :cond_308
    const-string v34, "dtstart"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1015
    .local v9, dtstart:Ljava/lang/Long;
    if-eqz v9, :cond_31e

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    const-wide/16 v36, -0x1

    cmp-long v34, v34, v36

    if-eqz v34, :cond_44

    .line 1022
    :cond_31e
    new-instance v34, Lcom/google/wireless/gdata/parser/ParseException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Got invalid entry from server: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 866
    nop

    :pswitch_data_33c
    .packed-switch 0x0
        :pswitch_124
        :pswitch_148
        :pswitch_15a
        :pswitch_136
    .end packed-switch

    .line 914
    :pswitch_data_348
    .packed-switch 0x0
        :pswitch_260
        :pswitch_268
        :pswitch_270
        :pswitch_264
        :pswitch_26c
    .end packed-switch

    .line 936
    :pswitch_data_356
    .packed-switch 0x0
        :pswitch_274
        :pswitch_27a
        :pswitch_277
        :pswitch_27d
        :pswitch_280
    .end packed-switch

    .line 960
    :pswitch_data_364
    .packed-switch 0x0
        :pswitch_283
        :pswitch_289
        :pswitch_286
    .end packed-switch
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;)V
    .registers 7
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    const-string v4, "1970-01-01"

    .line 1242
    invoke-virtual {p1}, Lcom/google/wireless/gdata/client/QueryParams;->getUpdatedMin()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_34

    .line 1247
    new-instance v0, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v0, lastMonth:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 1249
    iget v2, v0, Landroid/text/format/Time;->month:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 1250
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1251
    const-string v2, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, startMin:Ljava/lang/String;
    const-string v2, "start-min"

    invoke-virtual {p1, v2, v1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const-string v2, "recurrence-expansion-start"

    const-string v3, "1970-01-01"

    invoke-virtual {p1, v2, v4}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string v2, "recurrence-expansion-end"

    const-string v3, "1970-01-01"

    invoke-virtual {p1, v2, v4}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .end local v0           #lastMonth:Landroid/text/format/Time;
    .end local v1           #startMin:Ljava/lang/String;
    :cond_34
    const-string v2, "orderby"

    const-string v3, "lastmodified"

    invoke-virtual {p1, v2, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    const-string v2, "sortorder"

    const-string v3, "ascending"

    invoke-virtual {p1, v2, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    return-void
.end method
