.class public Lcom/android/calendar/EditEvent;
.super Landroid/app/Activity;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EditEvent$QueryHandler;,
        Lcom/android/calendar/EditEvent$CalendarsAdapter;,
        Lcom/android/calendar/EditEvent$DateClickListener;,
        Lcom/android/calendar/EditEvent$DateListener;,
        Lcom/android/calendar/EditEvent$TimeClickListener;,
        Lcom/android/calendar/EditEvent$TimeListener;
    }
.end annotation


# static fields
.field private static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field private static final CALENDARS_INDEX_TIMEZONE:I = 0x2

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "access_level>=500 AND sync_events=1"

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DOES_NOT_REPEAT:I = 0x0

.field public static final EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field private static final EVENT_INDEX_ALL_DAY:I = 0x4

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x6

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x2

.field private static final EVENT_INDEX_DTSTART:I = 0x7

.field private static final EVENT_INDEX_DURATION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x3

.field private static final EVENT_INDEX_HAS_ALARM:I = 0x5

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_RRULE:I = 0xa

.field private static final EVENT_INDEX_SYNC_ID:I = 0xb

.field private static final EVENT_INDEX_TIMEZONE:I = 0x9

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_INDEX_TRANSPARENCY:I = 0xc

.field private static final EVENT_INDEX_VISIBILITY:I = 0xd

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_REMINDERS:I = 0x5

.field private static final MENU_ADD_REMINDER:I = 0x1

.field private static final MENU_GROUP_HIDE_OPTIONS:I = 0x3

.field private static final MENU_GROUP_REMINDER:I = 0x1

.field private static final MENU_GROUP_SHOW_OPTIONS:I = 0x2

.field private static final MENU_HIDE_EXTRA_OPTIONS:I = 0x3

.field private static final MENU_SHOW_EXTRA_OPTIONS:I = 0x2

.field private static final MODIFY_ALL:I = 0x2

.field private static final MODIFY_ALL_FOLLOWING:I = 0x3

.field private static final MODIFY_SELECTED:I = 0x1

.field private static final MODIFY_UNINITIALIZED:I = 0x0

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final REPEATS_CUSTOM:I = 0x7

.field private static final REPEATS_DAILY:I = 0x1

.field private static final REPEATS_EVERY_WEEKDAY:I = 0x2

.field private static final REPEATS_MONTHLY_ON_DAY:I = 0x5

.field private static final REPEATS_MONTHLY_ON_DAY_COUNT:I = 0x4

.field private static final REPEATS_WEEKLY_ON_DAY:I = 0x3

.field private static final REPEATS_YEARLY:I = 0x6

.field private static earlierDescriptionText:Ljava/lang/String;

.field private static earlierLocationText:Ljava/lang/String;

.field private static earlierText:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAlarmF:Z

.field private mAllDayCheckBox:Landroid/widget/CheckBox;

.field private mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCalendarsQueryComplete:Z

.field private mCalendarsSpinner:Landroid/widget/Spinner;

.field private mDefaultReminderMinutes:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mDescs:Ljava/lang/String;

.field private mDiscardButton:Landroid/widget/Button;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndTime:Landroid/text/format/Time;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventRecurrence:Landroid/pim/EventRecurrence;

.field private mExtraOptions:Landroid/widget/LinearLayout;

.field private mFirstDayOfWeek:I

.field private mInitialValues:Landroid/content/ContentValues;

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mLocations:Ljava/lang/String;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

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

.field private mQueryHandler:Lcom/android/calendar/EditEvent$QueryHandler;

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRemindersSeparator:Landroid/view/View;

.field private mRepeatsSpinner:Landroid/widget/Spinner;

.field private mRrule:Ljava/lang/String;

.field private mSaveAfterQueryComplete:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartTime:Landroid/text/format/Time;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mSyncId:Ljava/lang/String;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitles:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVisibilitySpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "_id"

    .line 111
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "transparency"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "visibility"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 149
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "timezone"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/EditEvent;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 159
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Landroid/pim/EventRecurrence;

    invoke-direct {v0}, Landroid/pim/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 234
    iput v1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    .line 808
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mTitles:Ljava/lang/String;

    .line 809
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mLocations:Ljava/lang/String;

    .line 810
    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mDescs:Ljava/lang/String;

    .line 811
    iput-boolean v1, p0, Lcom/android/calendar/EditEvent;->mAlarmF:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/EditEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/calendar/EditEvent;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/EditEvent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/EditEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/calendar/EditEvent;->mCalendarsQueryComplete:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/EditEvent;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/calendar/EditEvent;->earlierText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Lcom/android/calendar/EditEvent;->earlierText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/calendar/EditEvent;->earlierLocationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Lcom/android/calendar/EditEvent;->earlierLocationText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/calendar/EditEvent;->earlierDescriptionText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    sput-object p0, Lcom/android/calendar/EditEvent;->earlierDescriptionText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/content/Context;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/calendar/EditEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->addReminder()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/calendar/EditEvent;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/calendar/EditEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/calendar/EditEvent;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 9
    .parameter "context"
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1227
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    .line 1246
    .end local p0
    :goto_b
    return-void

    .line 1234
    .restart local p0
    :cond_c
    const/4 v4, 0x0

    invoke-static {p0, p3, v4}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 1235
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1236
    .local v3, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_16
    if-ge v0, v3, :cond_32

    .line 1237
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p3, v4, :cond_2f

    .line 1238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1239
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 1236
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1244
    :cond_32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b
.end method

.method private addRecurrenceRule(Landroid/content/ContentValues;)V
    .registers 16
    .parameter "values"

    .prologue
    .line 1609
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateRecurrenceRule()V

    .line 1611
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 1629
    :goto_7
    return-void

    .line 1615
    :cond_8
    const-string v10, "rrule"

    iget-object v11, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1617
    .local v3, end:J
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 1620
    .local v8, start:J
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 1621
    .local v5, isAllDay:Z
    if-eqz v5, :cond_52

    .line 1622
    sub-long v10, v3, v8

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long v0, v10, v12

    .line 1623
    .local v0, days:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .end local v0           #days:J
    .local v2, duration:Ljava/lang/String;
    :goto_4c
    const-string v10, "duration"

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1625
    .end local v2           #duration:Ljava/lang/String;
    :cond_52
    sub-long v10, v3, v8

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 1626
    .local v6, seconds:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #duration:Ljava/lang/String;
    goto :goto_4c
.end method

.method private addReminder()V
    .registers 7

    .prologue
    .line 1027
    iget v0, p0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    if-nez v0, :cond_15

    .line 1028
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 1034
    :goto_11
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    .line 1035
    return-void

    .line 1031
    :cond_15
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_11
.end method

