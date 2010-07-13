.class public Lcom/android/calendar/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final INDEX_ALARM_TIME:I = 0xb

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x4

.field public static final INDEX_COLOR:I = 0x7

.field public static final INDEX_END:I = 0x5

.field public static final INDEX_EVENT_ID:I = 0x6

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x9

.field public static final INDEX_ROW_ID:I = 0x0

.field public static final INDEX_RRULE:I = 0x8

.field public static final INDEX_STATE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final NOTIFICATION_ID:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final SNOOZE_DELAY:J = 0x493e0L


# instance fields
.field private mAdapter:Lcom/android/calendar/AlertAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mDismissAllListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSnoozeAllButton:Landroid/widget/Button;

.field private mSnoozeAllListener:Landroid/view/View$OnClickListener;

.field private mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    const/16 v0, 0xc

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

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 180
    new-instance v0, Lcom/android/calendar/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$1;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 276
    new-instance v0, Lcom/android/calendar/AlertActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$2;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    .line 305
    new-instance v0, Lcom/android/calendar/AlertActivity$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$3;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AlertActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AlertActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AlertActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method static synthetic access$500(JJJJI)Landroid/content/ContentValues;
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-static/range {p0 .. p8}, Lcom/android/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AlertActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/calendar/AlertActivity;->dismissFiredAlarms()V

    return-void
.end method

.method private dismissAlarm(J)V
    .registers 10
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 109
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 110
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private dismissFiredAlarms()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 102
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v5, "state=1"

    .line 104
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .registers 15
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 166
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    return-object v2
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 4
    .parameter "view"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 323
    .local v0, index:I
    if-gez v0, :cond_a

    .line 324
    const/4 v1, 0x0

    .line 326
    .end local p0
    :goto_9
    return-object v1

    .restart local p0
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    move-object v1, p0

    goto :goto_9
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/android/calendar/AlertActivity;->setContentView(I)V

    .line 210
    const v2, 0x7f080023

    invoke-virtual {p0, v2}, Lcom/android/calendar/AlertActivity;->setTitle(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 213
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 214
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 217
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p0, v2}, Lcom/android/calendar/AlertActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 218
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 219
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 222
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    .line 225
    new-instance v2, Lcom/android/calendar/AlertActivity$QueryHandler;

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/AlertActivity$QueryHandler;-><init>(Lcom/android/calendar/AlertActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    .line 226
    new-instance v2, Lcom/android/calendar/AlertAdapter;

    const v3, 0x7f030005

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/AlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    .line 228
    const v2, 0x7f0c0007

    invoke-virtual {p0, v2}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    .line 229
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 230
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 233
    const v2, 0x7f0c0008

    invoke-virtual {p0, v2}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    .line 234
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v2, 0x7f0c0009

    invoke-virtual {p0, v2}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 236
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_c

    .line 272
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 248
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_18

    .line 249
    sget-object v3, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 250
    .local v3, uri:Landroid/net/Uri;
    const-string v5, "state=1"

    .line 251
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v7, "alarmTime ASC,begin ASC,title ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    :goto_17
    return-void

    .line 254
    :cond_18
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_17
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 261
    invoke-static {p0}, Lcom/android/calendar/AlertReceiver;->updateAlertNotification(Landroid/content/Context;)V

    .line 263
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 264
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 266
    :cond_f
    return-void
.end method
