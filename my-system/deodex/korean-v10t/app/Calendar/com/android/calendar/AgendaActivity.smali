.class public Lcom/android/calendar/AgendaActivity;
.super Landroid/app/Activity;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AgendaActivity$AgendaListView;,
        Lcom/android/calendar/AgendaActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_SELF_ATTENDEE_STATUS:I = 0xc

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field private static final INITIAL_HEAP_SIZE:J = 0x400000L

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastQueryTime:Landroid/text/format/Time;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQueryHandler:Lcom/android/calendar/AgendaActivity$QueryHandler;

.field private mTime:Landroid/text/format/Time;

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AgendaActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    .line 176
    new-instance v0, Lcom/android/calendar/AgendaActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$1;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    new-instance v0, Lcom/android/calendar/AgendaActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AgendaActivity$2;-><init>(Lcom/android/calendar/AgendaActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaActivity;)Landroid/widget/ViewSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->selectTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/AgendaActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->clearLastQueryTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/AgendaActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->renewCursor()V

    return-void
.end method

.method private clearLastQueryTime()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 331
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 332
    return-void
.end method

.method private renewCursor()V
    .registers 20

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->month:I

    if-ne v3, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->year:I

    if-ne v3, v4, :cond_21

    .line 381
    :goto_20
    return-void

    .line 342
    :cond_21
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 343
    .local v18, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->year:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->month:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 345
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    .line 347
    .local v16, start:J
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 348
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    .line 350
    .local v11, end:J
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v14, path:Ljava/lang/StringBuilder;
    move-object v0, v14

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    const/16 v3, 0x2f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 356
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 357
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    invoke-interface {v15, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 360
    .local v13, hideDeclined:Z
    sget-object v3, Landroid/provider/Calendar$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 363
    .local v6, uri:Landroid/net/Uri;
    if-eqz v13, :cond_bc

    .line 364
    const-string v8, "selected=1 AND selfAttendeeStatus!=2"

    .line 375
    .local v8, selection:Ljava/lang/String;
    :goto_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mQueryHandler:Lcom/android/calendar/AgendaActivity$QueryHandler;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/calendar/AgendaActivity$QueryHandler;->cancelOperation(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->month:I

    iput v4, v3, Landroid/text/format/Time;->month:I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mLastQueryTime:Landroid/text/format/Time;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->year:I

    iput v4, v3, Landroid/text/format/Time;->year:I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaActivity;->mQueryHandler:Lcom/android/calendar/AgendaActivity$QueryHandler;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lcom/android/calendar/AgendaActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "startDay ASC, begin ASC, title ASC"

    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/AgendaActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    .line 367
    .end local v8           #selection:Ljava/lang/String;
    :cond_bc
    const-string v8, "selected=1"

    .restart local v8       #selection:Ljava/lang/String;
    goto :goto_86
.end method

.method private selectTime()V
    .registers 5

    .prologue
    .line 385
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaActivity$AgendaListView;

    .line 386
    .local v0, current:Lcom/android/calendar/AgendaActivity$AgendaListView;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_f

    .line 392
    :goto_e
    return-void

    .line 390
    :cond_f
    invoke-virtual {v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getDayAdapter()Lcom/android/calendar/AgendaByDayAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v1

    .line 391
    .local v1, position:I
    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaActivity$AgendaListView;->setSelection(I)V

    goto :goto_e
.end method


# virtual methods
.method public getAllDay()Z
    .registers 2

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .registers 7

    .prologue
    .line 419
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaActivity$AgendaListView;

    .line 420
    .local v0, current:Lcom/android/calendar/AgendaActivity$AgendaListView;
    invoke-virtual {v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getSelectedItemPosition()I

    move-result v2

    .line 421
    .local v2, position:I
    invoke-virtual {v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getDayAdapter()Lcom/android/calendar/AgendaByDayAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v2

    .line 422
    invoke-virtual {v0}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 423
    .local v1, cursor:Landroid/database/Cursor;
    if-ltz v2, :cond_2d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 424
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 425
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v4, 0x7

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 428
    :cond_2d
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    return-wide v3
.end method

.method public goTo(Landroid/text/format/Time;)V
    .registers 4
    .parameter "time"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    iget v1, p1, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    iget v1, p1, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_16

    .line 409
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    .line 410
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->selectTime()V

    .line 415
    :goto_15
    return-void

    .line 412
    :cond_16
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    .line 413
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->renewCursor()V

    goto :goto_15
.end method

.method public goToToday()V
    .registers 4

    .prologue
    .line 402
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 403
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;)V

    .line 405
    return-void
.end method

.method public makeView()Landroid/view/View;
    .registers 2

    .prologue
    .line 396
    new-instance v0, Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/AgendaActivity$AgendaListView;-><init>(Lcom/android/calendar/AgendaActivity;Landroid/content/Context;)V

    .line 397
    .local v0, agendaListView:Lcom/android/calendar/AgendaActivity$AgendaListView;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 208
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    const-wide/32 v6, 0x400000

    invoke-virtual {v5, v6, v7}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    move-result-wide v2

    .line 210
    .local v2, oldHeapSize:J
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/android/calendar/AgendaActivity;->setContentView(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 213
    new-instance v5, Lcom/android/calendar/AgendaActivity$QueryHandler;

    iget-object v6, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/AgendaActivity$QueryHandler;-><init>(Lcom/android/calendar/AgendaActivity;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/android/calendar/AgendaActivity;->mQueryHandler:Lcom/android/calendar/AgendaActivity$QueryHandler;

    .line 217
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    .line 218
    if-eqz p1, :cond_6e

    .line 219
    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const-string v6, "key_restore_time"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 223
    :goto_36
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/android/calendar/AgendaActivity;->setTitle(I)V

    .line 225
    const/high16 v5, 0x7f0c

    invoke-virtual {p0, v5}, Lcom/android/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ViewSwitcher;

    iput-object v5, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 226
    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 229
    sget-object v5, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v0, v5, v6

    .line 230
    .local v0, activityString:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 231
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 232
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "preferredDetailedView"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v5, "startView"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    new-instance v5, Lcom/android/calendar/DeleteEventHelper;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v5, p0, Lcom/android/calendar/AgendaActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 239
    return-void

    .line 221
    .end local v0           #activityString:Ljava/lang/String;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_6e
    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_36
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 287
    invoke-static {p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 14
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 299
    sparse-switch p1, :sswitch_data_44

    .line 322
    :cond_3
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 302
    :sswitch_8
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/AgendaActivity$AgendaListView;

    .line 303
    .local v8, current:Lcom/android/calendar/AgendaActivity$AgendaListView;
    invoke-virtual {v8}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 304
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 305
    invoke-virtual {v8}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getSelectedItemPosition()I

    move-result v10

    .line 306
    .local v10, position:I
    invoke-virtual {v8}, Lcom/android/calendar/AgendaActivity$AgendaListView;->getDayAdapter()Lcom/android/calendar/AgendaByDayAdapter;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v10

    .line 307
    if-ltz v10, :cond_3

    .line 308
    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 309
    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 310
    .local v1, begin:J
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 311
    .local v3, end:J
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 312
    .local v5, eventId:J
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    goto :goto_3

    .line 319
    .end local v1           #begin:J
    .end local v3           #end:J
    .end local v5           #eventId:J
    .end local v8           #current:Lcom/android/calendar/AgendaActivity$AgendaListView;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #position:I
    :sswitch_3f
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->finish()V

    .line 320
    const/4 v0, 0x1

    goto :goto_7

    .line 299
    :sswitch_data_44
    .sparse-switch
        0x4 -> :sswitch_3f
        0x43 -> :sswitch_8
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 293
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 267
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 269
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/calendar/AgendaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 274
    .local v0, columns:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    .line 275
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaActivity$AgendaListView;

    .line 276
    .local v1, current:Lcom/android/calendar/AgendaActivity$AgendaListView;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaActivity$AgendaListView;->setCursor(Landroid/database/Cursor;)V

    .line 277
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 281
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->clearLastQueryTime()V

    .line 246
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->renewCursor()V

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/AgendaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getSelectedTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 263
    return-void
.end method