.method static addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .registers 10
    .parameter "activity"
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1196
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_9

    .line 1197
    const/4 p0, 0x0

    .line 1221
    .end local p0
    :goto_8
    return p0

    .line 1200
    .restart local p0
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1201
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0c0034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1202
    .local v1, parent:Landroid/widget/LinearLayout;
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1203
    .local v2, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1205
    const v0, 0x7f0c0039

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 1206
    .local v3, spinner:Landroid/widget/Spinner;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1207
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v1           #parent:Landroid/widget/LinearLayout;
    move-result-object v0

    .end local v0           #res:Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1208
    const v1, 0x1090008

    .line 1209
    .local v1, resource:I
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1210
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const p0, 0x1090009

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1211
    .end local p0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1214
    const p0, 0x7f0c003a

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 1215
    .local p0, reminderRemoveButton:Landroid/widget/ImageButton;
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1217
    invoke-static {p3, p5}, Lcom/android/calendar/EditEvent;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result p0

    .line 1218
    .local p0, index:I
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1219
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    const/4 p0, 0x1

    goto :goto_8
.end method

.method private checkTimeDependentFields(Landroid/content/ContentValues;)V
    .registers 25
    .parameter "values"

    .prologue
    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "beginTime"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1504
    .local v13, oldBegin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "endTime"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1505
    .local v15, oldEnd:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "allDay"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_e5

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 1506
    .local v12, oldAllDay:Z
    :goto_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "rrule"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1507
    .local v17, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "eventTimezone"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1509
    .local v20, oldTimezone:Ljava/lang/String;
    const-string v21, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1510
    .local v4, newBegin:J
    const-string v21, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1511
    .local v6, newEnd:J
    const-string v21, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_eb

    const/16 v21, 0x1

    move/from16 v3, v21

    .line 1512
    .local v3, newAllDay:Z
    :goto_7e
    const-string v21, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1513
    .local v8, newRrule:Ljava/lang/String;
    const-string v21, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1516
    .local v9, newTimezone:Ljava/lang/String;
    cmp-long v21, v13, v4

    if-nez v21, :cond_f0

    cmp-long v21, v15, v6

    if-nez v21, :cond_f0

    if-ne v12, v3, :cond_f0

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f0

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f0

    .line 1519
    const-string v21, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1520
    const-string v21, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1521
    const-string v21, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1522
    const-string v21, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1523
    const-string v21, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1524
    const-string v21, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1548
    :cond_e4
    :goto_e4
    return-void

    .line 1505
    .end local v3           #newAllDay:Z
    .end local v4           #newBegin:J
    .end local v6           #newEnd:J
    .end local v8           #newRrule:Ljava/lang/String;
    .end local v9           #newTimezone:Ljava/lang/String;
    .end local v12           #oldAllDay:Z
    .end local v17           #oldRrule:Ljava/lang/String;
    .end local v20           #oldTimezone:Ljava/lang/String;
    :cond_e5
    const/16 v21, 0x0

    move/from16 v12, v21

    goto/16 :goto_36

    .line 1511
    .restart local v4       #newBegin:J
    .restart local v6       #newEnd:J
    .restart local v12       #oldAllDay:Z
    .restart local v17       #oldRrule:Ljava/lang/String;
    .restart local v20       #oldTimezone:Ljava/lang/String;
    :cond_eb
    const/16 v21, 0x0

    move/from16 v3, v21

    goto :goto_7e

    .line 1528
    .restart local v3       #newAllDay:Z
    .restart local v8       #newRrule:Ljava/lang/String;
    .restart local v9       #newTimezone:Ljava/lang/String;
    :cond_f0
    if-eqz v17, :cond_e4

    if-eqz v8, :cond_e4

    .line 1539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e4

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1541
    .local v18, oldStartMillis:J
    cmp-long v21, v13, v4

    if-eqz v21, :cond_116

    .line 1543
    sub-long v10, v4, v13

    .line 1544
    .local v10, offset:J
    add-long v18, v18, v10

    .line 1546
    .end local v10           #offset:J
    :cond_116
    const-string v21, "dtstart"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_e4
.end method

.method static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "minutes"
    .parameter "abbrev"

    .prologue
    .line 1270
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1273
    .local v2, resources:Landroid/content/res/Resources;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_24

    .line 1274
    move v3, p1

    .line 1275
    .local v3, value:I
    if-eqz p2, :cond_21

    .line 1276
    const v1, 0x7f0a0001

    .line 1288
    .local v1, resId:I
    :goto_e
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1278
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_21
    const/high16 v1, 0x7f0a

    .restart local v1       #resId:I
    goto :goto_e

    .line 1280
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_24
    rem-int/lit16 v4, p1, 0x5a0

    if-eqz v4, :cond_2e

    .line 1281
    div-int/lit8 v3, p1, 0x3c

    .line 1282
    .restart local v3       #value:I
    const v1, 0x7f0a0002

    .restart local v1       #resId:I
    goto :goto_e

    .line 1284
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_2e
    div-int/lit16 v3, p1, 0x5a0

    .line 1285
    .restart local v3       #value:I
    const v1, 0x7f0a0003

    .restart local v1       #resId:I
    goto :goto_e
.end method

.method private static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .registers 6
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1256
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1257
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2b

    .line 1259
    const-string v1, "Cal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find minutes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/4 v1, 0x0

    .line 1262
    :goto_2a
    return v1

    :cond_2b
    move v1, v0

    goto :goto_2a
.end method

