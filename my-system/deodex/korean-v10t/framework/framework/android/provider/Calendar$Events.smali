.class public final Landroid/provider/Calendar$Events;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Landroid/provider/Calendar$EventsColumns;
.implements Landroid/provider/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field private static final ATTENDEES_COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field private static final FETCH_ENTRY_COLUMNS:[Ljava/lang/String;

.field private static sCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v2

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Calendar$Events;->FETCH_ENTRY_COLUMNS:[Ljava/lang/String;

    .line 462
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v2

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "attendeeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Calendar$Events;->ATTENDEES_COLUMNS:[Ljava/lang/String;

    .line 469
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Calendar$Events;->sCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    .line 652
    const-string v0, "content://calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 655
    const-string v0, "content://calendar/deleted_events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final extractAttendeesIntoArrayList(Lcom/google/wireless/gdata/calendar/data/EventEntry;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/gdata/calendar/data/EventEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const-string v5, "Calendar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Lcom/google/wireless/gdata/calendar/data/EventEntry;->getAttendees()Ljava/util/Vector;

    move-result-object v1

    .line 635
    .local v1, attendees:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/google/wireless/gdata/calendar/data/Who;>;"
    if-nez v1, :cond_67

    const/4 v5, 0x0

    move v3, v5

    .line 637
    .local v3, numAttendees:I
    :goto_24
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    if-ge v2, v3, :cond_6d

    .line 638
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/Who;

    .line 639
    .local v0, attendee:Lcom/google/wireless/gdata/calendar/data/Who;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v4, row:Ljava/util/ArrayList;
    invoke-virtual {v0}, Lcom/google/wireless/gdata/calendar/data/Who;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {v0}, Lcom/google/wireless/gdata/calendar/data/Who;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {v0}, Lcom/google/wireless/gdata/calendar/data/Who;->getRelationship()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {v0}, Lcom/google/wireless/gdata/calendar/data/Who;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-virtual {v0}, Lcom/google/wireless/gdata/calendar/data/Who;->getStatus()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 635
    .end local v0           #attendee:Lcom/google/wireless/gdata/calendar/data/Who;
    .end local v2           #i:I
    .end local v3           #numAttendees:I
    .end local v4           #row:Ljava/util/ArrayList;
    :cond_67
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    move v3, v5

    goto :goto_24

    .line 647
    .restart local v2       #i:I
    .restart local v3       #numAttendees:I
    :cond_6d
    return-void
.end method

.method private static extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 483
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 485
    .local v0, property:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_b

    .line 486
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 488
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static declared-synchronized getCalendarClient(Landroid/content/ContentResolver;)Lcom/google/wireless/gdata/calendar/client/CalendarClient;
    .registers 6
    .parameter "cr"

    .prologue
    .line 617
    const-class v0, Landroid/provider/Calendar$Events;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/provider/Calendar$Events;->sCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    if-nez v1, :cond_1d

    .line 618
    new-instance v1, Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    new-instance v2, Lcom/google/android/gdata/client/AndroidGDataClient;

    invoke-direct {v2, p0}, Lcom/google/android/gdata/client/AndroidGDataClient;-><init>(Landroid/content/ContentResolver;)V

    new-instance v3, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;

    new-instance v4, Lcom/google/android/gdata/client/AndroidXmlParserFactory;

    invoke-direct {v4}, Lcom/google/android/gdata/client/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v1, v2, v3}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    sput-object v1, Landroid/provider/Calendar$Events;->sCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    .line 622
    :cond_1d
    sget-object v1, Landroid/provider/Calendar$Events;->sCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit v0

    return-object v1

    .line 617
    :catchall_21
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final insertVEvent(Landroid/content/ContentResolver;Landroid/pim/ICalendar$Component;JILandroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter "cr"
    .parameter "event"
    .parameter "calendarId"
    .parameter "status"
    .parameter "values"

    .prologue
    .line 498
    invoke-virtual {p5}, Landroid/content/ContentValues;->clear()V

    .line 501
    const-string v0, "SUMMARY"

    invoke-static {p1, v0}, Landroid/provider/Calendar$Events;->extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 504
    const-string p0, "Calendar"

    .end local p0
    const-string p1, "No SUMMARY provided for event.  Cannot import."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 p0, 0x0

    .line 605
    .end local v0           #title:Ljava/lang/String;
    .end local p2
    .end local p4
    :goto_17
    return-object p0

    .line 509
    .restart local v0       #title:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_18
    const-string v1, "title"

    invoke-virtual {p5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "eventStatus"

    .end local v0           #title:Ljava/lang/String;
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .end local p4
    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    const-string p4, "DESCRIPTION"

    invoke-static {p1, p4}, Landroid/provider/Calendar$Events;->extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 516
    .local p4, description:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 517
    const-string v0, "description"

    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_37
    const-string p4, "LOCATION"

    .end local p4           #description:Ljava/lang/String;
    invoke-static {p1, p4}, Landroid/provider/Calendar$Events;->extractValue(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 522
    .local p4, where:Ljava/lang/String;
    invoke-static {p4}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 523
    const-string v0, "eventLocation"

    invoke-virtual {p5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_48
    const-string p4, "calendar_id"

    .end local p4           #where:Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {p5, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    const/4 p2, 0x0

    .line 534
    .local p2, timesSet:Z
    new-instance v2, Landroid/text/format/Time;

    const-string p2, "UTC"

    .end local p2           #timesSet:Z
    invoke-direct {v2, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 535
    .local v2, time:Landroid/text/format/Time;
    const/4 p3, 0x0

    .line 536
    .local p3, dtstart:Ljava/lang/String;
    const/4 p2, 0x0

    .line 537
    .local p2, dtend:Ljava/lang/String;
    const/4 v1, 0x0

    .line 538
    .local v1, duration:Ljava/lang/String;
    const-string p4, "DTSTART"

    invoke-virtual {p1, p4}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 540
    .local v0, dtstartProp:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_14e

    .line 541
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p4

    .line 542
    .end local p3           #dtstart:Ljava/lang/String;
    .local p4, dtstart:Ljava/lang/String;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a5

    .line 543
    const-string p3, "TZID"

    invoke-virtual {v0, p3}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object p3

    .line 545
    .local p3, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-eqz p3, :cond_7f

    iget-object v0, p3, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    .end local v0           #dtstartProp:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_7f

    .line 546
    iget-object p3, p3, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    .end local p3           #tzidParam:Landroid/pim/ICalendar$Parameter;
    invoke-virtual {v2, p3}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 549
    :cond_7f
    :try_start_7f
    invoke-virtual {v2, p4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_e6

    .line 556
    iget-boolean p3, v2, Landroid/text/format/Time;->allDay:Z

    if-eqz p3, :cond_90

    .line 557
    const-string p3, "allDay"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    :cond_90
    const-string p3, "dtstart"

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    const-string p3, "eventTimezone"

    iget-object v0, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_a5
    const-string p3, "DTEND"

    invoke-virtual {p1, p3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object p3

    .line 564
    .local p3, dtendProp:Landroid/pim/ICalendar$Property;
    if-eqz p3, :cond_11e

    .line 565
    invoke-virtual {p3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 566
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3           #dtendProp:Landroid/pim/ICalendar$Property;
    if-nez p3, :cond_14a

    .line 570
    :try_start_b7
    invoke-virtual {v2, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_102

    .line 577
    const-string p3, "dtend"

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .end local v2           #time:Landroid/text/format/Time;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object p3, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .local p3, dtstart:Ljava/lang/String;
    move-object p4, v1

    .line 592
    .end local v1           #duration:Ljava/lang/String;
    .local p4, duration:Ljava/lang/String;
    :goto_ca
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    .end local p3           #dtstart:Ljava/lang/String;
    if-nez p3, :cond_dc

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    .end local p2           #dtend:Ljava/lang/String;
    if-eqz p2, :cond_139

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_139

    .line 595
    :cond_dc
    const-string p0, "Calendar"

    .end local p0
    const-string p1, "No DTSTART or DTEND/DURATION defined."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 p0, 0x0

    goto/16 :goto_17

    .line 550
    .restart local v1       #duration:Ljava/lang/String;
    .restart local v2       #time:Landroid/text/format/Time;
    .restart local p0
    .restart local p1
    .restart local p2       #dtend:Ljava/lang/String;
    .local p4, dtstart:Ljava/lang/String;
    :catch_e6
    move-exception p0

    .line 552
    .local p0, e:Ljava/lang/Exception;
    const-string p1, "Calendar"

    .end local p1
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #dtend:Ljava/lang/String;
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot parse dtstart "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/4 p0, 0x0

    goto/16 :goto_17

    .line 571
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2       #dtend:Ljava/lang/String;
    :catch_102
    move-exception p0

    .line 573
    .local p0, e:Ljava/lang/Exception;
    const-string p1, "Calendar"

    .end local p1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot parse dtend "

    .end local p4           #dtstart:Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #dtend:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    const/4 p0, 0x0

    goto/16 :goto_17

    .line 581
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1
    .restart local p2       #dtend:Ljava/lang/String;
    .local p3, dtendProp:Landroid/pim/ICalendar$Property;
    .restart local p4       #dtstart:Ljava/lang/String;
    :cond_11e
    const-string p3, "DURATION"

    .end local p3           #dtendProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p1, p3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object p3

    .line 583
    .local p3, durationProp:Landroid/pim/ICalendar$Property;
    if-eqz p3, :cond_14a

    .line 584
    invoke-virtual {p3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p3

    .line 585
    .end local v1           #duration:Ljava/lang/String;
    .local p3, duration:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_135

    .line 587
    const-string v0, "duration"

    invoke-virtual {p5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    move-object v5, p3

    .end local p3           #duration:Ljava/lang/String;
    .local v5, duration:Ljava/lang/String;
    move-object p3, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .local p3, dtstart:Ljava/lang/String;
    move-object p4, v5

    .end local v5           #duration:Ljava/lang/String;
    .local p4, duration:Ljava/lang/String;
    goto :goto_ca

    .line 601
    .end local v2           #time:Landroid/text/format/Time;
    .end local p2           #dtend:Ljava/lang/String;
    .end local p3           #dtstart:Ljava/lang/String;
    :cond_139
    invoke-static {p1, p5}, Landroid/pim/RecurrenceSet;->populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z

    move-result p1

    .end local p1
    if-nez p1, :cond_142

    .line 602
    const/4 p0, 0x0

    goto/16 :goto_17

    .line 605
    :cond_142
    sget-object p1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    goto/16 :goto_17

    .restart local v1       #duration:Ljava/lang/String;
    .restart local v2       #time:Landroid/text/format/Time;
    .restart local p1
    .restart local p2       #dtend:Ljava/lang/String;
    .local p4, dtstart:Ljava/lang/String;
    :cond_14a
    move-object p3, p4

    .end local p4           #dtstart:Ljava/lang/String;
    .restart local p3       #dtstart:Ljava/lang/String;
    move-object p4, v1

    .end local v1           #duration:Ljava/lang/String;
    .local p4, duration:Ljava/lang/String;
    goto/16 :goto_ca

    .end local p4           #duration:Ljava/lang/String;
    .restart local v0       #dtstartProp:Landroid/pim/ICalendar$Property;
    .restart local v1       #duration:Ljava/lang/String;
    :cond_14e
    move-object p4, v1

    .end local v1           #duration:Ljava/lang/String;
    .restart local p4       #duration:Ljava/lang/String;
    goto/16 :goto_ca
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 472
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 477
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_10

    const-string v0, ""

    move-object v5, v0

    :goto_8
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_10
    move-object v5, p3

    goto :goto_8
.end method
