.class public Lcom/android/calendar/SelectCalendarsActivity;
.super Landroid/app/Activity;
.source "SelectCalendarsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/SelectCalendarsActivity$RefreshAction;,
        Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;,
        Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mQueryHandler:Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SelectCalendarsActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/SelectCalendarsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/SelectCalendarsActivity;)Lcom/android/calendar/SelectCalendarsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/SelectCalendarsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/calendar/SelectCalendarsActivity;->startCalendarSync()V

    return-void
.end method

.method private startCalendarSync()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/view/Window;->setFeatureInt(II)V

    .line 289
    sget-object v3, Landroid/provider/Calendar$Calendars;->LIVE_CONTENT_URI:Landroid/net/Uri;

    .line 290
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mQueryHandler:Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=1"

    const-string v7, "displayName"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v2, 0x5

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/calendar/SelectCalendarsActivity;->requestWindowFeature(I)Z

    .line 62
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/calendar/SelectCalendarsActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 65
    new-instance v0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/calendar/SelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;-><init>(Lcom/android/calendar/SelectCalendarsActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mQueryHandler:Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;

    .line 66
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lcom/android/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 68
    .local v7, items:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 69
    .local v6, context:Landroid/content/Context;
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v3, "sync_events=1"

    const/4 v4, 0x0

    const-string v5, "displayName"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/SelectCalendarsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 74
    new-instance v0, Lcom/android/calendar/SelectCalendarsAdapter;

    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, v6, v1}, Lcom/android/calendar/SelectCalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    .line 75
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity;->mAdapter:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/android/calendar/SelectCalendarsActivity;->startCalendarSync()V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 96
    const v1, 0x7f080019

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;-><init>(Lcom/android/calendar/SelectCalendarsActivity;Z)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 98
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 100
    const v1, 0x7f08001a

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;

    invoke-direct {v2, p0, v4}, Lcom/android/calendar/SelectCalendarsActivity$ChangeCalendarAction;-><init>(Lcom/android/calendar/SelectCalendarsActivity;Z)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 103
    return v4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0c0014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 89
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 90
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    return-void
.end method
