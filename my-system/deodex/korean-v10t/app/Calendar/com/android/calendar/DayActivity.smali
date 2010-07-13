.class public Lcom/android/calendar/DayActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "DayActivity.java"

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

    .line 58
    new-instance v0, Lcom/android/calendar/DayView;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 59
    .local v0, view:Lcom/android/calendar/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setId(I)V

    .line 60
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v1, p0, Lcom/android/calendar/DayActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 63
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/DayActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 41
    const/high16 v3, 0x7f0c

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewSwitcher;

    iput-object v3, p0, Lcom/android/calendar/DayActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 42
    iget-object v3, p0, Lcom/android/calendar/DayActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 43
    iget-object v3, p0, Lcom/android/calendar/DayActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 44
    const v3, 0x7f0c001a

    invoke-virtual {p0, v3}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/calendar/DayActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 47
    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v0, v3, v4

    .line 48
    .local v0, activityString:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "preferredDetailedView"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v3, "startView"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    .line 69
    iget-object v1, p0, Lcom/android/calendar/DayActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 70
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 71
    return-void
.end method
