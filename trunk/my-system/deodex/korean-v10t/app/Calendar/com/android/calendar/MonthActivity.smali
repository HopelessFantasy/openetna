.class public Lcom/android/calendar/MonthActivity;
.super Landroid/app/Activity;
.source "MonthActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final INITIAL_HEAP_SIZE:I = 0x400000


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    new-instance v0, Lcom/android/calendar/MonthActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$1;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/android/calendar/MonthActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/MonthActivity$2;-><init>(Lcom/android/calendar/MonthActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method eventsChanged()V
    .registers 3

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 147
    .local v0, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 148
    return-void
.end method

.method public getAllDay()Z
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .registers 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 134
    .local v0, mv:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method getStartDay()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    return v0
.end method

.method public goTo(Landroid/text/format/Time;)V
    .registers 10
    .parameter "time"

    .prologue
    .line 87
    const v6, 0x7f0c0002

    invoke-virtual {p0, v6}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 88
    .local v5, title:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 91
    .local v0, current:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->dismissPopup()V

    .line 93
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getTime()Landroid/text/format/Time;

    move-result-object v2

    .line 99
    .local v2, currentTime:Landroid/text/format/Time;
    iget v6, v2, Landroid/text/format/Time;->month:I

    iget v7, v2, Landroid/text/format/Time;->year:I

    mul-int/lit8 v7, v7, 0xc

    add-int v1, v6, v7

    .line 100
    .local v1, currentMonth:I
    iget v6, p1, Landroid/text/format/Time;->month:I

    iget v7, p1, Landroid/text/format/Time;->year:I

    mul-int/lit8 v7, v7, 0xc

    add-int v4, v6, v7

    .line 101
    .local v4, nextMonth:I
    if-ge v4, v1, :cond_62

    .line 102
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 109
    :goto_3f
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/MonthView;

    .line 110
    .local v3, next:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectionMode()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/calendar/MonthView;->setSelectionMode(I)V

    .line 111
    invoke-virtual {v3, p1}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 112
    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 113
    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->animationStarted()V

    .line 114
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 115
    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->requestFocus()Z

    .line 116
    iput-object p1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 117
    return-void

    .line 105
    .end local v3           #next:Lcom/android/calendar/MonthView;
    :cond_62
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3f
.end method

.method public goToToday()V
    .registers 6

    .prologue
    .line 120
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 121
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 123
    const v3, 0x7f0c0002

    invoke-virtual {p0, v3}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    .local v1, title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 127
    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/MonthView;

    .line 128
    .local v2, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v2, v0}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 129
    invoke-virtual {v2}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 130
    return-void
.end method

.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 78
    new-instance v0, Lcom/android/calendar/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    .line 79
    .local v0, mv:Lcom/android/calendar/MonthView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 82
    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 186
    .local v0, monthView:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->animationFinished()V

    .line 187
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 181
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x14

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    const-wide/32 v8, 0x400000

    invoke-virtual {v7, v8, v9}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    move-result-wide v2

    .line 200
    .local v2, oldHeapSize:J
    const v7, 0x7f030011

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->setContentView(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 204
    if-eqz p1, :cond_149

    .line 205
    const-string v7, "beginTime"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 210
    .local v4, time:J
    :goto_25
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 211
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 212
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v7, v11}, Landroid/text/format/Time;->normalize(Z)J

    .line 215
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    iput v7, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    .line 216
    iget v7, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    sub-int/2addr v7, v11

    sub-int v1, v7, v11

    .line 218
    .local v1, diff:I
    add-int/lit8 v7, v1, 0x1

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, dayString:Ljava/lang/String;
    const v7, 0x7f0c0050

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    add-int/lit8 v7, v1, 0x2

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    const v7, 0x7f0c0051

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    add-int/lit8 v7, v1, 0x3

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 226
    const v7, 0x7f0c0052

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    add-int/lit8 v7, v1, 0x4

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 229
    const v7, 0x7f0c0053

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    add-int/lit8 v7, v1, 0x5

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 232
    const v7, 0x7f0c0054

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    add-int/lit8 v7, v1, 0x6

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 235
    const v7, 0x7f0c0055

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    add-int/lit8 v7, v1, 0x7

    rem-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 238
    const v7, 0x7f0c0056

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    const v7, 0x7f0c0002

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 242
    .local v6, title:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-static {v7}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v7, Lcom/android/calendar/EventLoader;

    invoke-direct {v7, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 245
    const v7, 0x7f0c001a

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 247
    const/high16 v7, 0x7f0c

    invoke-virtual {p0, v7}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ViewSwitcher;

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 248
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 249
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 251
    const/high16 v7, 0x7f04

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    .line 252
    const v7, 0x7f040001

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    .line 253
    const v7, 0x7f040006

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    .line 254
    const v7, 0x7f040007

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    .line 256
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 257
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v7, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 258
    return-void

    .line 207
    .end local v0           #dayString:Ljava/lang/String;
    .end local v1           #diff:I
    .end local v4           #time:J
    .end local v6           #title:Landroid/widget/TextView;
    :cond_149
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    .restart local v4       #time:J
    goto/16 :goto_25
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 332
    invoke-static {p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_e

    .line 321
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 318
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->finish()V

    .line 319
    const/4 v0, 0x1

    goto :goto_7

    .line 316
    nop

    :pswitch_data_e
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 338
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    .line 339
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 264
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 266
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/MonthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 270
    .local v0, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->dismissPopup()V

    .line 271
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/MonthView;
    check-cast v0, Lcom/android/calendar/MonthView;

    .line 272
    .restart local v0       #view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->dismissPopup()V

    .line 273
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 274
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 326
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .registers 12

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 279
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v7}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 280
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    .line 282
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/MonthView;

    .line 283
    .local v5, view1:Lcom/android/calendar/MonthView;
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/MonthView;

    .line 284
    .local v6, view2:Lcom/android/calendar/MonthView;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 285
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v7, "preferredDetailedView"

    sget-object v8, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v6, v4}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 291
    sget-object v7, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v0, v7, v8

    .line 292
    .local v0, activityString:Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 293
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "startView"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 299
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v7, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/android/calendar/MonthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    iget-object v7, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    const-string v0, "beginTime"

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    return-void
.end method

.method protected startProgressSpinner()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    return-void
.end method

.method protected stopProgressSpinner()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    return-void
.end method