.method private getContentValuesFromUi()Landroid/content/ContentValues;
    .registers 16

    .prologue
    .line 1707
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1708
    .local v10, title:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 1709
    .local v5, isAllDay:Z
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1710
    .local v6, location:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1712
    .local v2, description:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1714
    .local v11, values:Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 1718
    .local v9, timezone:Ljava/lang/String;
    if-eqz v5, :cond_df

    .line 1721
    const-string v9, "UTC"

    .line 1722
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 1723
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->minute:I

    .line 1724
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    .line 1725
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iput-object v9, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1726
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 1728
    .local v7, startMillis:J
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 1729
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->minute:I

    .line 1730
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    .line 1731
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v14, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Landroid/text/format/Time;->monthDay:I

    .line 1732
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iput-object v9, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1733
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 1735
    .local v3, endMillis:J
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v13, :cond_d2

    .line 1737
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    .line 1765
    .local v0, calendarId:J
    :goto_74
    const-string v13, "calendar_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1766
    const-string v13, "eventTimezone"

    invoke-virtual {v11, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    const-string v13, "title"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    const-string v13, "allDay"

    if-eqz v5, :cond_125

    const/4 v14, 0x1

    :goto_8c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1769
    const-string v13, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1770
    const-string v13, "dtend"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1771
    const-string v13, "description"

    invoke-virtual {v11, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    const-string v13, "eventLocation"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    const-string v13, "transparency"

    iget-object v14, p0, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1775
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v12

    .line 1776
    .local v12, visibility:I
    if-lez v12, :cond_c8

    .line 1778
    add-int/lit8 v12, v12, 0x1

    .line 1780
    :cond_c8
    const-string v13, "visibility"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1782
    return-object v11

    .line 1739
    .end local v0           #calendarId:J
    .end local v12           #visibility:I
    :cond_d2
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v14, "calendar_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0       #calendarId:J
    goto :goto_74

    .line 1742
    .end local v0           #calendarId:J
    .end local v3           #endMillis:J
    .end local v7           #startMillis:J
    :cond_df
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 1743
    .restart local v7       #startMillis:J
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1744
    .restart local v3       #endMillis:J
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v13, :cond_115

    .line 1746
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v14, 0x9

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1751
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_107

    .line 1752
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    .line 1754
    :cond_107
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v14, "calendar_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0       #calendarId:J
    goto/16 :goto_74

    .line 1757
    .end local v0           #calendarId:J
    :cond_115
    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    .line 1761
    .restart local v0       #calendarId:J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_74

    .line 1768
    :cond_125
    const/4 v14, 0x0

    goto/16 :goto_8c
.end method

.method private static getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1835
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v0

    .line 1840
    :goto_b
    return-object v1

    :cond_c
    const-string v1, "NULL"

    goto :goto_b
.end method

.method private static getOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1825
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 1827
    .local v0, operatorCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v0

    .line 1830
    :goto_b
    return-object v1

    :cond_c
    const-string v1, "NULL"

    goto :goto_b
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 776
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 778
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    :cond_e
    const-string v6, "eventLocation"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 783
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    :cond_1b
    const-string v6, "description"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, description:Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 788
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    :cond_28
    const-string v6, "transparency"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 792
    .local v0, availability:I
    if-eq v0, v7, :cond_35

    .line 793
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 796
    :cond_35
    const-string v6, "visibility"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 797
    .local v5, visibility:I
    if-eq v5, v7, :cond_42

    .line 798
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 801
    :cond_42
    const-string v6, "rrule"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 802
    .local v3, rrule:Ljava/lang/String;
    if-eqz v3, :cond_51

    .line 803
    iput-object v3, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 804
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v6, v3}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 806
    :cond_51
    return-void
.end method

.method private isCustomRecurrence()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1846
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    if-eqz v0, :cond_10

    :cond_e
    move v0, v2

    .line 1875
    :goto_f
    return v0

    .line 1850
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    if-nez v0, :cond_18

    move v0, v1

    .line 1851
    goto :goto_f

    .line 1854
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_56

    :cond_1f
    move v0, v2

    .line 1875
    goto :goto_f

    :pswitch_21
    move v0, v1

    .line 1856
    goto :goto_f

    .line 1858
    :pswitch_23
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v0}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    .line 1859
    goto :goto_f

    .line 1860
    :cond_33
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-ne v0, v2, :cond_1f

    move v0, v1

    .line 1861
    goto :goto_f

    .line 1865
    :pswitch_3b
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v0}, Landroid/pim/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v1

    .line 1866
    goto :goto_f

    .line 1867
    :cond_45
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-ne v0, v2, :cond_1f

    move v0, v1

    .line 1868
    goto :goto_f

    :pswitch_53
    move v0, v1

    .line 1872
    goto :goto_f

    .line 1854
    nop

    :pswitch_data_56
    .packed-switch 0x4
        :pswitch_21
        :pswitch_23
        :pswitch_3b
        :pswitch_53
    .end packed-switch
.end method

.method private isEmpty()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1786
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1787
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    move v3, v4

    .line 1801
    :goto_12
    return v3

    .line 1791
    :cond_13
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1792
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_25

    move v3, v4

    .line 1793
    goto :goto_12

    .line 1796
    :cond_25
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1797
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    move v3, v4

    .line 1798
    goto :goto_12

    .line 1801
    :cond_37
    const/4 v3, 0x1

    goto :goto_12
.end method

