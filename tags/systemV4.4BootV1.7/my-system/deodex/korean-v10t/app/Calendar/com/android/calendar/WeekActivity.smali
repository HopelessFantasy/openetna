.class public Lcom/android/calendar/WeekActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "WeekActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static final VIEW_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 49
    new-instance v0, Lcom/android/calendar/WeekView;

    invoke-direct {v0, p0}, Lcom/android/calendar/WeekView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 50
    .local v0, wv:Lcom/android/calendar/WeekView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setId(I)V

    .line 51
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v1, p0, Lcom/android/calendar/WeekActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 54
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/android/calendar/WeekActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/WeekActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 42
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/WeekActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 43
    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 44
    iget-object v0, p0, Lcom/android/calendar/WeekActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 45
    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/calendar/WeekActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 46
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    .line 80
    iget-object v1, p0, Lcom/android/calendar/WeekActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 81
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/WeekActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 82
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    .line 59
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onResume()V

    .line 61
    iget-object v6, p0, Lcom/android/calendar/WeekActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/CalendarView;

    .line 62
    .local v4, view1:Lcom/android/calendar/CalendarView;
    iget-object v6, p0, Lcom/android/calendar/WeekActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/CalendarView;

    .line 63
    .local v5, view2:Lcom/android/calendar/CalendarView;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 65
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "preferredDetailedView"

    sget-object v7, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5, v3}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 71
    sget-object v6, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v0, v6, v7

    .line 72
    .local v0, activityString:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "startView"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    return-void
.end method
