.class public Lcom/android/providers/calendar/CalendarProvider;
.super Landroid/content/AbstractSyncableContentProvider;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarProvider$EventMerger;,
        Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;,
        Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;,
        Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;,
        Lcom/android/providers/calendar/CalendarProvider$InstancesList;,
        Lcom/android/providers/calendar/CalendarProvider$InstancesRange;,
        Lcom/android/providers/calendar/CalendarProvider$TimeRange;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES:I = 0x7

.field private static final ATTENDEES_ID:I = 0x8

.field private static final BIT_MASKS:[I = null

.field private static final BUSYBITS:I = 0x10

.field private static final BUSYBIT_INDEX_ALL_DAY_COUNT:I = 0x2

.field private static final BUSYBIT_INDEX_BUSYBITS:I = 0x1

.field private static final BUSYBIT_INDEX_DAY:I = 0x0

.field private static final BUSYBIT_INTERVAL:I = 0x3c

.field private static final CALENDARS:I = 0x5

.field private static final CALENDARS_ID:I = 0x6

.field private static final CALENDARS_INDEX_ID:I = 0x0

.field private static final CALENDAR_ALERTS:I = 0xd

.field private static final CALENDAR_ALERTS_BY_INSTANCE:I = 0xf

.field private static final CALENDAR_ALERTS_ID:I = 0xe

.field private static final CALENDAR_ID_SELECTION:Ljava/lang/String; = "calendar_id=?"

.field private static final CLEAR_OLD_ALARM_THRESHOLD:J = 0x247a6100L

.field private static final DATABASE_NAME:Ljava/lang/String; = "calendar.db"

.field private static final DATABASE_VERSION:I = 0x37

.field private static final DELETED_EVENTS:I = 0x4

.field private static final DESIRED_PROJECTION:Ljava/lang/String; = "/full-selfattendance"

.field private static final EVENTS:I = 0x1

.field private static final EVENTS_CALENDAR_ID_INDEX:I = 0x3

.field private static final EVENTS_ID:I = 0x2

.field private static final EVENTS_ORIGINAL_EVENT_INDEX:I = 0x6

.field private static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field private static final EVENTS_RDATE_INDEX:I = 0x5

.field private static final EVENTS_RRULE_INDEX:I = 0x4

.field private static final EVENTS_SYNC_ACCOUNT_INDEX:I = 0x2

.field private static final EVENTS_SYNC_ID_INDEX:I = 0x0

.field private static final EVENTS_SYNC_VERSION_INDEX:I = 0x1

.field private static final EXPAND_COLUMNS:[Ljava/lang/String; = null

.field private static final EXPECTED_PROJECTION:Ljava/lang/String; = "/full"

.field private static final EXTENDED_PROPERTIES:I = 0xb

.field private static final EXTENDED_PROPERTIES_ID:I = 0xc

.field private static final FEEDS_SUBSTRING:Ljava/lang/String; = "/feeds/"

.field private static final INSTANCES:I = 0x3

.field private static final INSTANCES_INDEX_ALL_DAY:I = 0x4

.field private static final INSTANCES_INDEX_END_DAY:I = 0x1

.field private static final INSTANCES_INDEX_END_MINUTE:I = 0x3

.field private static final INSTANCES_INDEX_START_DAY:I = 0x0

.field private static final INSTANCES_INDEX_START_MINUTE:I = 0x2

.field private static final MAX_ASSUMED_DURATION:I = 0x240c8400

.field private static final MINIMUM_EXPANSION_SPAN:J = 0x13f4a4800L

.field private static final MULTIPLE_ATTENDEES_PER_EVENT:Z = false

.field private static final PROFILE:Z = false

.field private static final REMINDERS:I = 0x9

.field private static final REMINDERS_ID:I = 0xa

.field private static final SCHEDULE_ALARM_SLACK:J = 0x6ddd00L

.field private static final TAG:Ljava/lang/String; = "CalendarProvider"

.field private static final sAttendeesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAttendeesTable:Ljava/lang/String;

.field private static final sBusyBitProjection:[Ljava/lang/String;

.field private static final sBusyBitsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarAlertsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalendarAlertsTable:Ljava/lang/String;

.field private static final sCalendarsIdProjection:[Ljava/lang/String;

.field private static sDeletedEventsTable:Ljava/lang/String;

.field private static sDeletedEventsURL:Landroid/net/Uri;

.field private static final sEventsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEventsTable:Ljava/lang/String;

.field private static sEventsURL:Landroid/net/Uri;

.field private static sExtendedPropertiesTable:Ljava/lang/String;

.field private static final sInstancesProjection:[Ljava/lang/String;

.field private static final sInstancesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemindersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRemindersTable:Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAlarmLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

.field private mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

.field private mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mDeletedEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMetaData:Lcom/android/providers/calendar/MetaData;

.field private mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mSyncAdapter:Lcom/android/providers/calendar/CalendarSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const-string v6, "event_id"

    const-string v5, "_id"

    const-string v3, "calendar"

    .line 96
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v7

    const-string v1, "_sync_version"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 138
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_422

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->BIT_MASKS:[I

    .line 253
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v7

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarsIdProjection:[Ljava/lang/String;

    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "startDay"

    aput-object v1, v0, v7

    const-string v1, "endDay"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "allDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjection:[Ljava/lang/String;

    .line 269
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "day"

    aput-object v1, v0, v7

    const-string v1, "busyBits"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "allDayCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitProjection:[Ljava/lang/String;

    .line 1626
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v7

    const-string v1, "_sync_id"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->EXPAND_COLUMNS:[Ljava/lang/String;

    .line 3824
    const-string v0, "Events"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsTable:Ljava/lang/String;

    .line 3825
    const-string v0, "content://calendar/events/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsURL:Landroid/net/Uri;

    .line 3827
    const-string v0, "DeletedEvents"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sDeletedEventsTable:Ljava/lang/String;

    .line 3828
    const-string v0, "content://calendar/deleted_events/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sDeletedEventsURL:Landroid/net/Uri;

    .line 3830
    const-string v0, "Attendees"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesTable:Ljava/lang/String;

    .line 3831
    const-string v0, "Reminders"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersTable:Ljava/lang/String;

    .line 3832
    const-string v0, "CalendarAlerts"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsTable:Ljava/lang/String;

    .line 3833
    const-string v0, "ExtendedProperties"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sExtendedPropertiesTable:Ljava/lang/String;

    .line 4119
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 4128
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "instances/when/*/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4129
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "events"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4130
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "events/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4131
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "calendars"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4132
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "calendars/#"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4133
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "deleted_events"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4134
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "attendees"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4135
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "attendees/#"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4136
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "reminders"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4137
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "reminders/#"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4138
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "extendedproperties"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4139
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "extendedproperties/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4140
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "calendar_alerts"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4141
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "calendar_alerts/#"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4142
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "calendar_alerts/by_instance"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4143
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "calendar"

    const-string v1, "busybits/when/*/*"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    .line 4148
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4149
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4152
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4156
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4157
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4158
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4159
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4161
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4163
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4164
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4165
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4167
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4168
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4169
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4172
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4174
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "access_level"

    const-string v2, "access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4176
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selected"

    const-string v2, "selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4177
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4178
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "timezone"

    const-string v2, "timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4181
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    .line 4182
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    .line 4183
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersProjectionMap:Ljava/util/HashMap;

    .line 4184
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    .line 4186
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Events._id AS _id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4187
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "Events._sync_id AS _sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4188
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "Events._sync_version AS _sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4189
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_time"

    const-string v2, "Events._sync_time AS _sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4190
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "Events._sync_local_id AS _sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4191
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "Events._sync_dirty AS _sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4192
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account"

    const-string v2, "Events._sync_account AS _sync_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4195
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4196
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4197
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "Instances.event_id AS event_id"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4198
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Instances._id AS _id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4199
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startDay"

    const-string v2, "startDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4200
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endDay"

    const-string v2, "endDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4201
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startMinute"

    const-string v2, "startMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4202
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endMinute"

    const-string v2, "endMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitsProjectionMap:Ljava/util/HashMap;

    .line 4206
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitsProjectionMap:Ljava/util/HashMap;

    const-string v1, "day"

    const-string v2, "day"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4207
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitsProjectionMap:Ljava/util/HashMap;

    const-string v1, "busyBits"

    const-string v2, "busyBits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4208
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDayCount"

    const-string v2, "allDayCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4211
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4212
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Attendees._id AS _id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4213
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4214
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4215
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    const-string v2, "attendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4216
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    const-string v2, "attendeeRelationship"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4217
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeType"

    const-string v2, "attendeeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4220
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4221
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Reminders._id AS _id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4222
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4223
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "method"

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4226
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4227
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "CalendarAlerts._id AS _id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4228
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4229
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4230
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alarmTime"

    const-string v2, "alarmTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4231
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4232
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4233
    return-void

    .line 138
    :array_422
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x1t 0x0t 0x0t
        0xfft 0x3t 0x0t 0x0t
        0xfft 0x7t 0x0t 0x0t
        0xfft 0xft 0x0t 0x0t
        0xfft 0x1ft 0x0t 0x0t
        0xfft 0x3ft 0x0t 0x0t
        0xfft 0x7ft 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0xfft 0x1t 0x0t
        0xfft 0xfft 0x3t 0x0t
        0xfft 0xfft 0x7t 0x0t
        0xfft 0xfft 0xft 0x0t
        0xfft 0xfft 0x1ft 0x0t
        0xfft 0xfft 0x3ft 0x0t
        0xfft 0xfft 0x7ft 0x0t
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0xfft 0x1t
        0xfft 0xfft 0xfft 0x3t
        0xfft 0xfft 0xfft 0x7t
        0xfft 0xfft 0xfft 0xft
        0xfft 0xfft 0xfft 0x1ft
        0xfft 0xfft 0xfft 0x3ft
        0xfft 0xfft 0xfft 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 307
    const-string v0, "calendar.db"

    const/16 v1, 0x37

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Landroid/content/AbstractSyncableContentProvider;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mAlarmLock:Ljava/lang/Object;

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    .line 281
    invoke-static {}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    .line 286
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider$1;-><init>(Lcom/android/providers/calendar/CalendarProvider;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarProvider;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->runScheduleNextAlarm(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/calendar/CalendarProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider;->updateTimezoneDependentFields()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/providers/calendar/CalendarProvider;Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 92
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/calendar/CalendarProvider;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider;->insertBusyBitsLocked(JLandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider;->updateBusyBitsLocked(JLandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sRemindersTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sExtendedPropertiesTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/providers/calendar/CalendarProvider;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider;->deleteBusyBitsLocked(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/calendar/CalendarProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider;->doUpdateTimezoneDependentFields()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sEventsURL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sDeletedEventsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sDeletedEventsURL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/calendar/CalendarProvider;)Landroid/database/DatabaseUtils$InsertHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/calendar/CalendarProvider;JLandroid/content/ContentValues;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    return-void
.end method

.method private acquireBusyBitRange(II)V
    .registers 5
    .parameter "startDay"
    .parameter "endDay"

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1410
    :try_start_5
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider;->acquireBusyBitRangeLocked(II)V

    .line 1411
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 1413
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1415
    return-void

    .line 1413
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private acquireBusyBitRangeLocked(II)V
    .registers 41
    .parameter "firstDay"
    .parameter "lastDay"

    .prologue
    .line 1502
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_e

    .line 1503
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "firstDay must not be greater than lastDay"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1505
    :cond_e
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    .line 1506
    .local v34, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v33

    .line 1507
    .local v33, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 1508
    .local v31, dbTimezone:Ljava/lang/String;
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move/from16 v27, v0

    .line 1509
    .local v27, minBusyBit:I
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move/from16 v28, v0

    .line 1510
    .local v28, maxBusyBit:I
    if-eqz v31, :cond_3d

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    :cond_3d
    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1511
    .local v37, timezoneChanged:Z
    :goto_40
    move/from16 v0, p1

    move/from16 v1, v27

    if-lt v0, v1, :cond_53

    move/from16 v0, p2

    move/from16 v1, v28

    if-gt v0, v1, :cond_53

    if-nez v37, :cond_53

    .line 1624
    :goto_4e
    return-void

    .line 1510
    .end local v37           #timezoneChanged:Z
    :cond_4f
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_40

    .line 1521
    .restart local v37       #timezoneChanged:Z
    :cond_53
    if-eqz v28, :cond_5d

    .line 1522
    move/from16 v0, p1

    move/from16 v1, v28

    if-le v0, v1, :cond_118

    .line 1523
    move/from16 p1, v28

    .line 1534
    :cond_5d
    :goto_5d
    sub-int v5, p2, p1

    add-int/lit8 v35, v5, 0x1

    .line 1535
    .local v35, numDays:I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1536
    .local v19, busybits:[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1540
    .local v20, allDayCounts:[I
    new-instance v36, Landroid/text/format/Time;

    invoke-direct/range {v36 .. v36}, Landroid/text/format/Time;-><init>()V

    .line 1541
    .local v36, time:Landroid/text/format/Time;
    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v6

    .line 1545
    .local v6, begin:J
    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, v36

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v8

    .line 1549
    .local v8, end:J
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarProvider;->acquireInstanceRange(JJZ)V

    .line 1551
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1552
    .local v10, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v5, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1554
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1555
    const-string v5, "begin <= "

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1556
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1557
    const-string v5, " AND end >= "

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1558
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1559
    const-string v5, " AND "

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1560
    const-string v5, "selected"

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1561
    const-string v5, "=1"

    invoke-virtual {v10, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1565
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjection:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 1566
    .local v30, cursor:Landroid/database/Cursor;
    const/16 v29, 0x0

    .line 1568
    .local v29, count:I
    :try_start_d2
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->getCount()I

    move-result v29

    .line 1569
    :goto_d6
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_146

    .line 1570
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1571
    .local v14, startDay:I
    const/4 v5, 0x1

    move-object/from16 v0, v30

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1572
    .local v15, endDay:I
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1573
    .local v16, startMinute:I
    const/4 v5, 0x3

    move-object/from16 v0, v30

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1574
    .local v17, endMinute:I
    const/4 v5, 0x4

    move-object/from16 v0, v30

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_142

    const/4 v5, 0x1

    move/from16 v18, v5

    .local v18, allDay:Z
    :goto_109
    move-object/from16 v12, p0

    move/from16 v13, p1

    .line 1575
    invoke-direct/range {v12 .. v20}, Lcom/android/providers/calendar/CalendarProvider;->fillBusyBits(IIIIIZ[I[I)V
    :try_end_110
    .catchall {:try_start_d2 .. :try_end_110} :catchall_111

    goto :goto_d6

    .line 1579
    .end local v14           #startDay:I
    .end local v15           #endDay:I
    .end local v16           #startMinute:I
    .end local v17           #endMinute:I
    .end local v18           #allDay:Z
    :catchall_111
    move-exception v5

    if-eqz v30, :cond_117

    .line 1580
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_117
    throw v5

    .line 1524
    .end local v6           #begin:J
    .end local v8           #end:J
    .end local v10           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v11           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v19           #busybits:[I
    .end local v20           #allDayCounts:[I
    .end local v29           #count:I
    .end local v30           #cursor:Landroid/database/Cursor;
    .end local v35           #numDays:I
    .end local v36           #time:Landroid/text/format/Time;
    :cond_118
    move/from16 v0, p2

    move/from16 v1, v27

    if-ge v0, v1, :cond_122

    .line 1525
    move/from16 p2, v27

    goto/16 :goto_5d

    .line 1526
    :cond_122
    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_132

    move/from16 v0, p2

    move/from16 v1, v28

    if-gt v0, v1, :cond_132

    .line 1527
    move/from16 p2, v27

    goto/16 :goto_5d

    .line 1528
    :cond_132
    move/from16 v0, p2

    move/from16 v1, v28

    if-le v0, v1, :cond_5d

    move/from16 v0, p1

    move/from16 v1, v27

    if-lt v0, v1, :cond_5d

    .line 1529
    move/from16 p1, v28

    goto/16 :goto_5d

    .line 1574
    .restart local v6       #begin:J
    .restart local v8       #end:J
    .restart local v10       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v11       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14       #startDay:I
    .restart local v15       #endDay:I
    .restart local v16       #startMinute:I
    .restart local v17       #endMinute:I
    .restart local v19       #busybits:[I
    .restart local v20       #allDayCounts:[I
    .restart local v29       #count:I
    .restart local v30       #cursor:Landroid/database/Cursor;
    .restart local v35       #numDays:I
    .restart local v36       #time:Landroid/text/format/Time;
    :cond_142
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_109

    .line 1579
    .end local v14           #startDay:I
    .end local v15           #endDay:I
    .end local v16           #startMinute:I
    .end local v17           #endMinute:I
    :cond_146
    if-eqz v30, :cond_14b

    .line 1580
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 1584
    :cond_14b
    if-nez v29, :cond_18a

    .line 1587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day <= "

    .end local v6           #begin:J
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND day >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1588
    .local v32, deleteWhere:Ljava/lang/String;
    const-string v5, "BusyBits"

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v32

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1590
    const-string v5, "CalendarProvider"

    const-string v6, "acquireBusyBitRangeLocked() delete busybits of current month"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 1599
    .end local v32           #deleteWhere:Ljava/lang/String;
    .restart local v6       #begin:J
    :cond_18a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v33

    .line 1600
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move/from16 v27, v0

    .line 1601
    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move/from16 v28, v0

    .line 1604
    if-nez v28, :cond_1ab

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "DELETE FROM BusyBits;"

    .end local v6           #begin:J
    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1609
    :cond_1ab
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->mergeBusyBits(II[I[I)V

    .line 1610
    if-nez v28, :cond_1db

    .line 1611
    move/from16 v27, p1

    .line 1612
    move/from16 v28, p2

    .line 1622
    :cond_1be
    :goto_1be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object/from16 v21, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide/from16 v23, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v21 .. v28}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    goto/16 :goto_4e

    .line 1614
    :cond_1db
    move/from16 v0, p1

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e3

    .line 1615
    move/from16 v27, p1

    .line 1617
    :cond_1e3
    move/from16 v0, p2

    move/from16 v1, v28

    if-le v0, v1, :cond_1be

    .line 1618
    move/from16 v28, p2

    goto :goto_1be
.end method

.method private acquireInstanceRange(JJZ)V
    .registers 8
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1396
    :try_start_5
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/calendar/CalendarProvider;->acquireInstanceRangeLocked(JJZ)V

    .line 1397
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 1399
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1401
    return-void

    .line 1399
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private acquireInstanceRangeLocked(JJZ)V
    .registers 33
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"

    .prologue
    .line 1423
    move-wide/from16 v3, p1

    .line 1424
    .local v3, expandBegin:J
    move-wide/from16 v5, p3

    .line 1426
    .local v5, expandEnd:J
    if-eqz p5, :cond_20

    .line 1430
    sub-long v24, p3, p1

    .line 1431
    .local v24, span:J
    const-wide v8, 0x13f4a4800L

    cmp-long v2, v24, v8

    if-gez v2, :cond_20

    .line 1432
    const-wide v8, 0x13f4a4800L

    sub-long v8, v8, v24

    const-wide/16 v10, 0x2

    div-long v16, v8, v10

    .line 1433
    .local v16, additionalRange:J
    sub-long v3, v3, v16

    .line 1434
    add-long v5, v5, v16

    .line 1441
    .end local v16           #additionalRange:J
    .end local v24           #span:J
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v19

    .line 1442
    .local v19, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1443
    .local v18, dbTimezone:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide/from16 v20, v0

    .line 1444
    .local v20, maxInstance:J
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide/from16 v22, v0

    .line 1445
    .local v22, minInstance:J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    .line 1446
    .local v7, localTimezone:Ljava/lang/String;
    if-eqz v18, :cond_4e

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    :cond_4e
    const/4 v2, 0x1

    move/from16 v26, v2

    .line 1448
    .local v26, timezoneChanged:Z
    :goto_51
    const-wide/16 v8, 0x0

    cmp-long v2, v20, v8

    if-eqz v2, :cond_59

    if-eqz v26, :cond_86

    .line 1450
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v8, "DELETE FROM Instances;"

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v8, "DELETE FROM BusyBits;"

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 1456
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v8, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v7

    move-wide v10, v3

    move-wide v12, v5

    invoke-virtual/range {v8 .. v15}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    move-wide/from16 v12, v20

    .line 1499
    .end local v20           #maxInstance:J
    .local v12, maxInstance:J
    :goto_81
    return-void

    .line 1446
    .end local v12           #maxInstance:J
    .end local v26           #timezoneChanged:Z
    .restart local v20       #maxInstance:J
    :cond_82
    const/4 v2, 0x0

    move/from16 v26, v2

    goto :goto_51

    .line 1474
    .restart local v26       #timezoneChanged:Z
    :cond_86
    cmp-long v2, p1, v22

    if-ltz v2, :cond_91

    cmp-long v2, p3, v20

    if-gtz v2, :cond_91

    move-wide/from16 v12, v20

    .line 1479
    .end local v20           #maxInstance:J
    .restart local v12       #maxInstance:J
    goto :goto_81

    .line 1484
    .end local v12           #maxInstance:J
    .restart local v20       #maxInstance:J
    :cond_91
    cmp-long v2, p1, v22

    if-gez v2, :cond_a0

    move-object/from16 v8, p0

    move-wide v9, v3

    move-wide/from16 v11, v22

    move-object v13, v7

    .line 1485
    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1486
    move-wide/from16 v22, v3

    .line 1491
    :cond_a0
    cmp-long v2, p3, v20

    if-lez v2, :cond_c4

    move-object/from16 v8, p0

    move-wide/from16 v9, v20

    move-wide v11, v5

    move-object v13, v7

    .line 1492
    invoke-direct/range {v8 .. v13}, Lcom/android/providers/calendar/CalendarProvider;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1493
    move-wide v12, v5

    .line 1497
    .end local v20           #maxInstance:J
    .restart local v12       #maxInstance:J
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v8, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move v14, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v15, v0

    move-object v9, v7

    move-wide/from16 v10, v22

    invoke-virtual/range {v8 .. v15}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    goto :goto_81

    .end local v12           #maxInstance:J
    .restart local v20       #maxInstance:J
    :cond_c4
    move-wide/from16 v12, v20

    .end local v20           #maxInstance:J
    .restart local v12       #maxInstance:J
    goto :goto_ae
.end method

.method private calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "feed"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const-string v5, "CalendarProvider"

    .line 2584
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2585
    .local v1, pathComponents:[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v3, :cond_3e

    const-string v2, "feeds"

    const/4 v3, 0x4

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2587
    const/4 v2, 0x5

    :try_start_19
    aget-object v2, v1, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_20} :catch_22

    move-result-object v2

    .line 2595
    :goto_21
    return-object v2

    .line 2588
    :catch_22
    move-exception v2

    move-object v0, v2

    .line 2589
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "CalendarProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to url decode the email address in calendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2590
    goto :goto_21

    .line 2594
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3e
    const-string v2, "CalendarProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find the email address in calendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 2595
    goto :goto_21
.end method

.method private calendarEntryToContentValues(Ljava/lang/String;Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;Lcom/google/wireless/gdata/calendar/data/CalendarEntry;Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 13
    .parameter "account"
    .parameter "feed"
    .parameter "entry"
    .parameter "map"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "/full"

    .line 1280
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    .line 1282
    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getAlternateLink()Ljava/lang/String;

    move-result-object v3

    .line 1285
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 1286
    const-string v4, "/full"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1287
    const-string v4, "/full"

    const-string v4, "/full-selfattendance"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1303
    :cond_21
    :goto_21
    invoke-static {p1, v3}, Lcom/android/providers/calendar/CalendarSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1305
    const-string v4, "url"

    invoke-virtual {p4, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v4, "name"

    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    const-string v4, "displayName"

    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v4, "timezone"

    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getColor()Ljava/lang/String;

    move-result-object v2

    .line 1314
    .local v2, colorStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 1315
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1317
    .local v1, color:I
    const/high16 v4, -0x100

    or-int/2addr v1, v4

    .line 1318
    const-string v4, "color"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1321
    .end local v1           #color:I
    :cond_5f
    const-string v4, "selected"

    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_b1

    move v5, v7

    :goto_68
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1323
    const-string v4, "hidden"

    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_b3

    move v5, v7

    :goto_78
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v4

    packed-switch v4, :pswitch_data_c4

    .line 1343
    const/4 v0, 0x0

    .line 1345
    .local v0, accesslevel:I
    :goto_87
    const-string v4, "access_level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1348
    const-string v4, "_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p4, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v4, v3

    .line 1350
    .end local v0           #accesslevel:I
    .end local v2           #colorStr:Ljava/lang/String;
    :goto_9e
    return-object v4

    .line 1292
    :cond_9f
    invoke-virtual {p3}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1293
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_af

    .line 1294
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarProvider;->convertCalendarIdToFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_21

    .line 1299
    :cond_af
    const/4 v4, 0x0

    goto :goto_9e

    .restart local v2       #colorStr:Ljava/lang/String;
    :cond_b1
    move v5, v6

    .line 1321
    goto :goto_68

    :cond_b3
    move v5, v6

    .line 1323
    goto :goto_78

    .line 1328
    :pswitch_b5
    const/4 v0, 0x0

    .line 1329
    .restart local v0       #accesslevel:I
    goto :goto_87

    .line 1331
    .end local v0           #accesslevel:I
    :pswitch_b7
    const/16 v0, 0xc8

    .line 1332
    .restart local v0       #accesslevel:I
    goto :goto_87

    .line 1334
    .end local v0           #accesslevel:I
    :pswitch_ba
    const/16 v0, 0x64

    .line 1335
    .restart local v0       #accesslevel:I
    goto :goto_87

    .line 1337
    .end local v0           #accesslevel:I
    :pswitch_bd
    const/16 v0, 0x258

    .line 1338
    .restart local v0       #accesslevel:I
    goto :goto_87

    .line 1340
    .end local v0           #accesslevel:I
    :pswitch_c0
    const/16 v0, 0x2bc

    .line 1341
    .restart local v0       #accesslevel:I
    goto :goto_87

    .line 1326
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_b7
        :pswitch_ba
        :pswitch_bd
        :pswitch_c0
    .end packed-switch
.end method

.method private computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .registers 13
    .parameter "begin"
    .parameter "end"
    .parameter "local"
    .parameter "values"

    .prologue
    .line 2042
    invoke-virtual {p5, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 2043
    iget-wide v4, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 2044
    .local v2, startDay:I
    iget v4, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p5, Landroid/text/format/Time;->minute:I

    add-int v3, v4, v5

    .line 2046
    .local v3, startMinute:I
    invoke-virtual {p5, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 2047
    iget-wide v4, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 2048
    .local v0, endDay:I
    iget v4, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p5, Landroid/text/format/Time;->minute:I

    add-int v1, v4, v5

    .line 2054
    .local v1, endMinute:I
    if-nez v1, :cond_2a

    if-le v0, v2, :cond_2a

    .line 2055
    const/16 v1, 0x5a0

    .line 2056
    add-int/lit8 v0, v0, -0x1

    .line 2059
    :cond_2a
    const-string v4, "startDay"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2060
    const-string v4, "endDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2061
    const-string v4, "startMinute"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2062
    const-string v4, "endMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2063
    return-void
.end method

.method protected static final convertCalendarIdToFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    const/4 v3, -0x1

    const-string v4, "/feeds/"

    .line 1260
    const-string v2, "/feeds/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1261
    .local v1, start:I
    if-eq v1, v3, :cond_3f

    .line 1263
    const-string v2, "/feeds/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 1264
    const/16 v2, 0x2f

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 1265
    .local v0, end:I
    if-eq v0, v3, :cond_26

    .line 1266
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1268
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/full-selfattendance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1270
    .end local v0           #end:I
    :cond_3f
    return-object p0
.end method

.method private createAttendeeEntry(JI)V
    .registers 15
    .parameter "eventId"
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2607
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2608
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2609
    const-string v0, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2610
    const-string v0, "attendeeType"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2611
    const-string v0, "attendeeRelationship"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2615
    const/4 v8, 0x0

    .line 2618
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2c
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_77

    move-result-object v8

    .line 2623
    if-nez v8, :cond_4a

    .line 2629
    if-eqz v8, :cond_49

    .line 2630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2658
    :cond_49
    :goto_49
    return-void

    .line 2626
    :cond_4a
    :try_start_4a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2627
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_77

    move-result-wide v6

    .line 2629
    .local v6, calId:J
    if-eqz v8, :cond_57

    .line 2630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2635
    :cond_57
    const/4 v9, 0x0

    .line 2636
    .local v9, emailAddress:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2638
    :try_start_59
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_sync_account"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_96

    move-result-object v8

    .line 2643
    if-nez v8, :cond_7e

    .line 2649
    if-eqz v8, :cond_49

    .line 2650
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_49

    .line 2629
    .end local v6           #calId:J
    .end local v9           #emailAddress:Ljava/lang/String;
    :catchall_77
    move-exception v0

    if-eqz v8, :cond_7d

    .line 2630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0

    .line 2646
    .restart local v6       #calId:J
    .restart local v9       #emailAddress:Ljava/lang/String;
    :cond_7e
    :try_start_7e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2647
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_96

    move-result-object v9

    .line 2649
    if-eqz v8, :cond_8b

    .line 2650
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2653
    :cond_8b
    const-string v0, "attendeeEmail"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, v10}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    goto :goto_49

    .line 2649
    :catchall_96
    move-exception v0

    if-eqz v8, :cond_9c

    .line 2650
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9c
    throw v0
.end method

.method private deleteBusyBitsLocked(J)V
    .registers 12
    .parameter "eventId"

    .prologue
    const/4 v6, 0x0

    .line 2370
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v8

    .line 2371
    .local v8, fields:Lcom/android/providers/calendar/MetaData$Fields;
    iget v0, v8, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    if-nez v0, :cond_c

    .line 2381
    :goto_b
    return-void

    .line 2379
    :cond_c
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    iget-object v1, v8, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iget-wide v2, v8, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v4, v8, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    goto :goto_b
.end method

.method private deleteMatchingCalendars(Ljava/lang/String;)I
    .registers 15
    .parameter "where"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 3221
    const/4 v11, 0x0

    .line 3222
    .local v11, numDeleted:I
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3223
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "Calendars"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sCalendarsIdProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3225
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_17

    move v1, v12

    .line 3240
    :goto_16
    return v1

    .line 3229
    :cond_17
    :goto_17
    :try_start_17
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3230
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3231
    .local v9, id:J
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 3232
    const/4 v1, 0x0

    invoke-direct {p0, v9, v10, v1}, Lcom/android/providers/calendar/CalendarProvider;->modifyCalendarSubscription(JZ)V

    .line 3234
    :cond_2c
    invoke-interface {v8}, Landroid/database/Cursor;->deleteRow()Z
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_37

    .line 3235
    add-int/lit8 v11, v11, 0x1

    .line 3236
    goto :goto_17

    .line 3238
    .end local v9           #id:J
    :cond_32
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v11

    .line 3240
    goto :goto_16

    .line 3238
    :catchall_37
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private doUpdateTimezoneDependentFields()V
    .registers 22

    .prologue
    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/MetaData;->getFields()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v16

    .line 369
    .local v16, fields:Lcom/android/providers/calendar/MetaData$Fields;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    .line 370
    .local v17, localTimezone:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->rescheduleMissedAlarms()V

    .line 402
    :goto_22
    return-void

    .line 382
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 383
    .local v18, now:J
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 384
    .local v20, time:Landroid/text/format/Time;
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 385
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 386
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 387
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 388
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 389
    const/4 v3, 0x1

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 390
    .local v5, begin:J
    const-wide v9, 0x13f4a4800L

    add-long v7, v5, v9

    .line 391
    .local v7, end:J
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 392
    .local v4, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "_id"

    aput-object v10, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 396
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v9, v0

    invoke-static {v5, v6, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 397
    .local v11, startDay:I
    add-int/lit8 v12, v11, 0x1f

    .line 398
    .local v12, endDay:I
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v4           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 399
    .restart local v4       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v13, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitProjection:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/android/providers/calendar/CalendarProvider;->handleBusyBitsQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->rescheduleMissedAlarms()V

    goto :goto_22
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 575
    const-string v0, "DROP TABLE IF EXISTS Calendars;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 576
    const-string v0, "DROP TABLE IF EXISTS Events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    const-string v0, "DROP TABLE IF EXISTS EventsRawTimes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 578
    const-string v0, "DROP TABLE IF EXISTS DeletedEvents;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    const-string v0, "DROP TABLE IF EXISTS Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 580
    const-string v0, "DROP TABLE IF EXISTS CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 581
    const-string v0, "DROP TABLE IF EXISTS BusyBits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 582
    const-string v0, "DROP TABLE IF EXISTS Attendees;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 583
    const-string v0, "DROP TABLE IF EXISTS Reminders;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 584
    const-string v0, "DROP TABLE IF EXISTS CalendarAlerts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 585
    const-string v0, "DROP TABLE IF EXISTS ExtendedProperties;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private expandInstanceRangeLocked(JJLjava/lang/String;)V
    .registers 13
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"

    .prologue
    const-string v2, "CalendarProvider"

    .line 1652
    const-string v0, "CalendarProvider"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1653
    const-string v0, "CalendarProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expanding events between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_2d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarProvider;->getEntries(JJ)Landroid/database/Cursor;

    move-result-object v6

    .local v6, entries:Landroid/database/Cursor;
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1658
    :try_start_35
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_3e

    .line 1660
    if-eqz v6, :cond_3d

    .line 1661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1667
    :cond_3d
    return-void

    .line 1660
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    .line 1661
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
.end method

.method private fetchCalendarsFromServer()V
    .registers 23

    .prologue
    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    move-object/from16 v19, v0

    if-nez v19, :cond_10

    .line 1082
    const-string v19, "CalendarProvider"

    const-string v20, "Cannot fetch calendars -- calendar url defined."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_f
    :goto_f
    return-void

    .line 1086
    :cond_10
    const/4 v14, 0x0

    .line 1087
    .local v14, loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/16 v18, 0x0

    .line 1088
    .local v18, username:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1091
    .local v4, authToken:Ljava/lang/String;
    :try_start_14
    new-instance v15, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_10a
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_14 .. :try_end_20} :catch_f4

    .line 1094
    .end local v14           #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .local v15, loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    const/16 v19, 0x0

    :try_start_22
    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v18

    .line 1095
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 1096
    const-string v19, "CalendarProvider"

    const-string v20, "Unable to update calendars from server -- no users configured."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_19f
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_22 .. :try_end_36} :catch_1a3

    .line 1113
    if-eqz v15, :cond_f

    .line 1114
    invoke-virtual {v15}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto :goto_f

    .line 1102
    :cond_3c
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getServiceName()Ljava/lang/String;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_3c .. :try_end_4e} :catchall_19f
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException; {:try_start_3c .. :try_end_4e} :catch_c9
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_3c .. :try_end_4e} :catch_1a3

    move-result-object v4

    .line 1113
    if-eqz v15, :cond_54

    .line 1114
    invoke-virtual {v15}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    .line 1121
    :cond_54
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1123
    .local v10, existingCalendarIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1124
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1126
    :try_start_60
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider;->getCurrentCalendars(Ljava/util/Set;)V
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_c4

    .line 1129
    const/16 v16, 0x0

    .line 1131
    .local v16, parser:Lcom/google/wireless/gdata/parser/GDataParser;
    :try_start_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getUserCalendarsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1132
    .local v11, feedUrl:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/android/providers/calendar/CalendarSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v11

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getParserForUserCalendars(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v16

    .line 1135
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->processCalendars(Ljava/lang/String;Lcom/google/wireless/gdata/parser/GDataParser;Ljava/util/Set;)V
    :try_end_95
    .catchall {:try_start_68 .. :try_end_95} :catchall_190
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_68 .. :try_end_95} :catch_111
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_95} :catch_12b
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_68 .. :try_end_95} :catch_144

    .line 1159
    if-eqz v16, :cond_9a

    .line 1160
    :try_start_97
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    .line 1165
    :cond_9a
    sget-object v7, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1166
    .local v7, calendarContentUri:Landroid/net/Uri;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v4           #authToken:Ljava/lang/String;
    .local v12, i$:Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_197

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1168
    .local v5, calId:J
    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_97 .. :try_end_c3} :catchall_c4

    goto :goto_a0

    .line 1173
    .end local v5           #calId:J
    .end local v7           #calendarContentUri:Landroid/net/Uri;
    .end local v11           #feedUrl:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #parser:Lcom/google/wireless/gdata/parser/GDataParser;
    :catchall_c4
    move-exception v19

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v19

    .line 1104
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #existingCalendarIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v4       #authToken:Ljava/lang/String;
    :catch_c9
    move-exception v19

    move-object/from16 v9, v19

    .line 1105
    .local v9, e:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    :try_start_cc
    const-string v19, "CalendarProvider"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to update calendars from server -- could not authenticate user "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ed
    .catchall {:try_start_cc .. :try_end_ed} :catchall_19f
    .catch Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException; {:try_start_cc .. :try_end_ed} :catch_1a3

    .line 1113
    if-eqz v15, :cond_f

    .line 1114
    invoke-virtual {v15}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto/16 :goto_f

    .line 1109
    .end local v9           #e:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    .end local v15           #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v14       #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catch_f4
    move-exception v19

    move-object/from16 v9, v19

    .line 1110
    .local v9, e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :goto_f7
    :try_start_f7
    const-string v19, "CalendarProvider"

    const-string v20, "Could not find Google login service"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_103
    .catchall {:try_start_f7 .. :try_end_103} :catchall_10a

    .line 1113
    if-eqz v14, :cond_f

    .line 1114
    invoke-virtual {v14}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    goto/16 :goto_f

    .line 1113
    .end local v9           #e:Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
    :catchall_10a
    move-exception v19

    :goto_10b
    if-eqz v14, :cond_110

    .line 1114
    invoke-virtual {v14}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    :cond_110
    throw v19

    .line 1136
    .end local v14           #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v8       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #existingCalendarIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v15       #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v16       #parser:Lcom/google/wireless/gdata/parser/GDataParser;
    :catch_111
    move-exception v19

    move-object/from16 v17, v19

    .line 1137
    .local v17, pe:Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_114
    const-string v19, "CalendarProvider"

    const-string v20, "Unable to process calendars from server -- could not parse calendar feed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_114 .. :try_end_121} :catchall_190

    .line 1159
    if-eqz v16, :cond_126

    .line 1160
    :try_start_123
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_c4

    .line 1173
    :cond_126
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_f

    .line 1140
    .end local v17           #pe:Lcom/google/wireless/gdata/parser/ParseException;
    :catch_12b
    move-exception v19

    move-object/from16 v13, v19

    .line 1141
    .local v13, ioe:Ljava/io/IOException;
    :try_start_12e
    const-string v19, "CalendarProvider"

    const-string v20, "Unable to process calendars from server -- encountered i/o error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13a
    .catchall {:try_start_12e .. :try_end_13a} :catchall_190

    .line 1159
    if-eqz v16, :cond_13f

    .line 1160
    :try_start_13c
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V
    :try_end_13f
    .catchall {:try_start_13c .. :try_end_13f} :catchall_c4

    .line 1173
    :cond_13f
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_f

    .line 1144
    .end local v13           #ioe:Ljava/io/IOException;
    :catch_144
    move-exception v19

    move-object/from16 v9, v19

    .line 1145
    .local v9, e:Lcom/google/wireless/gdata/client/HttpException;
    :try_start_147
    invoke-virtual {v9}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_1aa

    .line 1155
    const-string v19, "CalendarProvider"

    const-string v20, "Unable to process calendars from server -- error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15a
    .catchall {:try_start_147 .. :try_end_15a} :catchall_190

    .line 1159
    if-eqz v16, :cond_15f

    .line 1160
    :try_start_15c
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V
    :try_end_15f
    .catchall {:try_start_15c .. :try_end_15f} :catchall_c4

    .line 1173
    :cond_15f
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_f

    .line 1147
    :sswitch_164
    :try_start_164
    const-string v19, "CalendarProvider"

    const-string v20, "Unable to process calendars from server -- could not authenticate user."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_170
    .catchall {:try_start_164 .. :try_end_170} :catchall_190

    .line 1159
    if-eqz v16, :cond_175

    .line 1160
    :try_start_172
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V
    :try_end_175
    .catchall {:try_start_172 .. :try_end_175} :catchall_c4

    .line 1173
    :cond_175
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_f

    .line 1151
    :sswitch_17a
    :try_start_17a
    const-string v19, "CalendarProvider"

    const-string v20, "Unable to process calendars from server -- encountered an AllDeletedUnavailableException, this should never happen"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_186
    .catchall {:try_start_17a .. :try_end_186} :catchall_190

    .line 1159
    if-eqz v16, :cond_18b

    .line 1160
    :try_start_188
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_c4

    .line 1173
    :cond_18b
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_f

    .line 1159
    .end local v9           #e:Lcom/google/wireless/gdata/client/HttpException;
    :catchall_190
    move-exception v19

    if-eqz v16, :cond_196

    .line 1160
    :try_start_193
    invoke-interface/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_196
    throw v19

    .line 1171
    .end local v4           #authToken:Ljava/lang/String;
    .restart local v7       #calendarContentUri:Landroid/net/Uri;
    .restart local v11       #feedUrl:Ljava/lang/String;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_197
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_19a
    .catchall {:try_start_193 .. :try_end_19a} :catchall_c4

    .line 1173
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_f

    .line 1113
    .end local v7           #calendarContentUri:Landroid/net/Uri;
    .end local v8           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #existingCalendarIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v11           #feedUrl:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #parser:Lcom/google/wireless/gdata/parser/GDataParser;
    .restart local v4       #authToken:Ljava/lang/String;
    :catchall_19f
    move-exception v19

    move-object v14, v15

    .end local v15           #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v14       #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto/16 :goto_10b

    .line 1109
    .end local v14           #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v15       #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :catch_1a3
    move-exception v19

    move-object/from16 v9, v19

    move-object v14, v15

    .end local v15           #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    .restart local v14       #loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    goto/16 :goto_f7

    .line 1145
    nop

    :sswitch_data_1aa
    .sparse-switch
        0x191 -> :sswitch_164
        0x19a -> :sswitch_17a
    .end sparse-switch
.end method

.method private fillBusyBits(IIIIIZ[I[I)V
    .registers 23
    .parameter "minDay"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "startMinute"
    .parameter "endMinute"
    .parameter "allDay"
    .parameter "busybits"
    .parameter "allDayCounts"

    .prologue
    .line 2072
    move/from16 v0, p2

    move v1, p1

    if-ge v0, v1, :cond_9

    .line 2073
    move/from16 p2, p1

    .line 2074
    const/16 p4, 0x0

    .line 2079
    :cond_9
    move-object/from16 v0, p7

    array-length v0, v0

    move v7, v0

    .line 2080
    .local v7, numDays:I
    move/from16 v10, p3

    .line 2081
    .local v10, stopDay:I
    add-int v11, p1, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-le v10, v11, :cond_1a

    .line 2082
    add-int v11, p1, v7

    const/4 v12, 0x1

    sub-int v10, v11, v12

    .line 2084
    :cond_1a
    sub-int v3, p2, p1

    .line 2086
    .local v3, dayIndex:I
    if-eqz p6, :cond_2d

    .line 2087
    move/from16 v2, p2

    .local v2, day:I
    :goto_20
    if-gt v2, v10, :cond_a9

    .line 2088
    aget v11, p8, v3

    add-int/lit8 v11, v11, 0x1

    aput v11, p8, v3

    .line 2087
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2093
    .end local v2           #day:I
    :cond_2d
    move/from16 v2, p2

    .restart local v2       #day:I
    :goto_2f
    if-gt v2, v10, :cond_a9

    .line 2094
    move/from16 v5, p5

    .line 2097
    .local v5, endTime:I
    move/from16 v0, p3

    move v1, v2

    if-le v0, v1, :cond_3a

    .line 2098
    const/16 v5, 0x5a0

    .line 2101
    :cond_3a
    div-int/lit8 v9, p4, 0x3c

    .line 2102
    .local v9, startBit:I
    add-int/lit8 v11, v5, 0x3c

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int/lit8 v4, v11, 0x3c

    .line 2103
    .local v4, endBit:I
    sub-int v6, v4, v9

    .line 2104
    .local v6, len:I
    if-nez v6, :cond_47

    .line 2105
    const/4 v6, 0x1

    .line 2107
    :cond_47
    if-ltz v6, :cond_4d

    const/16 v11, 0x18

    if-le v6, v11, :cond_9d

    .line 2108
    :cond_4d
    const-string v11, "Cal"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fillBusyBits() error: len "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " startMinute,endTime "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " startDay,endDay "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :goto_96
    const/16 p4, 0x0

    .line 2093
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 2112
    :cond_9d
    sget-object v11, Lcom/android/providers/calendar/CalendarProvider;->BIT_MASKS:[I

    aget v8, v11, v6

    .line 2113
    .local v8, oneBits:I
    aget v11, p7, v3

    shl-int v12, v8, v9

    or-int/2addr v11, v12

    aput v11, p7, v3

    goto :goto_96

    .line 2120
    .end local v4           #endBit:I
    .end local v5           #endTime:I
    .end local v6           #len:I
    .end local v8           #oneBits:I
    .end local v9           #startBit:I
    :cond_a9
    return-void
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 6

    .prologue
    .line 3511
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3512
    :try_start_3
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v3, :cond_22

    .line 3513
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3514
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_18

    .line 3515
    const-string v3, "CalendarProvider"

    const-string v4, "getAlarmManager() cannot get Context"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    .line 3521
    .end local v0           #context:Landroid/content/Context;
    :goto_17
    return-object v2

    .line 3518
    .restart local v0       #context:Landroid/content/Context;
    :cond_18
    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 3519
    .local v1, service:Ljava/lang/Object;
    check-cast v1, Landroid/app/AlarmManager;

    .end local v1           #service:Ljava/lang/Object;
    iput-object v1, p0, Lcom/android/providers/calendar/CalendarProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3521
    .end local v0           #context:Landroid/content/Context;
    :cond_22
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider;->mAlarmManager:Landroid/app/AlarmManager;

    monitor-exit v2

    move-object v2, v3

    goto :goto_17

    .line 3522
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v3
.end method

.method private getCurrentCalendars(Ljava/util/Set;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, calendarIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1178
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1183
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2f

    .line 1185
    :goto_14
    :try_start_14
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1186
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_27

    goto :goto_14

    .line 1189
    :catchall_27
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1192
    :cond_2f
    return-void
.end method

.method private getEntries(JJ)Landroid/database/Cursor;
    .registers 15
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    const-string v6, "CalendarProvider"

    const-string v4, " AND "

    .line 1676
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1677
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1678
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "Events INNER JOIN Calendars ON (calendar_id = Calendars._id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1679
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1681
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1682
    .local v8, beginString:Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    .line 1684
    .local v9, endString:Ljava/lang/String;
    const-string v2, "(dtstart <= "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1685
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1686
    const-string v2, " AND "

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1687
    const-string v2, "(lastDate IS NULL OR lastDate >= "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1688
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1689
    const-string v2, ")) OR ("

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1694
    const-string v2, "originalInstanceTime IS NOT NULL "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1695
    const-string v2, "AND originalInstanceTime <= "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1696
    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1697
    const-string v2, " AND "

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1701
    const-string v2, "originalInstanceTime >= "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1702
    const-wide/32 v4, 0x240c8400

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1703
    const-string v2, ")"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1705
    const-string v2, "CalendarProvider"

    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1706
    const-string v2, "CalendarProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving events to expand: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_87
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;
    .registers 13
    .parameter "recurrenceSyncId"
    .parameter "rowId"

    .prologue
    const/4 v3, 0x0

    const-string v6, "CalendarProvider"

    const-string v5, "\""

    .line 2864
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2865
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2867
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "Events INNER JOIN Calendars ON (calendar_id = Calendars._id)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2868
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2869
    if-nez p1, :cond_60

    .line 2870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Events._id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2871
    .local v8, where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2877
    :goto_30
    const-string v2, "CalendarProvider"

    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2878
    const-string v2, "CalendarProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieving events to expand: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_55
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 2873
    .end local v8           #where:Ljava/lang/String;
    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Events._sync_id = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR Events.originalEvent = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2875
    .restart local v8       #where:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method

.method private handleBusyBitsQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "qb"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 1376
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1377
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p2, p3}, Lcom/android/providers/calendar/CalendarProvider;->acquireBusyBitRange(II)V

    .line 1378
    const-string v0, "BusyBits"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1379
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1380
    const-string v0, "day >= "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1381
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1382
    const-string v0, " AND day <= "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1383
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v0, p1

    move-object v2, p4

    move-object v3, p5

    move-object v5, v4

    move-object v6, v4

    move-object v7, p6

    .line 1384
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "qb"
    .parameter "rangeBegin"
    .parameter "rangeEnd"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "sort"

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 1362
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider;->acquireInstanceRange(JJZ)V

    .line 1363
    const-string v0, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1365
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1366
    const-string v0, "begin <= "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1367
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1368
    const-string v0, " AND end >= "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1369
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1370
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v8

    move-object v2, p6

    move-object/from16 v3, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private insertBusyBitsLocked(JLandroid/content/ContentValues;)V
    .registers 29
    .parameter "eventId"
    .parameter "values"

    .prologue
    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v23

    .line 2190
    .local v23, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v5, v0

    if-nez v5, :cond_11

    .line 2244
    :cond_10
    :goto_10
    return-void

    .line 2199
    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/android/providers/calendar/CalendarProvider;->isRecurrenceEvent(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2200
    const-string v5, "CalendarProvider"

    const-string v6, "insertBusyBitsLocked(): unexpected recurrence event\n"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 2204
    :cond_1f
    const-string v5, "dtstart"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2205
    .local v6, dtstartMillis:J
    const-string v5, "dtend"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    .line 2206
    .local v22, dtendMillis:Ljava/lang/Long;
    if-nez v22, :cond_3b

    .line 2207
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 2210
    :cond_3b
    const/16 v18, 0x0

    .line 2211
    .local v18, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 2212
    .local v21, allDayInteger:Ljava/lang/Integer;
    if-eqz v21, :cond_51

    .line 2213
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_c3

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 2216
    :cond_51
    :goto_51
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2217
    .local v10, time:Landroid/text/format/Time;
    if-eqz v18, :cond_5c

    .line 2218
    const-string v5, "UTC"

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2221
    :cond_5c
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2222
    .local v11, busyValues:Landroid/content/ContentValues;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/calendar/CalendarProvider;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2224
    const-string v5, "startDay"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2225
    .local v13, startDay:I
    const-string v5, "endDay"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2229
    .local v15, endDay:I
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v5, v0

    if-gt v13, v5, :cond_10

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move v5, v0

    if-lt v15, v5, :cond_10

    .line 2235
    sub-int v5, v15, v13

    add-int/lit8 v24, v5, 0x1

    .line 2236
    .local v24, numDays:I
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 2237
    .local v19, busybits:[I
    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 2239
    .local v20, allDayCounts:[I
    const-string v5, "startMinute"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2240
    .local v16, startMinute:I
    const-string v5, "endMinute"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .local v17, endMinute:I
    move-object/from16 v12, p0

    move v14, v13

    .line 2241
    invoke-direct/range {v12 .. v20}, Lcom/android/providers/calendar/CalendarProvider;->fillBusyBits(IIIIIZ[I[I)V

    .line 2243
    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->mergeBusyBits(II[I[I)V

    goto/16 :goto_10

    .line 2213
    .end local v10           #time:Landroid/text/format/Time;
    .end local v11           #busyValues:Landroid/content/ContentValues;
    .end local v13           #startDay:I
    .end local v15           #endDay:I
    .end local v16           #startMinute:I
    .end local v17           #endMinute:I
    .end local v19           #busybits:[I
    .end local v20           #allDayCounts:[I
    .end local v24           #numDays:I
    :cond_c3
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_51
.end method

.method public static isRecurrenceEvent(Landroid/content/ContentValues;)Z
    .registers 2
    .parameter "values"

    .prologue
    .line 2450
    const-string v0, "rrule"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "rdate"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "originalEvent"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private mergeBusyBits(II[I[I)V
    .registers 7
    .parameter "startDay"
    .parameter "endDay"
    .parameter "busybits"
    .parameter "allDayCounts"

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2125
    :try_start_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarProvider;->mergeBusyBitsLocked(II[I[I)V

    .line 2126
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 2128
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2130
    return-void

    .line 2128
    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private mergeBusyBitsLocked(II[I[I)V
    .registers 24
    .parameter "startDay"
    .parameter "endDay"
    .parameter "busybits"
    .parameter "allDayCounts"

    .prologue
    .line 2134
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2135
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v14, 0x0

    .line 2137
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "day>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND day<="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2138
    .local v7, selection:Ljava/lang/String;
    const-string v5, "BusyBits"

    sget-object v6, Lcom/android/providers/calendar/CalendarProvider;->sBusyBitProjection:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_5e

    move-result-object v14

    .line 2139
    if-nez v14, :cond_3c

    .line 2152
    if-eqz v14, :cond_3b

    .line 2153
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2176
    :cond_3b
    return-void

    .line 2142
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2143
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2144
    .local v15, day:I
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 2145
    .local v13, busy:I
    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2147
    .local v12, allDayCount:I
    sub-int v16, v15, p1

    .line 2148
    .local v16, dayIndex:I
    aget v5, p3, v16

    or-int/2addr v5, v13

    aput v5, p3, v16

    .line 2149
    aget v5, p4, v16

    add-int/2addr v5, v12

    aput v5, p4, v16
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_5e

    goto :goto_3c

    .line 2152
    .end local v7           #selection:Ljava/lang/String;
    .end local v12           #allDayCount:I
    .end local v13           #busy:I
    .end local v15           #day:I
    .end local v16           #dayIndex:I
    :catchall_5e
    move-exception v5

    if-eqz v14, :cond_64

    .line 2153
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v5

    .line 2152
    .restart local v7       #selection:Ljava/lang/String;
    :cond_65
    if-eqz v14, :cond_6a

    .line 2153
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2158
    :cond_6a
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2161
    .local v18, values:Landroid/content/ContentValues;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    .line 2162
    .local v17, len:I
    const/16 v16, 0x0

    .restart local v16       #dayIndex:I
    :goto_76
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3b

    .line 2163
    aget v13, p3, v16

    .line 2164
    .restart local v13       #busy:I
    aget v12, p4, v16

    .line 2165
    .restart local v12       #allDayCount:I
    if-nez v13, :cond_87

    if-nez v12, :cond_87

    .line 2162
    :goto_84
    add-int/lit8 v16, v16, 0x1

    goto :goto_76

    .line 2168
    :cond_87
    add-int v15, p1, v16

    .line 2170
    .restart local v15       #day:I
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 2171
    const-string v5, "day"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2172
    const-string v5, "busyBits"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2173
    const-string v5, "allDayCount"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2174
    const-string v5, "BusyBits"

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_84
.end method

.method private modifyCalendarSubscription(JZ)V
    .registers 22
    .parameter "id"
    .parameter "syncEvents"

    .prologue
    .line 3391
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_sync_account"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "url"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "sync_events"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3399
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 3400
    .local v10, account:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3401
    .local v12, calendarUrl:Ljava/lang/String;
    const/16 v16, 0x0

    .line 3402
    .local v16, oldSyncEvents:Z
    if-eqz v13, :cond_44

    .line 3404
    :try_start_2a
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3405
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3406
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3407
    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_5c

    move-result v4

    if-eqz v4, :cond_58

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 3409
    :goto_41
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3413
    :cond_44
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3415
    :cond_50
    const-string v4, "CalendarProvider"

    const-string v5, "Cannot update subscription because account or calendar url empty -- should not happen."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    :cond_57
    :goto_57
    return-void

    .line 3407
    :cond_58
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_41

    .line 3409
    :catchall_5c
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    .line 3420
    :cond_61
    move/from16 v0, v16

    move/from16 v1, p3

    if-eq v0, v1, :cond_57

    .line 3428
    if-nez p3, :cond_9e

    .line 3429
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider;->readSyncDataBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 3430
    .local v14, data:[B
    invoke-static {v14}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v17

    .line 3431
    .local v17, syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    if-eqz v17, :cond_89

    .line 3432
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3433
    invoke-static/range {v17 .. v17}, Lcom/google/android/providers/AbstractGDataSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object v14

    .line 3434
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->writeSyncDataBytes(Ljava/lang/String;[B)V

    .line 3443
    :cond_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 3444
    .local v15, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v4

    .line 3445
    .local v11, args:[Ljava/lang/String;
    const-string v4, "Events"

    const-string v5, "calendar_id=?"

    invoke-virtual {v15, v4, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3460
    .end local v11           #args:[Ljava/lang/String;
    .end local v14           #data:[B
    .end local v15           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    :cond_9e
    if-nez p3, :cond_aa

    const/4 v4, 0x1

    :goto_a1
    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v4

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->scheduleSync(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_57

    :cond_aa
    const/4 v4, 0x0

    goto :goto_a1
.end method

.method private performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .registers 76
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"
    .parameter "entries"

    .prologue
    .line 1720
    new-instance v5, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v5}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 1722
    .local v5, rp:Lcom/android/providers/calendar/RecurrenceProcessor;
    const-string v8, "eventStatus"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v65

    .line 1723
    .local v65, statusColumn:I
    const-string v8, "dtstart"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1724
    .local v29, dtstartColumn:I
    const-string v8, "dtend"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1725
    .local v28, dtendColumn:I
    const-string v8, "eventTimezone"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v38

    .line 1726
    .local v38, eventTimezoneColumn:I
    const-string v8, "duration"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1727
    .local v31, durationColumn:I
    const-string v8, "rrule"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v62

    .line 1728
    .local v62, rruleColumn:I
    const-string v8, "rdate"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v60

    .line 1729
    .local v60, rdateColumn:I
    const-string v8, "exrule"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 1730
    .local v41, exruleColumn:I
    const-string v8, "exdate"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 1731
    .local v39, exdateColumn:I
    const-string v8, "allDay"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1732
    .local v23, allDayColumn:I
    const-string v8, "_id"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v45

    .line 1733
    .local v45, idColumn:I
    const-string v8, "_sync_id"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v67

    .line 1734
    .local v67, syncIdColumn:I
    const-string v8, "originalEvent"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 1735
    .local v52, originalEventColumn:I
    const-string v8, "originalInstanceTime"

    move-object/from16 v0, p6

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v53

    .line 1738
    .local v53, originalInstanceTimeColumn:I
    new-instance v46, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;

    invoke-direct/range {v46 .. v46}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;-><init>()V

    .line 1740
    .local v46, instancesMap:Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;
    new-instance v30, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v30 .. v30}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 1741
    .local v30, duration:Lcom/android/providers/calendar/Duration;
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1756
    .local v6, eventTime:Landroid/text/format/Time;
    :goto_92
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3ba

    .line 1758
    const/4 v14, 0x0

    .line 1760
    .local v14, initialValues:Landroid/content/ContentValues;
    :try_start_99
    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_15c

    const/4 v8, 0x1

    move/from16 v22, v8

    .line 1762
    .local v22, allDay:Z
    :goto_a6
    move-object/from16 v0, p6

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 1763
    .local v37, eventTimezone:Ljava/lang/String;
    if-nez v22, :cond_b6

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 1767
    :cond_b6
    const-string v37, "UTC"

    .line 1770
    :cond_b8
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1771
    .local v16, dtstartMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 1773
    .local v36, eventId:Ljava/lang/Long;
    move-object/from16 v0, p6

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_d3
    .catch Landroid/pim/DateException; {:try_start_99 .. :try_end_d3} :catch_14c
    .catch Landroid/util/TimeFormatException; {:try_start_99 .. :try_end_d3} :catch_2c7

    move-result-object v34

    .line 1774
    .local v34, durationStr:Ljava/lang/String;
    if-eqz v34, :cond_dd

    .line 1776
    :try_start_d6
    move-object/from16 v0, v30

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_dd
    .catch Landroid/pim/DateException; {:try_start_d6 .. :try_end_dd} :catch_161
    .catch Landroid/util/TimeFormatException; {:try_start_d6 .. :try_end_dd} :catch_2c7

    .line 1791
    :cond_dd
    :goto_dd
    :try_start_dd
    move-object/from16 v0, p6

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    .line 1792
    .local v66, syncId:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 1794
    .local v51, originalEvent:Ljava/lang/String;
    const-wide/16 v54, -0x1

    .line 1795
    .local v54, originalInstanceTimeMillis:J
    move-object/from16 v0, p6

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_101

    .line 1796
    move-object/from16 v0, p6

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 1798
    :cond_101
    move-object/from16 v0, p6

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    .line 1800
    .local v64, status:I
    move-object/from16 v0, p6

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v63

    .line 1801
    .local v63, rruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1802
    .local v61, rdateStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1803
    .local v42, exruleStr:Ljava/lang/String;
    move-object/from16 v0, p6

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1805
    .local v40, exdateStr:Ljava/lang/String;
    new-instance v7, Landroid/pim/RecurrenceSet;

    move-object v0, v7

    move-object/from16 v1, v63

    move-object/from16 v2, v61

    move-object/from16 v3, v42

    move-object/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    .local v7, recur:Landroid/pim/RecurrenceSet;
    invoke-virtual {v7}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v8

    if-eqz v8, :cond_2db

    .line 1810
    const/4 v8, 0x2

    move/from16 v0, v64

    move v1, v8

    if-ne v0, v1, :cond_1bc

    .line 1812
    const-string v8, "CalendarProvider"

    const-string v9, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catch Landroid/pim/DateException; {:try_start_dd .. :try_end_14a} :catch_14c
    .catch Landroid/util/TimeFormatException; {:try_start_dd .. :try_end_14a} :catch_2c7

    goto/16 :goto_92

    .line 1931
    .end local v7           #recur:Landroid/pim/RecurrenceSet;
    .end local v16           #dtstartMillis:J
    .end local v22           #allDay:Z
    .end local v34           #durationStr:Ljava/lang/String;
    .end local v36           #eventId:Ljava/lang/Long;
    .end local v37           #eventTimezone:Ljava/lang/String;
    .end local v40           #exdateStr:Ljava/lang/String;
    .end local v42           #exruleStr:Ljava/lang/String;
    .end local v51           #originalEvent:Ljava/lang/String;
    .end local v54           #originalInstanceTimeMillis:J
    .end local v61           #rdateStr:Ljava/lang/String;
    .end local v63           #rruleStr:Ljava/lang/String;
    .end local v64           #status:I
    .end local v66           #syncId:Ljava/lang/String;
    :catch_14c
    move-exception v8

    move-object/from16 v35, v8

    .line 1932
    .local v35, e:Landroid/pim/DateException;
    :goto_14f
    const-string v8, "CalendarProvider"

    const-string v9, "RecurrenceProcessor error "

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_92

    .line 1760
    .end local v35           #e:Landroid/pim/DateException;
    :cond_15c
    const/4 v8, 0x0

    move/from16 v22, v8

    goto/16 :goto_a6

    .line 1778
    .restart local v16       #dtstartMillis:J
    .restart local v22       #allDay:Z
    .restart local v34       #durationStr:Ljava/lang/String;
    .restart local v36       #eventId:Ljava/lang/Long;
    .restart local v37       #eventTimezone:Ljava/lang/String;
    :catch_161
    move-exception v35

    .line 1779
    .restart local v35       #e:Landroid/pim/DateException;
    :try_start_162
    const-string v8, "CalendarProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error parsing duration for event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1781
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1782
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1783
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1784
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1785
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1786
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1787
    const-string v34, "+P0S"

    goto/16 :goto_dd

    .line 1818
    .end local v35           #e:Landroid/pim/DateException;
    .restart local v7       #recur:Landroid/pim/RecurrenceSet;
    .restart local v40       #exdateStr:Ljava/lang/String;
    .restart local v42       #exruleStr:Ljava/lang/String;
    .restart local v51       #originalEvent:Ljava/lang/String;
    .restart local v54       #originalInstanceTimeMillis:J
    .restart local v61       #rdateStr:Ljava/lang/String;
    .restart local v63       #rruleStr:Ljava/lang/String;
    .restart local v64       #status:I
    .restart local v66       #syncId:Ljava/lang/String;
    :cond_1bc
    move-object/from16 v0, v37

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1819
    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1820
    move/from16 v0, v22

    move-object v1, v6

    iput-boolean v0, v1, Landroid/text/format/Time;->allDay:Z

    .line 1822
    if-nez v34, :cond_1fd

    .line 1824
    const-string v8, "CalendarProvider"

    const-string v9, "Repeating event has no duration -- should not happen."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    if-eqz v22, :cond_257

    .line 1828
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1829
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1830
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1831
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1832
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1833
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1834
    const-string v34, "+P1D"

    :cond_1fd
    :goto_1fd
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 1855
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v27

    .line 1859
    .local v27, dates:[J
    if-eqz v22, :cond_2c0

    .line 1860
    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1865
    :goto_20b
    invoke-virtual/range {v30 .. v30}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v32

    .line 1866
    .local v32, durationMillis:J
    move-object/from16 v24, v27

    .local v24, arr$:[J
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v48, v0
    :try_end_216
    .catch Landroid/pim/DateException; {:try_start_162 .. :try_end_216} :catch_14c
    .catch Landroid/util/TimeFormatException; {:try_start_162 .. :try_end_216} :catch_2c7

    .local v48, len$:I
    const/16 v43, 0x0

    .local v43, i$:I
    move-object/from16 v21, v14

    .end local v14           #initialValues:Landroid/content/ContentValues;
    .local v21, initialValues:Landroid/content/ContentValues;
    :goto_21a
    move/from16 v0, v43

    move/from16 v1, v48

    if-ge v0, v1, :cond_2d7

    :try_start_220
    aget-wide v9, v24, v43

    .line 1867
    .local v9, date:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_227
    .catch Landroid/pim/DateException; {:try_start_220 .. :try_end_227} :catch_3a6
    .catch Landroid/util/TimeFormatException; {:try_start_220 .. :try_end_227} :catch_3b3

    .line 1868
    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    :try_start_227
    const-string v8, "event_id"

    move-object v0, v14

    move-object v1, v8

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1870
    const-string v8, "begin"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v14, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1871
    add-long v11, v9, v32

    .line 1872
    .local v11, dtendMillis:J
    const-string v8, "end"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v14, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v8, p0

    move-object v13, v6

    .line 1874
    invoke-direct/range {v8 .. v14}, Lcom/android/providers/calendar/CalendarProvider;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1876
    move-object/from16 v0, v46

    move-object/from16 v1, v66

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1866
    add-int/lit8 v43, v43, 0x1

    move-object/from16 v21, v14

    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    goto :goto_21a

    .line 1838
    .end local v9           #date:J
    .end local v11           #dtendMillis:J
    .end local v21           #initialValues:Landroid/content/ContentValues;
    .end local v24           #arr$:[J
    .end local v27           #dates:[J
    .end local v32           #durationMillis:J
    .end local v43           #i$:I
    .end local v48           #len$:I
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    :cond_257
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1839
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1840
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1841
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1842
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1843
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_2b6

    .line 1844
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1845
    .restart local v11       #dtendMillis:J
    sub-long v18, v11, v16

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move v8, v0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1846
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1847
    goto/16 :goto_1fd

    .line 1848
    .end local v11           #dtendMillis:J
    :cond_2b6
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v30

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1849
    const-string v34, "+P0S"

    goto/16 :goto_1fd

    .line 1862
    .restart local v27       #dates:[J
    :cond_2c0
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_2c5
    .catch Landroid/pim/DateException; {:try_start_227 .. :try_end_2c5} :catch_14c
    .catch Landroid/util/TimeFormatException; {:try_start_227 .. :try_end_2c5} :catch_2c7

    goto/16 :goto_20b

    .line 1933
    .end local v7           #recur:Landroid/pim/RecurrenceSet;
    .end local v16           #dtstartMillis:J
    .end local v22           #allDay:Z
    .end local v27           #dates:[J
    .end local v34           #durationStr:Ljava/lang/String;
    .end local v36           #eventId:Ljava/lang/Long;
    .end local v37           #eventTimezone:Ljava/lang/String;
    .end local v40           #exdateStr:Ljava/lang/String;
    .end local v42           #exruleStr:Ljava/lang/String;
    .end local v51           #originalEvent:Ljava/lang/String;
    .end local v54           #originalInstanceTimeMillis:J
    .end local v61           #rdateStr:Ljava/lang/String;
    .end local v63           #rruleStr:Ljava/lang/String;
    .end local v64           #status:I
    .end local v66           #syncId:Ljava/lang/String;
    :catch_2c7
    move-exception v8

    move-object/from16 v35, v8

    .line 1934
    .local v35, e:Landroid/util/TimeFormatException;
    :goto_2ca
    const-string v8, "CalendarProvider"

    const-string v9, "RecurrenceProcessor error "

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_92

    .end local v14           #initialValues:Landroid/content/ContentValues;
    .end local v35           #e:Landroid/util/TimeFormatException;
    .restart local v7       #recur:Landroid/pim/RecurrenceSet;
    .restart local v16       #dtstartMillis:J
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    .restart local v22       #allDay:Z
    .restart local v24       #arr$:[J
    .restart local v27       #dates:[J
    .restart local v32       #durationMillis:J
    .restart local v34       #durationStr:Ljava/lang/String;
    .restart local v36       #eventId:Ljava/lang/Long;
    .restart local v37       #eventTimezone:Ljava/lang/String;
    .restart local v40       #exdateStr:Ljava/lang/String;
    .restart local v42       #exruleStr:Ljava/lang/String;
    .restart local v43       #i$:I
    .restart local v48       #len$:I
    .restart local v51       #originalEvent:Ljava/lang/String;
    .restart local v54       #originalInstanceTimeMillis:J
    .restart local v61       #rdateStr:Ljava/lang/String;
    .restart local v63       #rruleStr:Ljava/lang/String;
    .restart local v64       #status:I
    .restart local v66       #syncId:Ljava/lang/String;
    :cond_2d7
    move-object/from16 v14, v21

    .line 1878
    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_92

    .line 1880
    .end local v24           #arr$:[J
    .end local v27           #dates:[J
    .end local v32           #durationMillis:J
    .end local v43           #i$:I
    .end local v48           #len$:I
    :cond_2db
    :try_start_2db
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_2e0
    .catch Landroid/pim/DateException; {:try_start_2db .. :try_end_2e0} :catch_14c
    .catch Landroid/util/TimeFormatException; {:try_start_2db .. :try_end_2e0} :catch_2c7

    .line 1886
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    if-eqz v51, :cond_30c

    const-wide/16 v18, -0x1

    cmp-long v8, v54, v18

    if-eqz v8, :cond_30c

    .line 1887
    :try_start_2e8
    const-string v8, "originalEvent"

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    const-string v8, "originalInstanceTime"

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1890
    const-string v8, "eventStatus"

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1893
    :cond_30c
    move-wide/from16 v11, v16

    .line 1894
    .restart local v11       #dtendMillis:J
    if-nez v34, :cond_380

    .line 1895
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_322

    .line 1896
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1907
    :cond_322
    :goto_322
    cmp-long v8, v11, p1

    if-ltz v8, :cond_32a

    cmp-long v8, v16, p3

    if-lez v8, :cond_340

    .line 1908
    :cond_32a
    if-eqz v51, :cond_389

    const-wide/16 v18, -0x1

    cmp-long v8, v54, v18

    if-eqz v8, :cond_389

    .line 1909
    const-string v8, "eventStatus"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1916
    :cond_340
    const-string v8, "event_id"

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1917
    const-string v8, "begin"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1919
    const-string v8, "end"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v8

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1921
    if-eqz v22, :cond_3ad

    .line 1922
    const-string v8, "UTC"

    iput-object v8, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_36a
    move-object/from16 v15, p0

    move-wide/from16 v18, v11

    move-object/from16 v20, v6

    .line 1926
    invoke-direct/range {v15 .. v21}, Lcom/android/providers/calendar/CalendarProvider;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1929
    move-object/from16 v0, v46

    move-object/from16 v1, v66

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    move-object/from16 v14, v21

    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_92

    .line 1899
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    :cond_380
    move-object/from16 v0, v30

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v11

    goto :goto_322

    .line 1911
    :cond_389
    const-string v8, "CalendarProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected event outside window: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 1931
    .end local v11           #dtendMillis:J
    :catch_3a6
    move-exception v8

    move-object/from16 v35, v8

    move-object/from16 v14, v21

    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_14f

    .line 1924
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .restart local v11       #dtendMillis:J
    .restart local v21       #initialValues:Landroid/content/ContentValues;
    :cond_3ad
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_3b2
    .catch Landroid/pim/DateException; {:try_start_2e8 .. :try_end_3b2} :catch_3a6
    .catch Landroid/util/TimeFormatException; {:try_start_2e8 .. :try_end_3b2} :catch_3b3

    goto :goto_36a

    .line 1933
    .end local v11           #dtendMillis:J
    :catch_3b3
    move-exception v8

    move-object/from16 v35, v8

    move-object/from16 v14, v21

    .end local v21           #initialValues:Landroid/content/ContentValues;
    .restart local v14       #initialValues:Landroid/content/ContentValues;
    goto/16 :goto_2ca

    .line 1959
    .end local v7           #recur:Landroid/pim/RecurrenceSet;
    .end local v14           #initialValues:Landroid/content/ContentValues;
    .end local v16           #dtstartMillis:J
    .end local v22           #allDay:Z
    .end local v34           #durationStr:Ljava/lang/String;
    .end local v36           #eventId:Ljava/lang/Long;
    .end local v37           #eventTimezone:Ljava/lang/String;
    .end local v40           #exdateStr:Ljava/lang/String;
    .end local v42           #exruleStr:Ljava/lang/String;
    .end local v51           #originalEvent:Ljava/lang/String;
    .end local v54           #originalInstanceTimeMillis:J
    .end local v61           #rdateStr:Ljava/lang/String;
    .end local v63           #rruleStr:Ljava/lang/String;
    .end local v64           #status:I
    .end local v66           #syncId:Ljava/lang/String;
    :cond_3ba
    invoke-virtual/range {v46 .. v46}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->keySet()Ljava/util/Set;

    move-result-object v47

    .line 1960
    .local v47, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_3c2
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_443

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/String;

    .line 1961
    .restart local v66       #syncId:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/providers/calendar/CalendarProvider$InstancesList;

    .line 1962
    .local v49, list:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    invoke-virtual/range {v49 .. v49}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .local v44, i$:Ljava/util/Iterator;
    :cond_3dc
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3c2

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/ContentValues;

    .line 1966
    .local v68, values:Landroid/content/ContentValues;
    const-string v8, "originalEvent"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3dc

    .line 1970
    const-string v8, "originalEvent"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1971
    .restart local v51       #originalEvent:Ljava/lang/String;
    const-string v8, "originalInstanceTime"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v57

    .line 1972
    .local v57, originalTime:J
    move-object/from16 v0, v46

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/android/providers/calendar/CalendarProvider$InstancesList;

    .line 1973
    .local v56, originalList:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    if-eqz v56, :cond_3dc

    .line 1983
    invoke-virtual/range {v56 .. v56}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int v50, v8, v9

    .local v50, num:I
    :goto_41c
    if-ltz v50, :cond_3dc

    .line 1984
    move-object/from16 v0, v56

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/ContentValues;

    .line 1985
    .local v59, originalValues:Landroid/content/ContentValues;
    const-string v8, "begin"

    move-object/from16 v0, v59

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1986
    .local v25, beginTime:J
    cmp-long v8, v25, v57

    if-nez v8, :cond_440

    .line 1988
    move-object/from16 v0, v56

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;->remove(I)Ljava/lang/Object;

    .line 1983
    :cond_440
    add-int/lit8 v50, v50, -0x1

    goto :goto_41c

    .line 2010
    .end local v25           #beginTime:J
    .end local v44           #i$:Ljava/util/Iterator;
    .end local v49           #list:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    .end local v50           #num:I
    .end local v51           #originalEvent:Ljava/lang/String;
    .end local v56           #originalList:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    .end local v57           #originalTime:J
    .end local v59           #originalValues:Landroid/content/ContentValues;
    .end local v66           #syncId:Ljava/lang/String;
    .end local v68           #values:Landroid/content/ContentValues;
    :cond_443
    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_447
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4a3

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Ljava/lang/String;

    .line 2011
    .restart local v66       #syncId:Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/providers/calendar/CalendarProvider$InstancesList;

    .line 2012
    .restart local v49       #list:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    invoke-virtual/range {v49 .. v49}, Lcom/android/providers/calendar/CalendarProvider$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .restart local v44       #i$:Ljava/util/Iterator;
    :cond_461
    :goto_461
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_447

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Landroid/content/ContentValues;

    .line 2016
    .restart local v68       #values:Landroid/content/ContentValues;
    const-string v8, "eventStatus"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v64

    .line 2017
    .local v64, status:Ljava/lang/Integer;
    if-eqz v64, :cond_47f

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_461

    .line 2022
    :cond_47f
    const-string v8, "originalEvent"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2023
    const-string v8, "originalInstanceTime"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2024
    const-string v8, "eventStatus"

    move-object/from16 v0, v68

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    goto :goto_461

    .line 2029
    .end local v44           #i$:Ljava/util/Iterator;
    .end local v49           #list:Lcom/android/providers/calendar/CalendarProvider$InstancesList;
    .end local v64           #status:Ljava/lang/Integer;
    .end local v66           #syncId:Ljava/lang/String;
    .end local v68           #values:Landroid/content/ContentValues;
    :cond_4a3
    return-void
.end method

.method private processCalendars(Ljava/lang/String;Lcom/google/wireless/gdata/parser/GDataParser;Ljava/util/Set;)V
    .registers 24
    .parameter "username"
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/wireless/gdata/parser/GDataParser;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1198
    .local p3, existingCalendarIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata/parser/GDataParser;->init()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v16

    check-cast v16, Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;

    .line 1199
    .local v16, feed:Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;
    const/4 v15, 0x0

    .line 1200
    .local v15, entry:Lcom/google/wireless/gdata/data/Entry;
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1201
    .local v18, map:Landroid/content/ContentValues;
    sget-object v6, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1202
    .local v6, calendarContentUri:Landroid/net/Uri;
    :cond_e
    :goto_e
    invoke-interface/range {p2 .. p2}, Lcom/google/wireless/gdata/parser/GDataParser;->hasMoreData()Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 1203
    move-object/from16 v0, p2

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/google/wireless/gdata/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v15

    .line 1205
    move-object v0, v15

    check-cast v0, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;

    move-object v14, v0

    .line 1206
    .local v14, calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object v3, v14

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->calendarEntryToContentValues(Ljava/lang/String;Lcom/google/wireless/gdata/calendar/data/CalendarsFeed;Lcom/google/wireless/gdata/calendar/data/CalendarEntry;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .line 1207
    .local v17, feedUrl:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1210
    const-wide/16 v12, -0x1

    .line 1212
    .local v12, calId:J
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v7, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x27

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1218
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_7a

    .line 1220
    :try_start_62
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1221
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1222
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_62 .. :try_end_77} :catchall_a2

    .line 1225
    :cond_77
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1229
    :cond_7a
    const-wide/16 v7, -0x1

    cmp-long v5, v12, v7

    if-eqz v5, :cond_a7

    .line 1232
    const-string v5, "selected"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1233
    const-string v5, "hidden"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1235
    invoke-static {v6, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v18

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_e

    .line 1225
    :catchall_a2
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1240
    :cond_a7
    const/16 v19, 0x0

    .line 1241
    .local v19, syncAndDisplay:I
    invoke-virtual {v14}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-virtual {v14}, Lcom/google/wireless/gdata/calendar/data/CalendarEntry;->isHidden()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 1242
    const/16 v19, 0x1

    .line 1244
    :cond_b7
    const-string v5, "sync_events"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1245
    const-string v5, "selected"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1246
    const-string v5, "hidden"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    const-string v5, "_sync_account"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_e

    .line 1253
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #calId:J
    .end local v14           #calendarEntry:Lcom/google/wireless/gdata/calendar/data/CalendarEntry;
    .end local v17           #feedUrl:Ljava/lang/String;
    .end local v19           #syncAndDisplay:I
    :cond_f3
    return-void
.end method

.method private readEventStartEnd(J)Lcom/android/providers/calendar/CalendarProvider$TimeRange;
    .registers 14
    .parameter "eventId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2386
    const/4 v6, 0x0

    .line 2387
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Lcom/android/providers/calendar/CalendarProvider$TimeRange;

    invoke-direct {v7}, Lcom/android/providers/calendar/CalendarProvider$TimeRange;-><init>()V

    .line 2389
    .local v7, range:Lcom/android/providers/calendar/CalendarProvider$TimeRange;
    :try_start_9
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "dtstart"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "dtend"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "allDay"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2405
    if-eqz v6, :cond_52

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 2406
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->begin:J

    .line 2407
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->end:J

    .line 2408
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v10

    :goto_47
    iput-boolean v0, v7, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->allDay:Z
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_59

    .line 2415
    if-eqz v6, :cond_4e

    .line 2416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    move-object v0, v7

    .line 2419
    :goto_4f
    return-object v0

    :cond_50
    move v0, v9

    .line 2408
    goto :goto_47

    .line 2415
    :cond_52
    if-eqz v6, :cond_57

    .line 2416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_57
    move-object v0, v8

    goto :goto_4f

    .line 2415
    :catchall_59
    move-exception v0

    if-eqz v6, :cond_5f

    .line 2416
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5f
    throw v0
.end method

.method private removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    const-string v1, "CalendarProvider"

    .line 3817
    const-string v0, "CalendarProvider"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3818
    const-string v0, "CalendarProvider"

    const-string v0, "removing scheduled alarms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :cond_12
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3822
    return-void
.end method

.method private rescheduleMissedAlarms()V
    .registers 4

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    .line 406
    .local v2, manager:Landroid/app/AlarmManager;
    if-eqz v2, :cond_11

    .line 407
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 408
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 409
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v1, v0, v2}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 411
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_11
    return-void
.end method

.method private runScheduleNextAlarm(Z)V
    .registers 4
    .parameter "removeAlarms"

    .prologue
    .line 3567
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3582
    :goto_6
    return-void

    .line 3571
    :cond_7
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3572
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3574
    if-eqz p1, :cond_15

    .line 3575
    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3577
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3578
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 3580
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_6

    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 54
    .parameter "db"

    .prologue
    .line 3611
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v27

    .line 3612
    .local v27, alarmManager:Landroid/app/AlarmManager;
    if-nez v27, :cond_e

    .line 3613
    const-string v5, "CalendarProvider"

    const-string v6, "Failed to find the AlarmManager. Could not schedule the next alarm!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :goto_d
    return-void

    .line 3617
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 3618
    .local v33, currentMillis:J
    const-wide/32 v18, 0x6ddd00

    sub-long v6, v33, v18

    .line 3619
    .local v6, start:J
    const-wide/32 v18, 0x5265c00

    add-long v8, v6, v18

    .line 3620
    .local v8, end:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 3621
    .local v17, cr:Landroid/content/ContentResolver;
    const-string v5, "CalendarProvider"

    const/4 v10, 0x3

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 3622
    new-instance v48, Landroid/text/format/Time;

    invoke-direct/range {v48 .. v48}, Landroid/text/format/Time;-><init>()V

    .line 3623
    .local v48, time:Landroid/text/format/Time;
    move-object/from16 v0, v48

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3624
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3625
    .local v47, startTimeStr:Ljava/lang/String;
    const-string v5, "CalendarProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runScheduleNextAlarm() start search: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    .end local v47           #startTimeStr:Ljava/lang/String;
    .end local v48           #time:Landroid/text/format/Time;
    :cond_5c
    const-wide/32 v18, 0x247a6100

    sub-long v31, v33, v18

    .line 3633
    .local v31, clearUpToTime:J
    const-string v5, "CalendarAlerts"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "alarmTime<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v10

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3635
    move-wide/from16 v42, v8

    .line 3636
    .local v42, nextAlarmTime:J
    move-object/from16 v0, v17

    move-wide/from16 v1, v33

    invoke-static {v0, v1, v2}, Landroid/provider/Calendar$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v15

    .line 3637
    .local v15, alarmTime:J
    const-wide/16 v18, -0x1

    cmp-long v5, v15, v18

    if-eqz v5, :cond_98

    cmp-long v5, v15, v42

    if-gez v5, :cond_98

    .line 3638
    move-wide/from16 v42, v15

    .line 3657
    :cond_98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT begin-(minutes*60000) AS myAlarmTime, Instances.event_id AS eventId, begin, end, title, allDay, method, minutes FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) INNER JOIN Reminders ON (Instances.event_id = Reminders.event_id) WHERE method=1 AND myAlarmTime>="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AND myAlarmTime<="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AND end>="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AND 0=(SELECT count(*) from CalendarAlerts CA"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " where CA.event_id=Instances.event_id AND CA.begin=Instances.begin"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AND CA.alarmTime=myAlarmTime)"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " ORDER BY myAlarmTime,begin,title"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 3673
    .local v44, query:Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/calendar/CalendarProvider;->acquireInstanceRangeLocked(JJZ)V

    .line 3674
    const/16 v36, 0x0

    .line 3676
    .local v36, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_e6
    move-object/from16 v0, p1

    move-object/from16 v1, v44

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v36

    .line 3678
    const-string v5, "begin"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3679
    .local v30, beginIndex:I
    const-string v5, "end"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 3680
    .local v37, endIndex:I
    const-string v5, "eventId"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v39

    .line 3681
    .local v39, eventIdIndex:I
    const-string v5, "myAlarmTime"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 3682
    .local v28, alarmTimeIndex:I
    const-string v5, "minutes"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 3684
    .local v41, minutesIndex:I
    const-string v5, "CalendarProvider"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #start:J
    move-result v5

    if-eqz v5, :cond_170

    .line 3685
    new-instance v48, Landroid/text/format/Time;

    invoke-direct/range {v48 .. v48}, Landroid/text/format/Time;-><init>()V

    .line 3686
    .restart local v48       #time:Landroid/text/format/Time;
    move-object/from16 v0, v48

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3687
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3688
    .local v29, alarmTimeStr:Ljava/lang/String;
    const-string v5, "CalendarProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextAlarmTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cursor results: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3693
    .end local v29           #alarmTimeStr:Ljava/lang/String;
    .end local v48           #time:Landroid/text/format/Time;
    :cond_170
    :goto_170
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2b3

    .line 3701
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 3702
    move-object/from16 v0, v36

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 3703
    .local v11, eventId:J
    move-object/from16 v0, v36

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 3704
    .local v26, minutes:I
    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3706
    .local v13, startTime:J
    const-string v5, "CalendarProvider"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_254

    .line 3707
    const-string v5, "title"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 3708
    .local v50, titleIndex:I
    move-object/from16 v0, v36

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3709
    .local v49, title:Ljava/lang/String;
    new-instance v48, Landroid/text/format/Time;

    invoke-direct/range {v48 .. v48}, Landroid/text/format/Time;-><init>()V

    .line 3710
    .restart local v48       #time:Landroid/text/format/Time;
    move-object/from16 v0, v48

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3711
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3712
    .local v45, schedTime:Ljava/lang/String;
    move-object/from16 v0, v48

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3713
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3714
    .restart local v47       #startTimeStr:Ljava/lang/String;
    invoke-interface/range {v36 .. v37}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 3715
    .local v22, endTime:J
    move-object/from16 v0, v48

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3716
    const-string v5, " - %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3717
    .local v38, endTimeStr:Ljava/lang/String;
    move-object/from16 v0, v48

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3718
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3719
    .local v35, currentTimeStr:Ljava/lang/String;
    const-string v5, "CalendarProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  looking at id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " alarm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    .end local v22           #endTime:J
    .end local v35           #currentTimeStr:Ljava/lang/String;
    .end local v38           #endTimeStr:Ljava/lang/String;
    .end local v45           #schedTime:Ljava/lang/String;
    .end local v47           #startTimeStr:Ljava/lang/String;
    .end local v48           #time:Landroid/text/format/Time;
    .end local v49           #title:Ljava/lang/String;
    .end local v50           #titleIndex:I
    :cond_254
    cmp-long v5, v15, v42

    if-gez v5, :cond_2aa

    .line 3727
    move-wide/from16 v42, v15

    :cond_25a
    move-object/from16 v10, v17

    .line 3736
    invoke-static/range {v10 .. v16}, Landroid/provider/Calendar$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v5

    if-eqz v5, :cond_2cf

    .line 3737
    const-string v5, "CalendarProvider"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_170

    .line 3738
    const-string v5, "title"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 3739
    .restart local v50       #titleIndex:I
    move-object/from16 v0, v36

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3740
    .restart local v49       #title:Ljava/lang/String;
    const-string v5, "CalendarProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  alarm exists for id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a1
    .catchall {:try_start_e6 .. :try_end_2a1} :catchall_2a3

    goto/16 :goto_170

    .line 3783
    .end local v11           #eventId:J
    .end local v13           #startTime:J
    .end local v26           #minutes:I
    .end local v28           #alarmTimeIndex:I
    .end local v30           #beginIndex:I
    .end local v37           #endIndex:I
    .end local v39           #eventIdIndex:I
    .end local v41           #minutesIndex:I
    .end local v49           #title:Ljava/lang/String;
    .end local v50           #titleIndex:I
    :catchall_2a3
    move-exception v5

    if-eqz v36, :cond_2a9

    .line 3784
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    :cond_2a9
    throw v5

    .line 3728
    .restart local v11       #eventId:J
    .restart local v13       #startTime:J
    .restart local v26       #minutes:I
    .restart local v28       #alarmTimeIndex:I
    .restart local v30       #beginIndex:I
    .restart local v37       #endIndex:I
    .restart local v39       #eventIdIndex:I
    .restart local v41       #minutesIndex:I
    :cond_2aa
    const-wide/32 v18, 0xea60

    add-long v18, v18, v42

    cmp-long v5, v15, v18

    if-lez v5, :cond_25a

    .line 3783
    .end local v11           #eventId:J
    .end local v13           #startTime:J
    .end local v26           #minutes:I
    :cond_2b3
    if-eqz v36, :cond_2b8

    .line 3784
    invoke-interface/range {v36 .. v36}, Landroid/database/Cursor;->close()V

    .line 3793
    :cond_2b8
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v5, v42, v18

    if-eqz v5, :cond_3db

    .line 3794
    const-wide/32 v18, 0xea60

    add-long v18, v18, v42

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_d

    .line 3746
    .restart local v11       #eventId:J
    .restart local v13       #startTime:J
    .restart local v26       #minutes:I
    :cond_2cf
    :try_start_2cf
    invoke-interface/range {v36 .. v37}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .restart local v22       #endTime:J
    move-wide/from16 v18, v11

    move-wide/from16 v20, v13

    move-wide/from16 v24, v15

    .line 3747
    invoke-static/range {v17 .. v26}, Landroid/provider/Calendar$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v51

    .line 3749
    .local v51, uri:Landroid/net/Uri;
    if-nez v51, :cond_2e8

    .line 3750
    const-string v5, "CalendarProvider"

    const-string v6, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_170

    .line 3754
    :cond_2e8
    new-instance v40, Landroid/content/Intent;

    const-string v5, "android.intent.action.EVENT_REMINDER"

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3755
    .local v40, intent:Landroid/content/Intent;
    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3759
    const-string v5, "beginTime"

    move-object/from16 v0, v40

    move-object v1, v5

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3760
    const-string v5, "endTime"

    move-object/from16 v0, v40

    move-object v1, v5

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3761
    const-string v5, "CalendarProvider"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3bf

    .line 3762
    const-string v5, "title"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 3763
    .restart local v50       #titleIndex:I
    move-object/from16 v0, v36

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3764
    .restart local v49       #title:Ljava/lang/String;
    new-instance v48, Landroid/text/format/Time;

    invoke-direct/range {v48 .. v48}, Landroid/text/format/Time;-><init>()V

    .line 3765
    .restart local v48       #time:Landroid/text/format/Time;
    move-object/from16 v0, v48

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3766
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 3767
    .restart local v45       #schedTime:Ljava/lang/String;
    move-object/from16 v0, v48

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3768
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 3769
    .restart local v47       #startTimeStr:Ljava/lang/String;
    move-object/from16 v0, v48

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3770
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 3771
    .restart local v38       #endTimeStr:Ljava/lang/String;
    move-object/from16 v0, v48

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3772
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3773
    .restart local v35       #currentTimeStr:Ljava/lang/String;
    const-string v5, "CalendarProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  scheduling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " alarm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    .end local v35           #currentTimeStr:Ljava/lang/String;
    .end local v38           #endTimeStr:Ljava/lang/String;
    .end local v45           #schedTime:Ljava/lang/String;
    .end local v47           #startTimeStr:Ljava/lang/String;
    .end local v48           #time:Landroid/text/format/Time;
    .end local v49           #title:Ljava/lang/String;
    .end local v50           #titleIndex:I
    :cond_3bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v40

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v46

    .line 3780
    .local v46, sender:Landroid/app/PendingIntent;
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v5

    move-wide v2, v15

    move-object/from16 v4, v46

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3d9
    .catchall {:try_start_2cf .. :try_end_3d9} :catchall_2a3

    goto/16 :goto_170

    .line 3796
    .end local v11           #eventId:J
    .end local v13           #startTime:J
    .end local v22           #endTime:J
    .end local v26           #minutes:I
    .end local v40           #intent:Landroid/content/Intent;
    .end local v46           #sender:Landroid/app/PendingIntent;
    .end local v51           #uri:Landroid/net/Uri;
    :cond_3db
    const-wide/32 v18, 0x5265c00

    add-long v18, v18, v33

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_d
.end method

.method private scheduleSync(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .parameter "account"
    .parameter "uploadChangesOnly"
    .parameter "url"

    .prologue
    .line 3378
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3379
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3381
    if-eqz p3, :cond_1c

    .line 3382
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3385
    :cond_1c
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3386
    return-void
.end method

.method private declared-synchronized triggerAppWidgetUpdate(J)V
    .registers 5
    .parameter "changedEventId"

    .prologue
    .line 3493
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3494
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_c

    .line 3495
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->providerUpdated(Landroid/content/Context;J)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 3497
    :cond_c
    monitor-exit p0

    return-void

    .line 3493
    .end local v0           #context:Landroid/content/Context;
    :catchall_e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateBusyBitsLocked(JLandroid/content/ContentValues;)V
    .registers 40
    .parameter "eventId"
    .parameter "values"

    .prologue
    .line 2255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v30

    .line 2256
    .local v30, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v5, v0

    if-nez v5, :cond_11

    .line 2362
    :cond_10
    :goto_10
    return-void

    .line 2261
    :cond_11
    invoke-static/range {p3 .. p3}, Lcom/android/providers/calendar/CalendarProvider;->isRecurrenceEvent(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 2262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v9, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    goto :goto_10

    .line 2269
    :cond_31
    const-string v5, "dtstart"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 2270
    .local v26, dtstartLong:Ljava/lang/Long;
    const-string v5, "dtend"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    .line 2271
    .local v23, dtendLong:Ljava/lang/Long;
    if-nez v26, :cond_47

    if-eqz v23, :cond_10

    .line 2277
    :cond_47
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 2278
    .local v22, dbTimezone:Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    .line 2279
    .local v31, localTimezone:Ljava/lang/String;
    if-eqz v22, :cond_61

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    :cond_61
    const/4 v5, 0x1

    move/from16 v35, v5

    .line 2280
    .local v35, timezoneChanged:Z
    :goto_64
    if-eqz v35, :cond_84

    .line 2281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v9, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    goto :goto_10

    .line 2279
    .end local v35           #timezoneChanged:Z
    :cond_80
    const/4 v5, 0x0

    move/from16 v35, v5

    goto :goto_64

    .line 2287
    .restart local v35       #timezoneChanged:Z
    :cond_84
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/calendar/CalendarProvider;->readEventStartEnd(J)Lcom/android/providers/calendar/CalendarProvider$TimeRange;

    move-result-object v29

    .line 2292
    .local v29, eventRange:Lcom/android/providers/calendar/CalendarProvider$TimeRange;
    if-eqz v26, :cond_159

    .line 2293
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 2299
    .local v27, dtstartMillis:J
    :goto_8e
    if-eqz v23, :cond_161

    .line 2300
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2306
    .local v24, dtendMillis:J
    :goto_94
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2307
    .local v10, time:Landroid/text/format/Time;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->allDay:Z

    move v5, v0

    if-eqz v5, :cond_a4

    .line 2308
    const-string v5, "UTC"

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2310
    :cond_a4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2311
    .local v11, busyValues:Landroid/content/ContentValues;
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->begin:J

    move-wide v6, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->end:J

    move-wide v8, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/calendar/CalendarProvider;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2312
    const-string v5, "startDay"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .line 2313
    .local v34, oldStartDay:I
    const-string v5, "endDay"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 2315
    .local v33, oldEndDay:I
    const/16 v18, 0x0

    .line 2316
    .local v18, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 2317
    .local v21, allDayInteger:Ljava/lang/Integer;
    if-eqz v21, :cond_e2

    .line 2318
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_169

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 2321
    :cond_e2
    :goto_e2
    if-eqz v18, :cond_16e

    .line 2322
    const-string v5, "UTC"

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_e8
    move-object/from16 v5, p0

    move-wide/from16 v6, v27

    move-wide/from16 v8, v24

    .line 2327
    invoke-direct/range {v5 .. v11}, Lcom/android/providers/calendar/CalendarProvider;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2328
    const-string v5, "startDay"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 2329
    .local v13, newStartDay:I
    const-string v5, "endDay"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2333
    .local v15, newEndDay:I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v5, v0

    move/from16 v0, v34

    move v1, v5

    if-gt v0, v1, :cond_119

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move v5, v0

    move/from16 v0, v33

    move v1, v5

    if-ge v0, v1, :cond_127

    :cond_119
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v5, v0

    if-gt v13, v5, :cond_10

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move v5, v0

    if-lt v15, v5, :cond_10

    .line 2340
    :cond_127
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxBusyBit:I

    move v5, v0

    move/from16 v0, v34

    move v1, v5

    if-gt v0, v1, :cond_17a

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minBusyBit:I

    move v5, v0

    move/from16 v0, v33

    move v1, v5

    if-lt v0, v1, :cond_17a

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v12, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v13, v0

    .end local v13           #newStartDay:I
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v14, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v12 .. v19}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    goto/16 :goto_10

    .line 2295
    .end local v10           #time:Landroid/text/format/Time;
    .end local v11           #busyValues:Landroid/content/ContentValues;
    .end local v15           #newEndDay:I
    .end local v18           #allDay:Z
    .end local v21           #allDayInteger:Ljava/lang/Integer;
    .end local v24           #dtendMillis:J
    .end local v27           #dtstartMillis:J
    .end local v33           #oldEndDay:I
    .end local v34           #oldStartDay:I
    :cond_159
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->begin:J

    move-wide/from16 v27, v0

    .restart local v27       #dtstartMillis:J
    goto/16 :goto_8e

    .line 2302
    :cond_161
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/providers/calendar/CalendarProvider$TimeRange;->end:J

    move-wide/from16 v24, v0

    .restart local v24       #dtendMillis:J
    goto/16 :goto_94

    .line 2318
    .restart local v10       #time:Landroid/text/format/Time;
    .restart local v11       #busyValues:Landroid/content/ContentValues;
    .restart local v18       #allDay:Z
    .restart local v21       #allDayInteger:Ljava/lang/Integer;
    .restart local v33       #oldEndDay:I
    .restart local v34       #oldStartDay:I
    :cond_169
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_e2

    .line 2324
    :cond_16e
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_e8

    .line 2353
    .restart local v13       #newStartDay:I
    .restart local v15       #newEndDay:I
    :cond_17a
    sub-int v5, v15, v13

    add-int/lit8 v32, v5, 0x1

    .line 2354
    .local v32, numDays:I
    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 2355
    .local v19, busybits:[I
    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 2357
    .local v20, allDayCounts:[I
    const-string v5, "startMinute"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 2358
    .local v16, startMinute:I
    const-string v5, "endMinute"

    invoke-virtual {v11, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .local v17, endMinute:I
    move-object/from16 v12, p0

    move v14, v13

    .line 2359
    invoke-direct/range {v12 .. v20}, Lcom/android/providers/calendar/CalendarProvider;->fillBusyBits(IIIIIZ[I[I)V

    .line 2361
    move-object/from16 v0, p0

    move v1, v13

    move v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->mergeBusyBits(II[I[I)V

    goto/16 :goto_10
.end method

.method private updateContentValuesFromEvent(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 8
    .parameter "initialValues"

    .prologue
    .line 3022
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3024
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p0, v3}, Lcom/android/providers/calendar/CalendarProvider;->calculateLastDate(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3025
    .local v1, last:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_18

    .line 3026
    const-string v4, "lastDate"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_18
    .catch Landroid/pim/DateException; {:try_start_0 .. :try_end_18} :catch_1a

    :cond_18
    move-object v4, v3

    .line 3033
    .end local v1           #last:J
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_19
    return-object v4

    .line 3030
    :catch_1a
    move-exception v4

    move-object v0, v4

    .line 3032
    .local v0, e:Landroid/pim/DateException;
    const-string v4, "CalendarProvider"

    const-string v5, "Could not calculate last date."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3033
    const/4 v4, 0x0

    goto :goto_19
.end method

.method private updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .registers 11
    .parameter "db"
    .parameter "attendeeValues"

    .prologue
    const-string v7, "attendeeStatus"

    const-string v6, "attendeeRelationship"

    .line 2670
    const-string v5, "event_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2738
    .local v0, eventId:J
    const/4 v3, 0x0

    .line 2739
    .local v3, status:I
    const-string v5, "attendeeRelationship"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2740
    const-string v5, "attendeeRelationship"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2741
    .local v2, rel:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_25

    .line 2742
    const/4 v3, 0x1

    .line 2746
    .end local v2           #rel:I
    :cond_25
    const-string v5, "attendeeStatus"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2747
    const-string v5, "attendeeStatus"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2750
    :cond_37
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2751
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "selfAttendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2752
    const-string v5, "Events"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2753
    return-void
.end method

.method private updateEventRawTimesLocked(JLandroid/content/ContentValues;)V
    .registers 15
    .parameter "eventId"
    .parameter "values"

    .prologue
    .line 3038
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3040
    .local v6, rawValues:Landroid/content/ContentValues;
    const-string v9, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3042
    const-string v9, "eventTimezone"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3044
    .local v8, timezone:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3045
    .local v0, allDay:Z
    const-string v9, "allDay"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3046
    .local v1, allDayInteger:Ljava/lang/Integer;
    if-eqz v1, :cond_25

    .line 3047
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_af

    const/4 v9, 0x1

    move v0, v9

    .line 3050
    :cond_25
    :goto_25
    if-nez v0, :cond_2d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 3052
    :cond_2d
    const-string v8, "UTC"

    .line 3055
    :cond_2f
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3056
    .local v7, time:Landroid/text/format/Time;
    iput-boolean v0, v7, Landroid/text/format/Time;->allDay:Z

    .line 3057
    const-string v9, "dtstart"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 3058
    .local v3, dtstartMillis:Ljava/lang/Long;
    if-eqz v3, :cond_4e

    .line 3059
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3060
    const-string v9, "dtstart2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    :cond_4e
    const-string v9, "dtend"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 3064
    .local v2, dtendMillis:Ljava/lang/Long;
    if-eqz v2, :cond_66

    .line 3065
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3066
    const-string v9, "dtend2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    :cond_66
    const-string v9, "originalInstanceTime"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 3070
    .local v5, originalInstanceMillis:Ljava/lang/Long;
    if-eqz v5, :cond_8f

    .line 3074
    const-string v9, "originalAllDay"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 3075
    if-eqz v1, :cond_7f

    .line 3076
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_b3

    const/4 v9, 0x1

    :goto_7d
    iput-boolean v9, v7, Landroid/text/format/Time;->allDay:Z

    .line 3078
    :cond_7f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3079
    const-string v9, "originalInstanceTime2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3082
    :cond_8f
    const-string v9, "lastDate"

    invoke-virtual {p3, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 3083
    .local v4, lastDateMillis:Ljava/lang/Long;
    if-eqz v4, :cond_a9

    .line 3084
    iput-boolean v0, v7, Landroid/text/format/Time;->allDay:Z

    .line 3085
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3086
    const-string v9, "lastDate2445"

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3089
    :cond_a9
    iget-object v9, p0, Lcom/android/providers/calendar/CalendarProvider;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v9, v6}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    .line 3090
    return-void

    .line 3047
    .end local v2           #dtendMillis:Ljava/lang/Long;
    .end local v3           #dtstartMillis:Ljava/lang/Long;
    .end local v4           #lastDateMillis:Ljava/lang/Long;
    .end local v5           #originalInstanceMillis:Ljava/lang/Long;
    .end local v7           #time:Landroid/text/format/Time;
    :cond_af
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_25

    .line 3076
    .restart local v2       #dtendMillis:Ljava/lang/Long;
    .restart local v3       #dtstartMillis:Ljava/lang/Long;
    .restart local v5       #originalInstanceMillis:Ljava/lang/Long;
    .restart local v7       #time:Landroid/text/format/Time;
    :cond_b3
    const/4 v9, 0x0

    goto :goto_7d
.end method

.method private updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 27
    .parameter "values"
    .parameter "rowId"
    .parameter "newEvent"
    .parameter "db"

    .prologue
    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v17

    .line 2769
    .local v17, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_15

    .line 2848
    :cond_14
    :goto_14
    return-void

    .line 2773
    :cond_15
    const-string v5, "dtstart"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    .line 2774
    .local v16, dtstartMillis:Ljava/lang/Long;
    if-nez v16, :cond_2a

    .line 2775
    if-eqz p4, :cond_14

    .line 2777
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "DTSTART missing."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2784
    :cond_2a
    const-string v5, "lastDate"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    .line 2785
    .local v19, lastDateMillis:Ljava/lang/Long;
    const-string v5, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 2787
    .local v20, originalInstanceTime:Ljava/lang/Long;
    if-nez p4, :cond_5f

    .line 2792
    const-string v5, "Instances"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p5

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2795
    :cond_5f
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider;->isRecurrenceEvent(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 2798
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_b7

    if-eqz v19, :cond_81

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b7

    :cond_81
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 2803
    .local v18, insideWindow:Z
    :goto_84
    if-eqz v20, :cond_bb

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_bb

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    const-wide/32 v9, 0x240c8400

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_bb

    const/4 v5, 0x1

    move v12, v5

    .line 2806
    .local v12, affectsWindow:Z
    :goto_a6
    if-nez v18, :cond_aa

    if-eqz v12, :cond_14

    .line 2807
    :cond_aa
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_14

    .line 2798
    .end local v12           #affectsWindow:Z
    .end local v18           #insideWindow:Z
    :cond_b7
    const/4 v5, 0x0

    move/from16 v18, v5

    goto :goto_84

    .line 2803
    .restart local v18       #insideWindow:Z
    :cond_bb
    const/4 v5, 0x0

    move v12, v5

    goto :goto_a6

    .line 2815
    .end local v18           #insideWindow:Z
    :cond_be
    const-string v5, "dtend"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 2816
    .local v15, dtendMillis:Ljava/lang/Long;
    if-nez v15, :cond_cb

    .line 2817
    move-object/from16 v15, v16

    .line 2825
    :cond_cb
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_14

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_14

    .line 2826
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2827
    .local v11, instanceValues:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2828
    const-string v5, "begin"

    move-object v0, v11

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2829
    const-string v5, "end"

    invoke-virtual {v11, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2831
    const/4 v13, 0x0

    .line 2832
    .local v13, allDay:Z
    const-string v5, "allDay"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 2833
    .local v14, allDayInteger:Ljava/lang/Integer;
    if-eqz v14, :cond_115

    .line 2834
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_137

    const/4 v5, 0x1

    move v13, v5

    .line 2838
    :cond_115
    :goto_115
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2839
    .local v10, local:Landroid/text/format/Time;
    if-eqz v13, :cond_13a

    .line 2840
    const-string v5, "UTC"

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2845
    :goto_120
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/calendar/CalendarProvider;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    goto/16 :goto_14

    .line 2834
    .end local v10           #local:Landroid/text/format/Time;
    :cond_137
    const/4 v5, 0x0

    move v13, v5

    goto :goto_115

    .line 2842
    .restart local v10       #local:Landroid/text/format/Time;
    :cond_13a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v5, v0

    iput-object v5, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_120
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .registers 28
    .parameter "values"
    .parameter "rowId"
    .parameter "db"

    .prologue
    .line 2897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v19

    .line 2898
    .local v19, fields:Lcom/android/providers/calendar/MetaData$Fields;
    const-string v4, "originalEvent"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2899
    .local v20, originalEvent:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2900
    .local v21, recurrenceSyncId:Ljava/lang/String;
    if-eqz v20, :cond_82

    .line 2901
    move-object/from16 v21, v20

    .line 2911
    :goto_18
    if-nez v21, :cond_a3

    .line 2914
    const-string v22, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) WHERE Events._id =?)"

    .line 2918
    .local v22, where:Ljava/lang/String;
    const-string v4, "Instances"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p4

    move-object v1, v4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2932
    :goto_43
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v10

    .line 2934
    .local v10, entries:Landroid/database/Cursor;
    :try_start_4d
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v5, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v7, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/providers/calendar/CalendarProvider;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_ba

    .line 2936
    if-eqz v10, :cond_66

    .line 2937
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2942
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v11, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v13, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v15, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v11 .. v18}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJII)V

    .line 2944
    return-void

    .line 2904
    .end local v10           #entries:Landroid/database/Cursor;
    .end local v22           #where:Ljava/lang/String;
    :cond_82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT _sync_id FROM Events WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_18

    .line 2923
    :cond_a3
    const-string v22, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) WHERE Events._sync_id =? OR Events.originalEvent =?)"

    .line 2928
    .restart local v22       #where:Ljava/lang/String;
    const-string v4, "Instances"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    const/4 v6, 0x1

    aput-object v21, v5, v6

    move-object/from16 v0, p4

    move-object v1, v4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_43

    .line 2936
    .restart local v10       #entries:Landroid/database/Cursor;
    :catchall_ba
    move-exception v4

    if-eqz v10, :cond_c0

    .line 2937
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c0
    throw v4
.end method

.method private updateTimezoneDependentFields()V
    .registers 3

    .prologue
    .line 340
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider;Lcom/android/providers/calendar/CalendarProvider$1;)V

    .line 341
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    return-void
.end method


# virtual methods
.method bootCompleted()V
    .registers 2

    .prologue
    .line 3506
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    .line 3507
    return-void
.end method

.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 590
    invoke-super {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 591
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,url TEXT,name TEXT,displayName TEXT,hidden INTEGER NOT NULL DEFAULT 0,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 613
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 620
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,calendar_id INTEGER NOT NULL,htmlUri TEXT,title TEXT,eventLocation TEXT,description TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,commentsUri TEXT,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,visibility INTEGER NOT NULL DEFAULT 0,transparency INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,originalEvent TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 656
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 663
    const-string v0, "CREATE TABLE EventsRawTimes (_id INTEGER PRIMARY KEY,event_id INTEGER NOT NULL,dtstart2445 TEXT,dtend2445 TEXT,originalInstanceTime2445 TEXT,lastDate2445 TEXT,UNIQUE (event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE DeletedEvents (_sync_id TEXT,_sync_version TEXT,_sync_account TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_c0

    const-string v1, "_sync_local_id INTEGER,"

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_mark INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "calendar_id INTEGER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 685
    const-string v0, "CREATE TABLE Instances (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER,end INTEGER,startDay INTEGER,endDay INTEGER,startMinute INTEGER,endMinute INTEGER,UNIQUE (event_id, begin, end));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 697
    const-string v0, "CREATE INDEX instancesStartDayIndex ON Instances (startDay);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 701
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER,minBusyBits INTEGER,maxBusyBits INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v0, "CREATE TABLE BusyBits(day INTEGER PRIMARY KEY,busyBits INTEGER,allDayCount INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 716
    const-string v0, "CREATE TABLE Attendees (_id INTEGER PRIMARY KEY,event_id INTEGER,attendeeName TEXT,attendeeEmail TEXT,attendeeStatus INTEGER,attendeeRelationship INTEGER,attendeeType INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 726
    const-string v0, "CREATE INDEX attendeesEventIdIndex ON Attendees (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 730
    const-string v0, "CREATE TABLE Reminders (_id INTEGER PRIMARY KEY,event_id INTEGER,minutes INTEGER,method INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 738
    const-string v0, "CREATE INDEX remindersEventIdIndex ON Reminders (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 743
    const-string v0, "CREATE TABLE CalendarAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL,receivedTime INTEGER NOT NULL,notifyTime INTEGER NOT NULL,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 757
    const-string v0, "CREATE INDEX calendarAlertsEventIdIndex ON CalendarAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 761
    const-string v0, "CREATE TABLE ExtendedProperties (_id INTEGER PRIMARY KEY,event_id INTEGER,name TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 768
    const-string v0, "CREATE INDEX extendedPropertiesEventIdIndex ON ExtendedProperties (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 773
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id = old._id;DELETE FROM EventsRawTimes WHERE event_id = old._id;DELETE FROM Attendees WHERE event_id = old._id;DELETE FROM Reminders WHERE event_id = old._id;DELETE FROM CalendarAlerts WHERE event_id = old._id;DELETE FROM ExtendedProperties WHERE event_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    const-string v0, "CREATE TRIGGER attendees_update UPDATE ON Attendees BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=old.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    const-string v0, "CREATE TRIGGER attendees_insert INSERT ON Attendees BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=new.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 793
    const-string v0, "CREATE TRIGGER attendees_delete DELETE ON Attendees BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=old.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 800
    const-string v0, "CREATE TRIGGER reminders_update UPDATE ON Reminders BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=old.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 804
    const-string v0, "CREATE TRIGGER reminders_insert INSERT ON Reminders BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=new.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    const-string v0, "CREATE TRIGGER reminders_delete DELETE ON Reminders BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=old.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 814
    const-string v0, "CREATE TRIGGER extended_properties_update UPDATE ON ExtendedProperties BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=old.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 818
    const-string v0, "CREATE TRIGGER extended_properties_insert UPDATE ON ExtendedProperties BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=new.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 822
    const-string v0, "CREATE TRIGGER extended_properties_delete UPDATE ON ExtendedProperties BEGIN UPDATE Events SET _sync_dirty=1 WHERE Events._id=old.event_id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 826
    return-void

    .line 676
    :cond_c0
    const-string v1, ""

    goto/16 :goto_34
.end method

.method calculateLastDate(Landroid/content/ContentValues;)J
    .registers 16
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/DateException;
        }
    .end annotation

    .prologue
    .line 2950
    const-string v12, "dtstart"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4b

    .line 2951
    const-string v12, "dtend"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    const-string v12, "rrule"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    const-string v12, "duration"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    const-string v12, "eventTimezone"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    const-string v12, "rdate"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    const-string v12, "exrule"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_40

    const-string v12, "exdate"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 2957
    :cond_40
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "DTSTART field missing from event"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2959
    :cond_48
    const-wide/16 v12, -0x1

    .line 3017
    :goto_4a
    return-wide v12

    .line 2961
    :cond_4b
    const-string v12, "dtstart"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2962
    .local v3, dtstartMillis:J
    const-wide/16 v7, -0x1

    .line 2971
    .local v7, lastMillis:J
    new-instance v0, Landroid/pim/RecurrenceSet;

    invoke-direct {v0, p1}, Landroid/pim/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V

    .line 2973
    .local v0, checkrecur:Landroid/pim/RecurrenceSet;
    const-string v12, "dtend"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2975
    .local v1, dtEnd:Ljava/lang/Long;
    invoke-virtual {v0}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v12

    if-nez v12, :cond_70

    if-eqz v1, :cond_70

    .line 2979
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_6e
    move-wide v12, v7

    .line 3017
    goto :goto_4a

    .line 2982
    :cond_70
    new-instance v5, Lcom/android/providers/calendar/Duration;

    invoke-direct {v5}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 2983
    .local v5, duration:Lcom/android/providers/calendar/Duration;
    const-string v12, "duration"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2984
    .local v6, durationStr:Ljava/lang/String;
    if-eqz v6, :cond_80

    .line 2985
    invoke-virtual {v5, v6}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V

    .line 2988
    :cond_80
    new-instance v9, Landroid/pim/RecurrenceSet;

    invoke-direct {v9, p1}, Landroid/pim/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V

    .line 2990
    .local v9, recur:Landroid/pim/RecurrenceSet;
    invoke-virtual {v9}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v12

    if-eqz v12, :cond_b2

    .line 2994
    const-string v12, "eventTimezone"

    invoke-virtual {p1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2996
    .local v11, tz:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_99

    .line 2998
    const-string v11, "UTC"

    .line 3000
    :cond_99
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3002
    .local v2, dtstartLocal:Landroid/text/format/Time;
    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 3004
    new-instance v10, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v10}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 3005
    .local v10, rp:Lcom/android/providers/calendar/RecurrenceProcessor;
    invoke-virtual {v10, v2, v9}, Lcom/android/providers/calendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J

    move-result-wide v7

    .line 3006
    const-wide/16 v12, -0x1

    cmp-long v12, v7, v12

    if-nez v12, :cond_b3

    move-wide v12, v7

    .line 3007
    goto :goto_4a

    .line 3011
    .end local v2           #dtstartLocal:Landroid/text/format/Time;
    .end local v10           #rp:Lcom/android/providers/calendar/RecurrenceProcessor;
    .end local v11           #tz:Ljava/lang/String;
    :cond_b2
    move-wide v7, v3

    .line 3015
    :cond_b3
    invoke-virtual {v5, v7, v8}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v7

    goto :goto_6e
.end method

.method public deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 29
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 3094
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3095
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 3096
    .local v15, match:I
    packed-switch v15, :pswitch_data_1ee

    .line 3212
    :pswitch_10
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3100
    :pswitch_2c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 3101
    .local v14, id:Ljava/lang/String;
    if-eqz p2, :cond_4b

    .line 3102
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CalendarProvider doesn\'t support where based deletion for type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3106
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_10b

    .line 3107
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->deleteBusyBitsLocked(J)V

    .line 3111
    const-string v5, "Events"

    sget-object v6, Lcom/android/providers/calendar/CalendarProvider;->EVENTS_PROJECTION:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 3114
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_7b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 3115
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 3116
    .local v21, syncId:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d6

    .line 3117
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3118
    .local v22, syncVersion:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3119
    .local v20, syncAccount:Ljava/lang/String;
    const/4 v5, 0x3

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3121
    .local v12, calId:Ljava/lang/Long;
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 3122
    .local v23, values:Landroid/content/ContentValues;
    const-string v5, "_sync_id"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    const-string v5, "_sync_version"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    const-string v5, "_sync_account"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const-string v5, "calendar_id"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDeletedEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    .line 3138
    .end local v12           #calId:Ljava/lang/Long;
    .end local v20           #syncAccount:Ljava/lang/String;
    .end local v22           #syncVersion:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :cond_d6
    const/4 v5, 0x4

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3139
    .local v19, rrule:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3140
    .local v17, rdate:Ljava/lang/String;
    const/4 v5, 0x6

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 3141
    .local v16, origEvent:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ff

    .line 3143
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_ff
    .catchall {:try_start_7b .. :try_end_ff} :catchall_128

    .line 3147
    .end local v16           #origEvent:Ljava/lang/String;
    .end local v17           #rdate:Ljava/lang/String;
    .end local v19           #rrule:Ljava/lang/String;
    .end local v21           #syncId:Ljava/lang/String;
    :cond_ff
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3148
    const/4 v13, 0x0

    .line 3150
    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->triggerAppWidgetUpdate(J)V

    .line 3158
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_10b
    const-string v5, "Events"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .local v18, result:I
    move/from16 v5, v18

    .line 3208
    .end local v14           #id:Ljava/lang/String;
    .end local v18           #result:I
    .end local p1
    :goto_127
    return v5

    .line 3147
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v14       #id:Ljava/lang/String;
    .restart local p1
    :catchall_128
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 3148
    const/4 v13, 0x0

    throw v5

    .line 3167
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v14           #id:Ljava/lang/String;
    :pswitch_12e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot delete attendees."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3174
    :pswitch_136
    const-string v5, "Reminders"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .restart local v18       #result:I
    move/from16 v5, v18

    .line 3175
    goto :goto_127

    .line 3179
    .end local v18           #result:I
    :pswitch_145
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 3180
    .restart local v14       #id:Ljava/lang/String;
    const-string v5, "Reminders"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .restart local v18       #result:I
    move/from16 v5, v18

    .line 3181
    goto :goto_127

    .line 3185
    .end local v14           #id:Ljava/lang/String;
    .end local v18           #result:I
    :pswitch_166
    const-string v5, "CalendarAlerts"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .restart local v18       #result:I
    move/from16 v5, v18

    .line 3186
    goto :goto_127

    .line 3190
    .end local v18           #result:I
    :pswitch_175
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 3191
    .restart local v14       #id:Ljava/lang/String;
    const-string v5, "CalendarAlerts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .restart local v18       #result:I
    move/from16 v5, v18

    .line 3192
    goto :goto_127

    .line 3196
    .end local v14           #id:Ljava/lang/String;
    .end local v18           #result:I
    :pswitch_196
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Cannot delete that URL"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3198
    :pswitch_19e
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3199
    .local v24, whereSb:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3200
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d7

    .line 3201
    const-string v5, " AND ("

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3202
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    const/16 v5, 0x29

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3205
    :cond_1d7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3208
    .end local v24           #whereSb:Ljava/lang/StringBuilder;
    :pswitch_1db
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider;->deleteMatchingCalendars(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_127

    .line 3210
    .restart local p1
    :pswitch_1e5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Cannot delete that URL"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3096
    nop

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_196
        :pswitch_2c
        :pswitch_1e5
        :pswitch_196
        :pswitch_1db
        :pswitch_19e
        :pswitch_10
        :pswitch_12e
        :pswitch_136
        :pswitch_145
        :pswitch_10
        :pswitch_10
        :pswitch_166
        :pswitch_175
    .end packed-switch
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/providers/calendar/CalendarProvider$EventMerger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3483
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider$EventMerger;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider$EventMerger;-><init>(Lcom/android/providers/calendar/CalendarProvider;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSyncAdapter()Landroid/content/SyncAdapter;
    .registers 3

    .prologue
    .line 3465
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mSyncAdapter:Lcom/android/providers/calendar/CalendarSyncAdapter;

    if-nez v0, :cond_10

    .line 3466
    new-instance v0, Lcom/android/providers/calendar/CalendarSyncAdapter;

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/calendar/CalendarSyncAdapter;-><init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mSyncAdapter:Lcom/android/providers/calendar/CalendarSyncAdapter;

    .line 3468
    :cond_10
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mSyncAdapter:Lcom/android/providers/calendar/CalendarSyncAdapter;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 3465
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    .line 2424
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2425
    .local v0, match:I
    packed-switch v0, :pswitch_data_3e

    .line 2445
    :pswitch_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2427
    :pswitch_22
    const-string v1, "vnd.android.cursor.dir/event"

    .line 2443
    :goto_24
    return-object v1

    .line 2429
    :pswitch_25
    const-string v1, "vnd.android.cursor.item/event"

    goto :goto_24

    .line 2431
    :pswitch_28
    const-string v1, "vnd.android.cursor.dir/reminder"

    goto :goto_24

    .line 2433
    :pswitch_2b
    const-string v1, "vnd.android.cursor.item/reminder"

    goto :goto_24

    .line 2435
    :pswitch_2e
    const-string v1, "vnd.android.cursor.dir/calendar-alert"

    goto :goto_24

    .line 2437
    :pswitch_31
    const-string v1, "vnd.android.cursor.dir/calendar-alert-by-instance"

    goto :goto_24

    .line 2439
    :pswitch_34
    const-string v1, "vnd.android.cursor.item/calendar-alert"

    goto :goto_24

    .line 2441
    :pswitch_37
    const-string v1, "vnd.android.cursor.dir/event-instance"

    goto :goto_24

    .line 2443
    :pswitch_3a
    const-string v1, "vnd.android.cursor.dir/busybits"

    goto :goto_24

    .line 2425
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_37
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_28
        :pswitch_2b
        :pswitch_9
        :pswitch_9
        :pswitch_2e
        :pswitch_34
        :pswitch_31
        :pswitch_3a
    .end packed-switch
.end method

.method public insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 23
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 2457
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 2460
    .local v9, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 2461
    .local v12, match:I
    packed-switch v12, :pswitch_data_27e

    .line 2571
    :pswitch_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2463
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_53

    .line 2464
    const-string v4, "_sync_dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2465
    const-string v4, "dtstart"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 2466
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "DTSTART field missing from event"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2473
    :cond_53
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/CalendarProvider;->updateContentValuesFromEvent(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 2474
    .local v5, updatedValues:Landroid/content/ContentValues;
    if-nez v5, :cond_65

    .line 2475
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not insert event."

    .end local v5           #updatedValues:Landroid/content/ContentValues;
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2478
    .restart local v5       #updatedValues:Landroid/content/ContentValues;
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 2479
    .local v6, rowId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/events/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 2480
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_d8

    const-wide/16 v18, -0x1

    cmp-long v4, v6, v18

    if-eqz v4, :cond_d8

    .line 2481
    move-object/from16 v0, p0

    move-wide v1, v6

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 2482
    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/calendar/CalendarProvider;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2483
    move-object/from16 v0, p0

    move-wide v1, v6

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->insertBusyBitsLocked(JLandroid/content/ContentValues;)V

    .line 2487
    const-string v4, "selfAttendeeStatus"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 2488
    const-string v4, "selfAttendeeStatus"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2489
    .local v15, status:I
    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->createAttendeeEntry(JI)V

    .line 2491
    .end local v15           #status:I
    :cond_d2
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->triggerAppWidgetUpdate(J)V

    :cond_d8
    move-object/from16 v4, v17

    .line 2561
    .end local v5           #updatedValues:Landroid/content/ContentValues;
    .end local v6           #rowId:J
    .end local v17           #uri:Landroid/net/Uri;
    :goto_da
    return-object v4

    .line 2496
    :pswitch_db
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_10e

    .line 2497
    const-string v4, "sync_events"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 2498
    .local v16, syncEvents:Ljava/lang/Integer;
    if-eqz v16, :cond_10e

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10e

    .line 2499
    const-string v4, "_sync_account"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2500
    .local v10, account:Ljava/lang/String;
    const-string v4, "url"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2501
    .local v11, calendarUrl:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v4

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->scheduleSync(Ljava/lang/String;ZLjava/lang/String;)V

    .line 2504
    .end local v10           #account:Ljava/lang/String;
    .end local v11           #calendarUrl:Ljava/lang/String;
    .end local v16           #syncEvents:Ljava/lang/Integer;
    :cond_10e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2505
    .local v13, rowID:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://calendar/calendars/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_da

    .line 2513
    .end local v13           #rowID:J
    :pswitch_132
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_140

    .line 2514
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can only insert attendees into the temporary provider."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2517
    :cond_140
    const-string v4, "event_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_153

    .line 2518
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Attendees values must contain an event_id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2521
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2524
    .restart local v13       #rowID:J
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 2526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://calendars/attendees/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_da

    .line 2528
    .end local v13           #rowID:J
    :pswitch_180
    const-string v4, "event_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_193

    .line 2529
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Reminders values must contain an event_id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2532
    :cond_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2534
    .restart local v13       #rowID:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v4

    if-nez v4, :cond_1bc

    .line 2536
    const-string v4, "CalendarProvider"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1b5

    .line 2537
    const-string v4, "CalendarProvider"

    const-string v5, "insertInternal() changing reminder"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_1b5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    .line 2541
    :cond_1bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://calendars/reminders/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_da

    .line 2543
    .end local v13           #rowID:J
    :pswitch_1d5
    const-string v4, "event_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e8

    .line 2544
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "CalendarAlerts values must contain an event_id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2547
    :cond_1e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2549
    .restart local v13       #rowID:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_da

    .line 2551
    .end local v13           #rowID:J
    :pswitch_213
    const-string v4, "event_id"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_226

    .line 2552
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ExtendedProperties values must contain an event_id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2555
    :cond_226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2557
    .restart local v13       #rowID:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://calendars/extendedproperties/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_da

    .line 2559
    .end local v13           #rowID:J
    :pswitch_24b
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v4

    if-eqz v4, :cond_276

    .line 2560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDeletedEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v13

    .line 2561
    .restart local v13       #rowID:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://calendar/deleted_events/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_da

    .line 2569
    .end local v13           #rowID:J
    :cond_276
    :pswitch_276
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Cannot insert into that URL"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2461
    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_276
        :pswitch_276
        :pswitch_24b
        :pswitch_db
        :pswitch_10
        :pswitch_132
        :pswitch_10
        :pswitch_180
        :pswitch_276
        :pswitch_213
        :pswitch_276
        :pswitch_1d5
        :pswitch_276
    .end packed-switch
.end method

.method protected onAccountsChanged([Ljava/lang/String;)V
    .registers 23
    .parameter "accountsArray"

    .prologue
    .line 837
    invoke-super/range {p0 .. p1}, Landroid/content/AbstractSyncableContentProvider;->onAccountsChanged([Ljava/lang/String;)V

    .line 839
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 840
    .local v11, accounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v12, p1

    .local v12, arr$:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_10
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_23

    aget-object v10, v12, v18

    .line 841
    .local v10, account:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .line 844
    .end local v10           #account:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 846
    :try_start_2b
    const-string v5, "Calendars"

    const-string v6, "_sync_account"

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_4f

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    move-object v5, v0

    if-nez v5, :cond_59

    .line 927
    .end local v18           #i$:I
    .end local p1
    :cond_4e
    return-void

    .line 850
    .restart local v18       #i$:I
    .restart local p1
    :catchall_4f
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 861
    :cond_59
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 862
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_75
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v16

    .line 869
    .local v16, handledAccounts:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 871
    .local v4, cr:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/providers/calendar/CalendarProvider;->ACCOUNTS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 873
    .local v13, c:Landroid/database/Cursor;
    :cond_8c
    :goto_8c
    :try_start_8c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 874
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 875
    .restart local v10       #account:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 878
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 884
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catchall {:try_start_8c .. :try_end_b4} :catchall_b5

    goto :goto_8c

    .line 888
    .end local v10           #account:Ljava/lang/String;
    :catchall_b5
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 889
    const/4 v13, 0x0

    throw v5

    .line 888
    :cond_bb
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 889
    const/4 v13, 0x0

    .line 895
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local p1
    :cond_c7
    :goto_c7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 896
    .restart local v14       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 897
    .restart local v10       #account:Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 898
    .local v17, hasCalendar:Z
    if-nez v17, :cond_c7

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    move-object v5, v0

    const-string v6, "/private/full-selfattendance"

    const/4 v7, 0x0

    invoke-virtual {v5, v10, v6, v7}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;->getDefaultCalendarUrl(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/client/QueryParams;)Ljava/lang/String;

    move-result-object v15

    .line 907
    .local v15, feedUrl:Ljava/lang/String;
    invoke-static {v10, v15}, Lcom/android/providers/calendar/CalendarSyncAdapter;->rewriteUrlforAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 911
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 912
    .local v20, values:Landroid/content/ContentValues;
    const-string v5, "_sync_account"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v5, "url"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v5, "displayName"

    const-string v6, "Default"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v5, "sync_events"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    const-string v5, "selected"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v5, "hidden"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string v5, "color"

    const v6, -0xd6ad5d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string v5, "timezone"

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v5, "access_level"

    const/16 v6, 0x2bc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    sget-object v5, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 925
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->scheduleSync(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_c7
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 312
    invoke-super {p0}, Landroid/content/AbstractSyncableContentProvider;->onCreate()Z

    .line 315
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, c:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    new-instance v2, Lcom/android/providers/calendar/MetaData;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v2, v3}, Lcom/android/providers/calendar/MetaData;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 329
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider;->updateTimezoneDependentFields()V

    .line 331
    const/4 v2, 0x1

    return v2
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter "db"

    .prologue
    const-string v5, "Events"

    const-string v4, "DeletedEvents"

    .line 415
    const-string v0, "Events"

    const-string v0, "DeletedEvents"

    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 418
    new-instance v0, Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient;

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Android-GData-Calendar/1.1"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gdata/client/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;

    new-instance v3, Lcom/google/android/gdata/client/AndroidXmlParserFactory;

    invoke-direct {v3}, Lcom/google/android/gdata/client/AndroidXmlParserFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata/calendar/parser/xml/XmlCalendarGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {v0, v1, v2}, Lcom/google/wireless/gdata/calendar/client/CalendarClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarClient:Lcom/google/wireless/gdata/calendar/client/CalendarClient;

    .line 424
    :cond_2d
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Calendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 425
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Events"

    invoke-direct {v0, p1, v5}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 426
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "EventsRawTimes"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 427
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "DeletedEvents"

    invoke-direct {v0, p1, v4}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mDeletedEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 428
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Instances"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 429
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Attendees"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 430
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Reminders"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 431
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 432
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ExtendedProperties"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 434
    return-void
.end method

.method public onSyncStop(Landroid/content/SyncContext;Z)V
    .registers 6
    .parameter "context"
    .parameter "success"

    .prologue
    const-string v2, "CalendarProvider"

    .line 3473
    invoke-super {p0, p1, p2}, Landroid/content/AbstractSyncableContentProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 3474
    const-string v0, "CalendarProvider"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3475
    const-string v0, "CalendarProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncStop() success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    .line 3478
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/calendar/CalendarProvider;->triggerAppWidgetUpdate(J)V

    .line 3479
    return-void
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 36
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 933
    .local v13, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 938
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v26

    .line 939
    .local v26, match:I
    packed-switch v26, :pswitch_data_2e2

    .line 1071
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 942
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_31
    const-string v2, "Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 943
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 944
    const-string v2, "Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1075
    .end local p0
    :cond_40
    :goto_40
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move-object/from16 v19, v13

    move-object/from16 v20, p2

    move-object/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v25, p5

    invoke-virtual/range {v18 .. v25}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .local v28, ret:Landroid/database/Cursor;
    move-object/from16 v2, v28

    .line 1077
    .end local v13           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v28           #ret:Landroid/database/Cursor;
    .end local p4
    :goto_56
    return-object v2

    .line 947
    .restart local v13       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0
    .restart local p4
    :pswitch_57
    const-string v2, "Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 948
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 949
    const-string v2, "Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 950
    const-string v2, " AND Events._id="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_40

    .line 954
    .restart local p0
    :pswitch_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 955
    const-string v2, "DeletedEvents"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_40

    .line 958
    :cond_89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 961
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_a5
    const-string v2, "Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 964
    const/16 v29, 0x0

    .line 965
    .local v29, update:Ljava/lang/String;
    const-string v2, "update"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 966
    const-string v2, "1"

    move-object v0, v2

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider;->fetchCalendarsFromServer()V

    goto/16 :goto_40

    .line 972
    .end local v29           #update:Ljava/lang/String;
    :pswitch_c5
    const-string v2, "Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 973
    const-string v2, "_id="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 974
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 980
    .restart local p0
    :pswitch_e2
    :try_start_e2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_f4
    .catch Ljava/lang/NumberFormatException; {:try_start_e2 .. :try_end_f4} :catch_116

    move-result-wide v4

    .line 986
    .local v4, begin:J
    :try_start_f5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_107
    .catch Ljava/lang/NumberFormatException; {:try_start_f5 .. :try_end_107} :catch_140

    move-result-wide v6

    .local v6, end:J
    move-object/from16 v2, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 991
    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_56

    .line 981
    .end local v4           #begin:J
    .end local v6           #end:J
    :catch_116
    move-exception v2

    move-object/from16 v27, v2

    .line 982
    .local v27, nfe:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 987
    .end local v27           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #begin:J
    .restart local p0
    :catch_140
    move-exception v2

    move-object/from16 v27, v2

    .line 988
    .restart local v27       #nfe:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse end "

    .end local v4           #begin:J
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 997
    .end local v27           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local p0
    .restart local p4
    :pswitch_16a
    :try_start_16a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_17c
    .catch Ljava/lang/NumberFormatException; {:try_start_16a .. :try_end_17c} :catch_19f

    move-result v10

    .line 1003
    .local v10, startDay:I
    :try_start_17d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_18f
    .catch Ljava/lang/NumberFormatException; {:try_start_17d .. :try_end_18f} :catch_1c9

    move-result v11

    .local v11, endDay:I
    move-object/from16 v8, p0

    move-object v9, v3

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    .line 1008
    invoke-direct/range {v8 .. v14}, Lcom/android/providers/calendar/CalendarProvider;->handleBusyBitsQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v13           #db:Landroid/database/sqlite/SQLiteDatabase;
    move-result-object v2

    goto/16 :goto_56

    .line 998
    .end local v10           #startDay:I
    .end local v11           #endDay:I
    .restart local v13       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_19f
    move-exception v2

    move-object/from16 v27, v2

    .line 999
    .restart local v27       #nfe:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse start day "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1004
    .end local v27           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10       #startDay:I
    .restart local p0
    :catch_1c9
    move-exception v2

    move-object/from16 v27, v2

    .line 1005
    .restart local v27       #nfe:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse end day "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    .end local v10           #startDay:I
    .end local v27           #nfe:Ljava/lang/NumberFormatException;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local p0
    .restart local p4
    :pswitch_1f3
    const-string v2, "Attendees, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1012
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1013
    const-string v2, "Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1014
    const-string v2, " AND Events._id=Attendees.event_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 1017
    :pswitch_209
    const-string v2, "Attendees, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1018
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sAttendeesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1019
    const-string v2, "Attendees._id="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1020
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1021
    const-string v2, " AND Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1022
    const-string v2, " AND Events._id=Attendees.event_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 1025
    .restart local p0
    :pswitch_235
    const-string v2, "Reminders"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1028
    :pswitch_23c
    const-string v2, "Reminders, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1029
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sRemindersProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1030
    const-string v2, "Reminders._id="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1032
    const-string v2, " AND Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1033
    const-string v2, " AND Events._id=Reminders.event_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 1036
    :pswitch_25e
    const-string v2, "CalendarAlerts, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1037
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1038
    const-string v2, "Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1039
    const-string v2, " AND Events._id=CalendarAlerts.event_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 1042
    :pswitch_274
    const-string v2, "CalendarAlerts, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1043
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1044
    const-string v2, "Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1045
    const-string v2, " AND Events._id=CalendarAlerts.event_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1046
    const-string v17, "event_id,begin"

    .line 1047
    .local v17, groupBy:Ljava/lang/String;
    const/16 v18, 0x0

    move-object v12, v3

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_56

    .line 1050
    .end local v17           #groupBy:Ljava/lang/String;
    :pswitch_29b
    const-string v2, "CalendarAlerts, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1051
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1052
    const-string v2, "CalendarAlerts._id="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1053
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1054
    const-string v2, " AND Events.calendar_id=Calendars._id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1055
    const-string v2, " AND Events._id=CalendarAlerts.event_id"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 1058
    :pswitch_2bd
    const-string v2, "ExtendedProperties"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 1061
    :pswitch_2c4
    const-string v2, "ExtendedProperties, Events, Calendars"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1064
    const-string v2, "ExtendedProperties._id="

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1065
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_40

    .line 939
    nop

    :pswitch_data_2e2
    .packed-switch 0x1
        :pswitch_31
        :pswitch_57
        :pswitch_e2
        :pswitch_7d
        :pswitch_a5
        :pswitch_c5
        :pswitch_1f3
        :pswitch_209
        :pswitch_235
        :pswitch_23c
        :pswitch_2bd
        :pswitch_2c4
        :pswitch_25e
        :pswitch_29b
        :pswitch_274
        :pswitch_16a
    .end packed-switch
.end method

.method scheduleNextAlarm(Z)V
    .registers 3
    .parameter "removeAlarms"

    .prologue
    .line 3557
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/calendar/CalendarProvider$AlarmScheduler;-><init>(Lcom/android/providers/calendar/CalendarProvider;Z)V

    .line 3558
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3559
    return-void
.end method

.method scheduleNextAlarmCheck(J)V
    .registers 13
    .parameter "triggerTime"

    .prologue
    const/4 v8, 0x0

    const-string v9, "CalendarProvider"

    .line 3526
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    .line 3527
    .local v2, manager:Landroid/app/AlarmManager;
    if-nez v2, :cond_11

    .line 3528
    const-string v6, "CalendarProvider"

    const-string v6, "scheduleNextAlarmCheck() cannot get AlarmManager"

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :goto_10
    return-void

    .line 3531
    :cond_11
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3532
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3533
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3534
    const/high16 v6, 0x2000

    invoke-static {v0, v8, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3536
    .local v3, pending:Landroid/app/PendingIntent;
    if-eqz v3, :cond_2c

    .line 3538
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3540
    :cond_2c
    const/high16 v6, 0x1000

    invoke-static {v0, v8, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3543
    const-string v6, "CalendarProvider"

    const/4 v6, 0x3

    invoke-static {v9, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 3544
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 3545
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 3546
    const-string v6, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3547
    .local v5, timeStr:Ljava/lang/String;
    const-string v6, "CalendarProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scheduleNextAlarmCheck at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    .end local v4           #time:Landroid/text/format/Time;
    .end local v5           #timeStr:Ljava/lang/String;
    :cond_65
    invoke-virtual {v2, v8, p1, p2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_10
.end method

.method public updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "selectionArgs"

    .prologue
    .line 3247
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    .line 3256
    .local v6, match:I
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3258
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v6, :pswitch_data_1b0

    .line 3366
    :pswitch_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3261
    :pswitch_26
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3262
    .local v2, id:J
    const-string v0, "sync_events"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 3263
    .local v8, syncEvents:Ljava/lang/Integer;
    if-eqz v8, :cond_43

    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_43

    .line 3264
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    const/4 v0, 0x1

    :goto_40
    invoke-direct {p0, v2, v3, v0}, Lcom/android/providers/calendar/CalendarProvider;->modifyCalendarSubscription(JZ)V

    .line 3267
    :cond_43
    const-string v0, "Calendars"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v2           #id:J
    move-result v7

    .line 3268
    .local v7, result:I
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_72

    .line 3271
    const-string v0, "selected"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    if-eqz v8, :cond_72

    .line 3273
    :cond_6d
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->clearBusyBitRange()V

    :cond_72
    move v0, v7

    .line 3363
    .end local v6           #match:I
    .end local v7           #result:I
    .end local v8           #syncEvents:Ljava/lang/Integer;
    :goto_73
    return v0

    .line 3264
    .restart local v2       #id:J
    .restart local v6       #match:I
    .restart local v8       #syncEvents:Ljava/lang/Integer;
    :cond_74
    const/4 v0, 0x0

    goto :goto_40

    .line 3281
    .end local v2           #id:J
    .end local v8           #syncEvents:Ljava/lang/Integer;
    :pswitch_76
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3282
    .restart local v2       #id:J
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 3283
    const-string v0, "_sync_dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3289
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Updating selfAttendeeStatus in Events table is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3295
    :cond_9a
    const-string v0, "htmlUri"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Updating htmlUri in Events table is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3301
    :cond_aa
    invoke-direct {p0, v2, v3, p2}, Lcom/android/providers/calendar/CalendarProvider;->updateBusyBitsLocked(JLandroid/content/ContentValues;)V

    .line 3304
    :cond_ad
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarProvider;->updateContentValuesFromEvent(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 3305
    .local v1, updatedValues:Landroid/content/ContentValues;
    if-nez v1, :cond_bc

    .line 3306
    const-string v0, "CalendarProvider"

    const-string v1, "Could not update event."

    .end local v1           #updatedValues:Landroid/content/ContentValues;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    const/4 v0, 0x0

    goto :goto_73

    .line 3310
    .restart local v1       #updatedValues:Landroid/content/ContentValues;
    :cond_bc
    const-string v0, "Events"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    .end local v6           #match:I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 3311
    .restart local v7       #result:I
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_105

    .line 3312
    if-lez v7, :cond_105

    .line 3313
    invoke-direct {p0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarProvider;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 3314
    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 3316
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105

    .line 3319
    const-string v0, "CalendarProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v1           #updatedValues:Landroid/content/ContentValues;
    move-result v0

    if-eqz v0, :cond_fe

    .line 3320
    const-string v0, "CalendarProvider"

    const-string v1, "updateInternal() changing event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_fe
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    .line 3323
    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider;->triggerAppWidgetUpdate(J)V

    :cond_105
    move v0, v7

    .line 3327
    goto/16 :goto_73

    .line 3332
    .end local v2           #id:J
    .end local v7           #result:I
    .restart local v6       #match:I
    :pswitch_108
    invoke-direct {p0, v5, p2}, Lcom/android/providers/calendar/CalendarProvider;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 3334
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3335
    .restart local v2       #id:J
    const-string v0, "Attendees"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v2           #id:J
    move-result v0

    goto/16 :goto_73

    .line 3339
    :pswitch_12b
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3340
    .restart local v2       #id:J
    const-string v0, "CalendarAlerts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v2           #id:J
    move-result v0

    goto/16 :goto_73

    .line 3344
    :pswitch_14b
    const-string v0, "CalendarAlerts"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_73

    .line 3348
    :pswitch_154
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3349
    .restart local v2       #id:J
    const-string v0, "Reminders"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v2           #id:J
    move-result v7

    .line 3350
    .restart local v7       #result:I
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_18c

    .line 3353
    const-string v0, "CalendarProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_188

    .line 3354
    const-string v0, "CalendarProvider"

    const-string v1, "updateInternal() changing reminder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3356
    :cond_188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    :cond_18c
    move v0, v7

    .line 3358
    goto/16 :goto_73

    .line 3362
    .end local v7           #result:I
    :pswitch_18f
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 3363
    .restart local v2       #id:J
    const-string v0, "ExtendedProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v2           #id:J
    move-result v0

    goto/16 :goto_73

    .line 3258
    nop

    :pswitch_data_1b0
    .packed-switch 0x2
        :pswitch_76
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_26
        :pswitch_d
        :pswitch_108
        :pswitch_d
        :pswitch_154
        :pswitch_d
        :pswitch_18f
        :pswitch_14b
        :pswitch_12b
    .end packed-switch
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .registers 13
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 438
    const-string v6, "CalendarProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Upgrading DB from version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/16 v6, 0x2e

    if-ge p2, v6, :cond_2e

    .line 441
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 443
    const/4 v6, 0x0

    .line 571
    :goto_2d
    return v6

    .line 446
    :cond_2e
    const/16 v6, 0x2e

    if-ne p2, v6, :cond_45

    .line 447
    const-string v6, "CalendarProvider"

    const-string v7, "Upgrading CalendarAlerts table"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v6, "UPDATE CalendarAlerts SET reminder_id=NULL;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v6, "ALTER TABLE CalendarAlerts ADD COLUMN minutes INTEGER DEFAULT 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    add-int/lit8 p2, p2, 0x1

    .line 453
    :cond_45
    const/16 v6, 0x2f

    if-ne p2, v6, :cond_51

    .line 455
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 457
    const/4 v6, 0x0

    goto :goto_2d

    .line 460
    :cond_51
    const/16 v6, 0x30

    if-ne p2, v6, :cond_5d

    .line 462
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 464
    const/4 v6, 0x0

    goto :goto_2d

    .line 467
    :cond_5d
    const/16 v6, 0x31

    if-ne p2, v6, :cond_7e

    .line 468
    const-string v6, "CalendarProvider"

    const-string v7, "Upgrading DeletedEvents table"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v6, "ALTER TABLE DeletedEvents ADD COLUMN calendar_id INTEGER;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 479
    const-string v6, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 480
    const-string v6, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    const-string v6, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    add-int/lit8 p2, p2, 0x1

    .line 489
    :cond_7e
    const/16 v6, 0x32

    if-ne p2, v6, :cond_89

    .line 492
    const-string v6, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 493
    add-int/lit8 p2, p2, 0x1

    .line 496
    :cond_89
    const/16 v6, 0x33

    if-ne p2, v6, :cond_f7

    .line 503
    const-string v6, "ALTER TABLE Events ADD COLUMN originalAllDay INTEGER;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 521
    const-string v6, "SELECT _id,originalEvent FROM Events WHERE originalEvent IS NOT NULL"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 523
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_f5

    .line 525
    :cond_9b
    :goto_9b
    :try_start_9b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_f2

    .line 526
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 527
    .local v2, id:J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, originalEvent:Ljava/lang/String;
    const-string v6, "SELECT allDay FROM Events WHERE _sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b6
    .catchall {:try_start_9b .. :try_end_b6} :catchall_e8

    move-result-object v5

    .line 532
    .local v5, recur:Landroid/database/Cursor;
    if-eqz v5, :cond_9b

    .line 540
    :try_start_b9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 541
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 542
    .local v0, allDay:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE Events SET originalAllDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_b9 .. :try_end_e4} :catchall_ed

    .line 546
    .end local v0           #allDay:I
    :cond_e4
    :try_start_e4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_9b

    .line 550
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :catchall_e8
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 546
    .restart local v2       #id:J
    .restart local v4       #originalEvent:Ljava/lang/String;
    .restart local v5       #recur:Landroid/database/Cursor;
    :catchall_ed
    move-exception v6

    :try_start_ee
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_e8

    .line 550
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :cond_f2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 553
    :cond_f5
    add-int/lit8 p2, p2, 0x1

    .line 556
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_f7
    const/16 v6, 0x34

    if-ne p2, v6, :cond_113

    .line 557
    const-string v6, "CalendarProvider"

    const-string v7, "Upgrading CalendarAlerts table"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v6, "ALTER TABLE CalendarAlerts ADD COLUMN creationTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 559
    const-string v6, "ALTER TABLE CalendarAlerts ADD COLUMN receivedTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 560
    const-string v6, "ALTER TABLE CalendarAlerts ADD COLUMN notifyTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 561
    add-int/lit8 p2, p2, 0x1

    .line 564
    :cond_113
    const/16 v6, 0x35

    if-ne p2, v6, :cond_125

    .line 565
    const-string v6, "CalendarProvider"

    const-string v7, "adding eventSyncAccountAndIdIndex"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v6, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    add-int/lit8 p2, p2, 0x1

    .line 571
    :cond_125
    const/4 v6, 0x1

    goto/16 :goto_2d
.end method