.method private isFirstEventInSeries()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1452
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const-string v4, "dtstart"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1453
    .local v0, dtStart:I
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1454
    .local v1, start:J
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_1b

    move v3, v5

    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method private isSyncMLEnabled()Z
    .registers 5

    .prologue
    .line 1809
    const/4 v0, 0x1

    .line 1810
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "SYNCML_ENABLE_MENU_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1812
    .local v1, enableMenu:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1813
    const/4 v2, 0x0

    .line 1821
    :goto_12
    return v2

    .line 1816
    :cond_13
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1817
    const/4 v0, 0x1

    :goto_1c
    move v2, v0

    .line 1821
    goto :goto_12

    .line 1819
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private isWeekdayEvent()Z
    .registers 3

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_f

    .line 1880
    const/4 v0, 0x1

    .line 1882
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private populateRepeats()V
    .registers 24

    .prologue
    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    .line 1091
    .local v17, time:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1092
    .local v13, r:Landroid/content/res/Resources;
    const v16, 0x1090008

    .line 1094
    .local v16, resource:I
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x2

    const/16 v21, 0x3

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x6

    const/16 v21, 0x7

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    .line 1103
    .local v6, days:[Ljava/lang/String;
    const v20, 0x7f060008

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 1108
    .local v11, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v9

    .line 1109
    .local v9, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v10

    .line 1111
    .local v10, isWeekdayEvent:Z
    new-instance v15, Ljava/util/ArrayList;

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1112
    .local v15, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1114
    .local v14, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v20, 0x7f080044

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    const v20, 0x7f080045

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    if-eqz v10, :cond_e4

    .line 1121
    const v20, 0x7f080046

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_e4
    const v20, 0x7f080047

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1126
    .local v8, format:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "%A"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    div-int/lit8 v5, v20, 0x7

    .line 1131
    .local v5, dayNumber:I
    const v20, 0x7f080048

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1132
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, v11, v5

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v22, v0

    aget-object v22, v6, v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    const v20, 0x7f080049

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1136
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1139
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 1140
    .local v18, when:J
    const v20, 0x7f08004a

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1141
    const/4 v7, 0x0

    .line 1142
    .local v7, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1bc

    .line 1143
    or-int/lit16 v7, v7, 0x80

    .line 1145
    :cond_1bc
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    if-eqz v9, :cond_208

    .line 1149
    const v20, 0x7f08004b

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_208
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 1154
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1155
    .local v12, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_231

    .line 1156
    if-eqz v9, :cond_25e

    .line 1157
    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1183
    :cond_231
    :goto_231
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1184
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v20, 0x1090009

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1187
    return-void

    .line 1159
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_25e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_2de

    goto :goto_231

    .line 1161
    :pswitch_26e
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1162
    goto :goto_231

    .line 1164
    :pswitch_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v20

    if-eqz v20, :cond_296

    .line 1165
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto :goto_231

    .line 1167
    :cond_296
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1169
    goto :goto_231

    .line 1171
    :pswitch_2a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/pim/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v20

    if-eqz v20, :cond_2bf

    .line 1172
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_231

    .line 1174
    :cond_2bf
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1176
    goto/16 :goto_231

    .line 1178
    :pswitch_2ce
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_231

    .line 1159
    nop

    :pswitch_data_2de
    .packed-switch 0x4
        :pswitch_26e
        :pswitch_27c
        :pswitch_2a4
        :pswitch_2ce
    .end packed-switch
.end method

.method private populateWhen()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1074
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1075
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1076
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    .line 1077
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    .line 1079
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    .line 1080
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    .line 1082
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1085
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    return-void
.end method

.method static reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1552
    .local p0, reminderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p1, reminderValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1553
    .local v2, len:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1554
    .local v4, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_a
    if-ge v0, v2, :cond_33

    .line 1555
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1556
    .local v1, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f0c0039

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 1557
    .local v5, spinner:Landroid/widget/Spinner;
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1558
    .local v3, minutes:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1560
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v3           #minutes:I
    .end local v5           #spinner:Landroid/widget/Spinner;
    :cond_33
    return-object v4
.end method

.method private save()Z
    .registers 13

    .prologue
    .line 1319
    const/4 v9, 0x0

    .line 1323
    .local v9, forceSaveReminders:Z
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v4, :cond_77

    .line 1324
    iget-boolean v4, p0, Lcom/android/calendar/EditEvent;->mCalendarsQueryComplete:Z

    if-nez v4, :cond_2b

    .line 1326
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_28

    .line 1328
    const v4, 0x7f080021

    invoke-virtual {p0, v4}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v4, 0x7f080022

    invoke-virtual {p0, v4}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 1332
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    .line 1334
    :cond_28
    const/4 v4, 0x0

    move v5, v9

    .line 1448
    .end local v9           #forceSaveReminders:Z
    .local v5, forceSaveReminders:Z
    :goto_2a
    return v4

    .line 1340
    .end local v5           #forceSaveReminders:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_2b
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_41

    .line 1341
    :cond_37
    const-string v4, "Cal"

    const-string v5, "The calendars table does not contain any calendars. New event was not created."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v4, 0x1

    move v5, v9

    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto :goto_2a

    .line 1345
    .end local v5           #forceSaveReminders:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_41
    const v4, 0x7f08001f

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1350
    :goto_4c
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1351
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->getContentValuesFromUi()Landroid/content/ContentValues;

    move-result-object v11

    .line 1352
    .local v11, values:Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    .line 1356
    .local v10, uri:Landroid/net/Uri;
    if-nez v10, :cond_83

    .line 1358
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1359
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1360
    const/4 v5, 0x1

    .line 1441
    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    :goto_62
    if-eqz v10, :cond_75

    .line 1442
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1443
    .local v1, eventId:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lcom/android/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1445
    .local v3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->saveReminders(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1448
    .end local v1           #eventId:J
    .end local v3           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_75
    const/4 v4, 0x1

    goto :goto_2a

    .line 1347
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v5           #forceSaveReminders:Z
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v9       #forceSaveReminders:Z
    :cond_77
    const v4, 0x7f080020

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_4c

    .line 1362
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v10       #uri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_83
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v4, :cond_94

    .line 1364
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1365
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 1366
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v5, v9

    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto :goto_62

    .line 1368
    .end local v5           #forceSaveReminders:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_94
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v5, "rrule"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_ad

    .line 1371
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1372
    const-string v4, "dtend"

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1373
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v5, v9

    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto :goto_62

    .line 1375
    .end local v5           #forceSaveReminders:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_ad
    iget v4, p0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_fe

    .line 1379
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v5, "beginTime"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1380
    .local v7, begin:J
    const-string v4, "originalEvent"

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xb

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v4, "originalInstanceTime"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1382
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v5, "allDay"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_f9

    const/4 v4, 0x1

    move v6, v4

    .line 1383
    .local v6, allDay:Z
    :goto_e4
    const-string v4, "originalAllDay"

    if-eqz v6, :cond_fc

    const/4 v5, 0x1

    :goto_e9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1385
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1386
    const/4 v5, 0x1

    .line 1388
    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto/16 :goto_62

    .line 1382
    .end local v5           #forceSaveReminders:Z
    .end local v6           #allDay:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_f9
    const/4 v4, 0x0

    move v6, v4

    goto :goto_e4

    .line 1383
    .restart local v6       #allDay:Z
    :cond_fc
    const/4 v5, 0x0

    goto :goto_e9

    .line 1388
    .end local v6           #allDay:Z
    .end local v7           #begin:J
    :cond_fe
    iget v4, p0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_145

    .line 1390
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1392
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v4, :cond_122

    .line 1397
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 1398
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1404
    :goto_115
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1420
    :goto_11b
    const/4 v5, 0x1

    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto/16 :goto_62

    .line 1402
    .end local v5           #forceSaveReminders:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_11e
    invoke-direct {p0, v0, v10}, Lcom/android/calendar/EditEvent;->updatePastEvents(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_115

    .line 1406
    :cond_122
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v4

    if-eqz v4, :cond_136

    .line 1407
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 1408
    const-string v4, "dtend"

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1409
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_11b

    .line 1413
    :cond_136
    invoke-direct {p0, v0, v10}, Lcom/android/calendar/EditEvent;->updatePastEvents(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1416
    const-string v4, "dtend"

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1417
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_11b

    .line 1422
    :cond_145
    iget v4, p0, Lcom/android/calendar/EditEvent;->mModification:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16c

    .line 1425
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1427
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-nez v4, :cond_15f

    .line 1431
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1432
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1433
    const/4 v5, 0x1

    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto/16 :goto_62

    .line 1435
    .end local v5           #forceSaveReminders:Z
    .restart local v9       #forceSaveReminders:Z
    :cond_15f
    invoke-direct {p0, v11}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 1436
    const-string v4, "dtend"

    invoke-virtual {v11, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1437
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v10, v11, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_16c
    move v5, v9

    .end local v9           #forceSaveReminders:Z
    .restart local v5       #forceSaveReminders:Z
    goto/16 :goto_62
.end method

.method static saveReminders(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .registers 9
    .parameter "cr"
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 1579
    .local p3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p4

    .end local p4           #originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p4, :cond_a

    if-nez p5, :cond_a

    .line 1580
    const/4 p0, 0x0

    .line 1605
    .end local p0
    .end local p5
    :goto_9
    return p0

    .line 1584
    .restart local p0
    .restart local p5
    :cond_a
    const-string p5, "event_id=?"

    .line 1585
    .local p5, where:Ljava/lang/String;
    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    .line 1586
    .local p4, args:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p5, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1589
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1590
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 1591
    .local p5, len:I
    const-string p4, "hasAlarm"

    .end local p4           #args:[Ljava/lang/String;
    if-lez p5, :cond_6f

    const/4 v0, 0x1

    :goto_29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1592
    sget-object p4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p4

    .line 1593
    .local p4, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p4, v1, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1596
    const/4 p4, 0x0

    .local p4, i:I
    :goto_3c
    if-ge p4, p5, :cond_71

    .line 1597
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1599
    .local v0, minutes:I
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1600
    const-string v2, "minutes"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #minutes:I
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1601
    const-string v0, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1603
    sget-object v0, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1596
    add-int/lit8 p4, p4, 0x1

    goto :goto_3c

    .line 1591
    .end local p4           #i:I
    :cond_6f
    const/4 v0, 0x0

    goto :goto_29

    .line 1605
    .restart local p4       #i:I
    :cond_71
    const/4 p0, 0x1

    goto :goto_9
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .registers 6
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 1303
    const v0, 0x18016

    .line 1306
    .local v0, flags:I
    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1307
    return-void
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .registers 6
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 1310
    const/4 v0, 0x1

    .line 1311
    .local v0, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1312
    or-int/lit16 v0, v0, 0x80

    .line 1314
    :cond_9
    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    return-void
.end method

.method private updatePastEvents(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 22
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1459
    .local v12, oldStartMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1460
    .local v10, oldDuration:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_143

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 1461
    .local v5, allDay:Z
    :goto_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v17, v0

    const/16 v18, 0xa

    invoke-interface/range {v17 .. v18}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1462
    .local v11, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1464
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 1465
    .local v16, untilTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v17, v0

    const-string v18, "beginTime"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1466
    .local v6, begin:J
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1472
    .local v14, oldValues:Landroid/content/ContentValues;
    const-string v17, "UTC"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1476
    const-wide/16 v17, 0x3e8

    sub-long v17, v6, v17

    invoke-virtual/range {v16 .. v18}, Landroid/text/format/Time;->set(J)V

    .line 1477
    if-eqz v5, :cond_f7

    .line 1478
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1479
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1480
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1481
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/text/format/Time;->allDay:Z

    .line 1482
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/text/format/Time;->normalize(Z)J

    .line 1487
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 1488
    .local v9, len:I
    const/16 v17, 0x0

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f7

    const/16 v17, 0x1

    sub-int v17, v9, v17

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x53

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f7

    .line 1489
    const/16 v17, 0x1

    const/16 v18, 0x1

    sub-int v18, v9, v18

    move-object v0, v10

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 1490
    .local v15, seconds:I
    const v17, 0x15180

    add-int v17, v17, v15

    const/16 v18, 0x1

    sub-int v17, v17, v18

    const v18, 0x15180

    div-int v8, v17, v18

    .line 1491
    .local v8, days:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "P"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "D"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1494
    .end local v8           #days:I
    .end local v9           #len:I
    .end local v15           #seconds:I
    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    .line 1496
    const-string v17, "dtstart"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1497
    const-string v17, "duration"

    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    const-string v17, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v14

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1500
    return-void

    .line 1460
    .end local v5           #allDay:Z
    .end local v6           #begin:J
    .end local v11           #oldRrule:Ljava/lang/String;
    .end local v14           #oldValues:Landroid/content/ContentValues;
    .end local v16           #untilTime:Landroid/text/format/Time;
    :cond_143
    const/16 v17, 0x0

    move/from16 v5, v17

    goto/16 :goto_2a
.end method

.method private updateRecurrenceRule()V
    .registers 16

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x4

    const/4 v12, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1632
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 1633
    .local v7, position:I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1635
    .local v8, selection:I
    if-nez v8, :cond_1d

    .line 1636
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 1704
    :cond_1c
    :goto_1c
    return-void

    .line 1638
    :cond_1d
    const/4 v9, 0x7

    if-eq v8, v9, :cond_1c

    .line 1641
    if-ne v8, v10, :cond_39

    .line 1642
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v13, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 1702
    :cond_26
    :goto_26
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v10, p0, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    invoke-static {v10}, Landroid/pim/EventRecurrence;->calendarDay2Day(I)I

    move-result v10

    iput v10, v9, Landroid/pim/EventRecurrence;->wkst:I

    .line 1703
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v9}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto :goto_1c

    .line 1643
    :cond_39
    const/4 v9, 0x2

    if-ne v8, v9, :cond_70

    .line 1644
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v12, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 1645
    const/4 v4, 0x5

    .line 1646
    .local v4, dayCount:I
    new-array v0, v4, [I

    .line 1647
    .local v0, byday:[I
    new-array v1, v4, [I

    .line 1649
    .local v1, bydayNum:[I
    const/high16 v9, 0x2

    aput v9, v0, v11

    .line 1650
    const/high16 v9, 0x4

    aput v9, v0, v10

    .line 1651
    const/4 v9, 0x2

    const/high16 v10, 0x8

    aput v10, v0, v9

    .line 1652
    const/4 v9, 0x3

    const/high16 v10, 0x10

    aput v10, v0, v9

    .line 1653
    const/high16 v9, 0x20

    aput v9, v0, v13

    .line 1654
    const/4 v3, 0x0

    .local v3, day:I
    :goto_5c
    if-ge v3, v4, :cond_63

    .line 1655
    aput v11, v1, v3

    .line 1654
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 1658
    :cond_63
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v0, v9, Landroid/pim/EventRecurrence;->byday:[I

    .line 1659
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v9, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 1660
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v4, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    goto :goto_26

    .line 1661
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v3           #day:I
    .end local v4           #dayCount:I
    :cond_70
    const/4 v9, 0x3

    if-ne v8, v9, :cond_95

    .line 1662
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v12, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 1663
    new-array v6, v10, [I

    .line 1664
    .local v6, days:[I
    const/4 v4, 0x1

    .line 1665
    .restart local v4       #dayCount:I
    new-array v5, v4, [I

    .line 1667
    .local v5, dayNum:[I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->weekDay:I

    invoke-static {v9}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v9

    aput v9, v6, v11

    .line 1669
    aput v11, v5, v11

    .line 1671
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v6, v9, Landroid/pim/EventRecurrence;->byday:[I

    .line 1672
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v5, v9, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 1673
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v4, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    goto :goto_26

    .line 1674
    .end local v4           #dayCount:I
    .end local v5           #dayNum:[I
    .end local v6           #days:[I
    :cond_95
    if-ne v8, v12, :cond_b1

    .line 1675
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v14, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 1676
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v11, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 1677
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v10, v9, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 1678
    new-array v2, v10, [I

    .line 1679
    .local v2, bymonthday:[I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    aput v9, v2, v11

    .line 1680
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v2, v9, Landroid/pim/EventRecurrence;->bymonthday:[I

    goto/16 :goto_26

    .line 1681
    .end local v2           #bymonthday:[I
    :cond_b1
    if-ne v8, v13, :cond_e5

    .line 1682
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v14, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 1683
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v10, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 1684
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v11, v9, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 1686
    new-array v0, v10, [I

    .line 1687
    .restart local v0       #byday:[I
    new-array v1, v10, [I

    .line 1689
    .restart local v1       #bydayNum:[I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    add-int/lit8 v4, v9, 0x1

    .line 1690
    .restart local v4       #dayCount:I
    if-ne v4, v12, :cond_cf

    .line 1691
    const/4 v4, -0x1

    .line 1693
    :cond_cf
    aput v4, v1, v11

    .line 1694
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->weekDay:I

    invoke-static {v9}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v9

    aput v9, v0, v11

    .line 1695
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v0, v9, Landroid/pim/EventRecurrence;->byday:[I

    .line 1696
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v9, Landroid/pim/EventRecurrence;->bydayNum:[I

    goto/16 :goto_26

    .line 1697
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v4           #dayCount:I
    :cond_e5
    if-ne v8, v14, :cond_26

    .line 1698
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    const/4 v10, 0x7

    iput v10, v9, Landroid/pim/EventRecurrence;->freq:I

    goto/16 :goto_26
.end method

.method private updateRemindersVisibility()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1293
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 1294
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1300
    :goto_15
    return-void

    .line 1297
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_8

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    .line 443
    :cond_7
    :goto_7
    return-void

    .line 440
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_7

    .line 441
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_7
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_7

    .line 448
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 450
    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_f

    .line 393
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 394
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 429
    :cond_e
    :goto_e
    return-void

    .line 399
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_33

    .line 400
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 401
    .local v1, begin:J
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 402
    .local v3, end:J
    const/4 v6, -0x1

    .line 403
    .local v6, which:I
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    packed-switch v0, :pswitch_data_54

    .line 414
    :goto_25
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    goto :goto_e

    .line 405
    :pswitch_2d
    const/4 v6, 0x0

    .line 406
    goto :goto_25

    .line 408
    :pswitch_2f
    const/4 v6, 0x1

    .line 409
    goto :goto_25

    .line 411
    :pswitch_31
    const/4 v6, 0x2

    goto :goto_25

    .line 418
    .end local v1           #begin:J
    .end local v3           #end:J
    .end local v6           #which:I
    :cond_33
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3b

    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_e

    .line 424
    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 425
    .local v8, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 426
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 428
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    goto :goto_e

    .line 403
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_31
        :pswitch_2f
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 43
    .parameter "icicle"

    .prologue
    .line 507
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 508
    const/4 v7, 0x5

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->requestWindowFeature(I)Z

    .line 509
    const v7, 0x7f03000d

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->setContentView(I)V

    .line 512
    sput-object p0, Lcom/android/calendar/EditEvent;->mContext:Landroid/content/Context;

    .line 513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    .line 515
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    .line 516
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v28

    .line 519
    .local v28, intent:Landroid/content/Intent;
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object v7, v0

    if-eqz v7, :cond_78

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object v7, v0

    sget-object v8, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/EditEvent;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    if-eqz v7, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_78

    .line 525
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 773
    .end local p1
    :cond_77
    :goto_77
    return-void

    .line 530
    .restart local p1
    :cond_78
    const-string v7, "beginTime"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v28

    move-object v1, v7

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v17

    .line 531
    .local v17, begin:J
    const-string v7, "endTime"

    const-wide/16 v9, 0x0

    move-object/from16 v0, v28

    move-object v1, v7

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 533
    .local v22, end:J
    const/16 v16, 0x0

    .line 534
    .local v16, allDay:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    if-eqz v7, :cond_38d

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_385

    const/4 v7, 0x1

    move/from16 v16, v7

    .line 538
    :goto_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 539
    .local v36, rrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/16 v8, 0x9

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 540
    .local v39, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 543
    .local v19, calendarId:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v7, v0

    const-string v8, "beginTime"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v7, v0

    const-string v8, "endTime"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v7, v0

    const-string v8, "allDay"

    if-eqz v16, :cond_38a

    const/4 v9, 0x1

    :goto_104
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v7, v0

    const-string v8, "rrule"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v7, v0

    const-string v8, "eventTimezone"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v7, v0

    const-string v8, "calendar_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 566
    .end local v19           #calendarId:J
    .end local v36           #rrule:Ljava/lang/String;
    .end local v39           #timezone:Ljava/lang/String;
    :goto_135
    const-wide/16 v9, 0x0

    cmp-long v7, v17, v9

    if-eqz v7, :cond_16e

    .line 567
    if-eqz v16, :cond_3c7

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 569
    .local v40, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    const-string v8, "UTC"

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object/from16 v0, v40

    move-object v1, v7

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 580
    .end local v40           #tz:Ljava/lang/String;
    :cond_16e
    :goto_16e
    const-wide/16 v9, 0x0

    cmp-long v7, v22, v9

    if-eqz v7, :cond_1a7

    .line 581
    if-eqz v16, :cond_3d4

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object v0, v7

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 583
    .restart local v40       #tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v7, v0

    const-string v8, "UTC"

    iput-object v8, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object/from16 v0, v40

    move-object v1, v7

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 595
    .end local v40           #tz:Ljava/lang/String;
    :cond_1a7
    :goto_1a7
    const v7, 0x7f0c0002

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    .line 596
    const v7, 0x7f0c0027

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    .line 597
    const v7, 0x7f0c0029

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    .line 598
    const v7, 0x7f0c0020

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    .line 599
    const v7, 0x7f0c0023

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    .line 600
    const v7, 0x7f0c0021

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    .line 601
    const v7, 0x7f0c0024

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    .line 602
    const v7, 0x7f0c0025

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 603
    const v7, 0x7f0c0016

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 604
    const v7, 0x7f0c002c

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 605
    const v7, 0x7f0c002f

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 606
    const v7, 0x7f0c0031

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    .line 607
    const v7, 0x7f0c0032

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    .line 608
    const v7, 0x7f0c0034

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 609
    const v7, 0x7f0c002d

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    .line 613
    new-instance v31, Lcom/android/calendar/EditEvent$1;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$1;-><init>(Lcom/android/calendar/EditEvent;)V

    .line 648
    .local v31, mTextWatcher:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v7, v0

    new-instance v8, Lcom/android/calendar/EditEvent$2;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$2;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 685
    if-eqz v16, :cond_3e1

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 691
    :goto_2f7
    const v7, 0x7f0c0036

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 694
    const v7, 0x7f0c0038

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    const v7, 0x7f0c0037

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    .line 711
    .local v33, r:Landroid/content/res/Resources;
    const v7, 0x7f060001

    move-object/from16 v0, v33

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v38

    .line 712
    .local v38, strings:[Ljava/lang/String;
    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v37, v0

    .line 713
    .local v37, size:I
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 714
    .local v30, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .local v27, i:I
    :goto_36c
    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_3ec

    .line 715
    aget-object v7, v38, v27

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v27, v27, 0x1

    goto :goto_36c

    .line 537
    .end local v27           #i:I
    .end local v30           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v31           #mTextWatcher:Landroid/text/TextWatcher;
    .end local v33           #r:Landroid/content/res/Resources;
    .end local v37           #size:I
    .end local v38           #strings:[Ljava/lang/String;
    .restart local p1
    :cond_385
    const/4 v7, 0x0

    move/from16 v16, v7

    goto/16 :goto_b0

    .line 546
    .restart local v19       #calendarId:J
    .restart local v36       #rrule:Ljava/lang/String;
    .restart local v39       #timezone:Ljava/lang/String;
    :cond_38a
    const/4 v9, 0x0

    goto/16 :goto_104

    .line 553
    .end local v19           #calendarId:J
    .end local v36           #rrule:Ljava/lang/String;
    .end local v39           #timezone:Ljava/lang/String;
    :cond_38d
    const-string v7, "allDay"

    const/4 v8, 0x0

    move-object/from16 v0, v28

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFeatureInt(II)V

    .line 560
    new-instance v7, Lcom/android/calendar/EditEvent$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EditEvent$QueryHandler;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mQueryHandler:Lcom/android/calendar/EditEvent$QueryHandler;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mQueryHandler:Lcom/android/calendar/EditEvent$QueryHandler;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/calendar/EditEvent;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v10, "access_level>=500 AND sync_events=1"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/calendar/EditEvent$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_135

    .line 576
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_16e

    .line 590
    :cond_3d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v7, v0

    move-object v0, v7

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1a7

    .line 688
    .end local p1
    .restart local v31       #mTextWatcher:Landroid/text/TextWatcher;
    :cond_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2f7

    .line 717
    .restart local v27       #i:I
    .restart local v30       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v33       #r:Landroid/content/res/Resources;
    .restart local v37       #size:I
    .restart local v38       #strings:[Ljava/lang/String;
    :cond_3ec
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    .line 718
    const/high16 v7, 0x7f06

    move-object/from16 v0, v33

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v29

    .line 719
    .local v29, labels:[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    .line 721
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v32

    .line 722
    .local v32, prefs:Landroid/content/SharedPreferences;
    const-string v7, "preferences_default_reminder"

    const-string v8, "0"

    move-object/from16 v0, v32

    move-object v1, v7

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 724
    .local v21, durationString:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    if-eqz v7, :cond_488

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_488

    const/4 v7, 0x1

    move/from16 v26, v7

    .line 729
    .local v26, hasAlarm:Z
    :goto_438
    if-eqz v26, :cond_4c7

    .line 730
    sget-object v6, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 731
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 732
    .local v24, eventId:J
    const-string v7, "event_id=%d AND (method=1 OR method=0)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 734
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 738
    .end local v8           #where:Ljava/lang/String;
    .local v34, reminderCursor:Landroid/database/Cursor;
    :goto_462
    :try_start_462
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_48c

    .line 739
    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 740
    .local v14, minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move v3, v14

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_482
    .catchall {:try_start_462 .. :try_end_482} :catchall_483

    goto :goto_462

    .line 752
    .end local v14           #minutes:I
    :catchall_483
    move-exception v7

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    throw v7

    .line 727
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v24           #eventId:J
    .end local v26           #hasAlarm:Z
    .end local v34           #reminderCursor:Landroid/database/Cursor;
    :cond_488
    const/4 v7, 0x0

    move/from16 v26, v7

    goto :goto_438

    .line 744
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v24       #eventId:J
    .restart local v26       #hasAlarm:Z
    .restart local v34       #reminderCursor:Landroid/database/Cursor;
    :cond_48c
    const/4 v7, -0x1

    :try_start_48d
    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 745
    :goto_493
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4c4

    .line 746
    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 747
    .restart local v14       #minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-static/range {v9 .. v14}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    :try_end_4c3
    .catchall {:try_start_48d .. :try_end_4c3} :catchall_483

    goto :goto_493

    .line 752
    .end local v14           #minutes:I
    :cond_4c4
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 755
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v24           #eventId:J
    .end local v34           #reminderCursor:Landroid/database/Cursor;
    :cond_4c7
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    .line 758
    new-instance v15, Lcom/android/calendar/EditEvent$3;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$3;-><init>(Lcom/android/calendar/EditEvent;)V

    .line 763
    .local v15, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    const v7, 0x7f0c0035

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/ImageButton;

    .line 764
    .local v35, reminderRemoveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, v35

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    new-instance v7, Lcom/android/calendar/DeleteEventHelper;

    const/4 v8, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v7, v0

    if-nez v7, :cond_77

    .line 771
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->initFromIntent(Landroid/content/Intent;)V

    goto/16 :goto_77
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v6, 0x7f020016

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 988
    const v1, 0x7f08002a

    invoke-interface {p1, v3, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 990
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020015

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 991
    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 993
    const v1, 0x7f08002f

    invoke-interface {p1, v4, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 995
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 996
    const v1, 0x7f080030

    invoke-interface {p1, v5, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 998
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1000
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1055
    packed-switch p1, :pswitch_data_1a

    .line 1070
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 1060
    :pswitch_8
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1061
    :cond_12
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1064
    const/4 v0, 0x1

    goto :goto_7

    .line 1055
    :pswitch_data_1a
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1039
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 1050
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 1041
    :pswitch_d
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->addReminder()V

    move v0, v2

    .line 1042
    goto :goto_c

    .line 1044
    :pswitch_12
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    .line 1045
    goto :goto_c

    .line 1047
    :pswitch_1a
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    .line 1048
    goto :goto_c

    .line 1039
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_1a
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1005
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_26

    .line 1006
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1007
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1013
    :goto_13
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1014
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1015
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1021
    :goto_21
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1009
    :cond_26
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1010
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_13

    .line 1017
    :cond_2d
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1018
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_21
.end method

.method protected onResume()V
    .registers 22

    .prologue
    .line 833
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object v2, v0

    if-eqz v2, :cond_20

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v2, v0

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_20

    .line 838
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 983
    :goto_1f
    return-void

    .line 843
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v2, v0

    if-eqz v2, :cond_1fe

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v10, v0

    .line 845
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 847
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 848
    const-string v19, ""

    .line 849
    .local v19, title:Ljava/lang/String;
    const-string v11, ""

    .line 850
    .local v11, description:Ljava/lang/String;
    const-string v15, ""

    .line 852
    .local v15, location:Ljava/lang/String;
    const-string v2, "onResume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTitle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTitles:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v2, "onResume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDescs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDescs:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const-string v2, "onResume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLocations="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLocations:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTitles:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_1bd

    .line 857
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 861
    :goto_a3
    const-string v2, "onResume"

    const-string v3, "Log 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDescs:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_1cc

    .line 863
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 867
    :goto_b6
    const-string v2, "onResume"

    const-string v3, "Log 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLocations:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_1db

    .line 869
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 873
    :goto_c9
    const-string v2, "onResume"

    const-string v3, "Log 3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 876
    .local v8, availability:I
    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 877
    .local v20, visibility:I
    if-lez v20, :cond_e0

    .line 879
    add-int/lit8 v20, v20, -0x1

    .line 882
    :cond_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move v2, v0

    if-nez v2, :cond_15b

    .line 885
    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 890
    const/4 v12, 0x0

    .line 892
    .local v12, itemIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_1ea

    .line 893
    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/CharSequence;

    .line 898
    .local v14, items:[Ljava/lang/CharSequence;
    :goto_115
    add-int/lit8 v13, v12, 0x1

    .end local v12           #itemIndex:I
    .local v13, itemIndex:I
    const v2, 0x7f08004d

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v14, v12

    .line 899
    add-int/lit8 v12, v13, 0x1

    .end local v13           #itemIndex:I
    .restart local v12       #itemIndex:I
    const v2, 0x7f08004e

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v14, v13

    .line 902
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/calendar/EditEvent$5;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$5;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/calendar/EditEvent$4;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$4;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v2, v14, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 933
    .end local v12           #itemIndex:I
    .end local v14           #items:[Ljava/lang/CharSequence;
    :cond_15b
    const-string v2, "onResume"

    const-string v3, "Log 4"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-nez v19, :cond_166

    .line 935
    const-string v19, ""

    .line 936
    :cond_166
    if-nez v15, :cond_16a

    .line 937
    const-string v15, ""

    .line 938
    :cond_16a
    if-nez v11, :cond_16e

    .line 939
    const-string v11, ""

    .line 940
    :cond_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 943
    const-string v2, "onResume"

    const-string v3, "Log 5"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    move-object v2, v0

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 949
    const v2, 0x7f0c002a

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 950
    .local v9, calendarGroup:Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 980
    .end local v8           #availability:I
    .end local v9           #calendarGroup:Landroid/view/View;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #description:Ljava/lang/String;
    .end local v15           #location:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #visibility:I
    :goto_1b2
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    .line 981
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->populateWhen()V

    .line 982
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    goto/16 :goto_1f

    .line 859
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #description:Ljava/lang/String;
    .restart local v15       #location:Ljava/lang/String;
    .restart local v19       #title:Ljava/lang/String;
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_a3

    .line 865
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_b6

    .line 871
    :cond_1db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c9

    .line 895
    .restart local v8       #availability:I
    .restart local v12       #itemIndex:I
    .restart local v20       #visibility:I
    :cond_1ea
    const/4 v2, 0x3

    new-array v14, v2, [Ljava/lang/CharSequence;

    .line 896
    .restart local v14       #items:[Ljava/lang/CharSequence;
    add-int/lit8 v13, v12, 0x1

    .end local v12           #itemIndex:I
    .restart local v13       #itemIndex:I
    const v2, 0x7f08004c

    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v14, v12

    move v12, v13

    .end local v13           #itemIndex:I
    .restart local v12       #itemIndex:I
    goto/16 :goto_115

    .line 951
    .end local v8           #availability:I
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #description:Ljava/lang/String;
    .end local v12           #itemIndex:I
    .end local v14           #items:[Ljava/lang/CharSequence;
    .end local v15           #location:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #visibility:I
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/format/Time;->isEpoch(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_26d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/format/Time;->isEpoch(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_26d

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->second:I

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    .line 957
    .local v16, minute:I
    if-lez v16, :cond_259

    const/16 v2, 0x1e

    move/from16 v0, v16

    move v1, v2

    if-gt v0, v1, :cond_259

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    const/16 v3, 0x1e

    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 964
    :goto_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v17

    .line 965
    .local v17, startMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v2, v0

    const-wide/32 v3, 0x36ee80

    add-long v3, v3, v17

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1b2

    .line 960
    .end local v17           #startMillis:J
    :cond_259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v2, v0

    iget v3, v2, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->hour:I

    goto :goto_240

    .line 968
    .end local v16           #minute:I
    :cond_26d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    move v2, v0

    if-eqz v2, :cond_29c

    .line 969
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EditEvent;->mAlarmF:Z

    move v2, v0

    if-nez v2, :cond_296

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    move v7, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 973
    :cond_296
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EditEvent;->mAlarmF:Z

    .line 977
    :cond_29c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1b2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    const-string v3, "mTitle = "

    .line 818
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 819
    const-string v0, "onSaveInstanceState 1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTitles:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_47

    .line 821
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mTitles:Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mLocations:Ljava/lang/String;

    .line 823
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mDescs:Ljava/lang/String;

    .line 826
    :cond_47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mAlarmF:Z

    .line 827
    const-string v0, "onSaveInstanceState 2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTitles:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method
