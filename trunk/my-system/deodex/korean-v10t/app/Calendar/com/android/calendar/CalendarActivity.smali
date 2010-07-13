.class public Lcom/android/calendar/CalendarActivity;
.super Landroid/app/Activity;
.source "CalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarActivity$CalendarGestureListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final INITIAL_HEAP_SIZE:J = 0x400000L


# instance fields
.field private mAccountMonitor:Landroid/accounts/AccountMonitor;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mGestureDetector:Landroid/view/GestureDetector;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field mSelectedDay:Landroid/text/format/Time;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 73
    new-instance v0, Lcom/android/calendar/CalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$1;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/android/calendar/CalendarActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$2;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    .line 338
    return-void
.end method


# virtual methods
.method eventsChanged()V
    .registers 3

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 235
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->clearCachedEvents()V

    .line 236
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 237
    return-void
.end method

.method public getAllDay()Z
    .registers 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 230
    .local v0, view:Lcom/android/calendar/CalendarView;
    iget-boolean v1, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    return v1
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .registers 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 251
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getNewEvent()Lcom/android/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getNextView()Lcom/android/calendar/CalendarView;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/CalendarView;

    return-object p0
.end method

.method getSelectedEvent()Lcom/android/calendar/Event;
    .registers 3

    .prologue
    .line 240
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 241
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedEvent()Lcom/android/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTime()J
    .registers 3

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .registers 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 214
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public goTo(Landroid/text/format/Time;)V
    .registers 6
    .parameter "time"

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 190
    .local v0, current:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 191
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 192
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :goto_20
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarView;

    .line 199
    .local v1, next:Lcom/android/calendar/CalendarView;
    invoke-virtual {v1, p1}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 200
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 201
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 202
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->requestFocus()Z

    .line 203
    return-void

    .line 194
    .end local v1           #next:Lcom/android/calendar/CalendarView;
    :cond_37
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 195
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_20
.end method

.method public goToToday()V
    .registers 5

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 223
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 224
    .local v0, view:Lcom/android/calendar/CalendarView;
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 225
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 226
    return-void
.end method

.method isEventSelected()Z
    .registers 3

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 246
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const-wide/32 v3, 0x400000

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    move-result-wide v0

    .line 108
    .local v0, oldHeapSize:J
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/calendar/CalendarActivity;->setDefaultKeyMode(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 111
    const v2, 0x7f040002

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 112
    const v2, 0x7f040003

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 113
    const v2, 0x7f040004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 114
    const v2, 0x7f040005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 116
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;

    invoke-direct {v3, p0}, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 117
    new-instance v2, Lcom/android/calendar/EventLoader;

    invoke-direct {v2, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 118
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 316
    invoke-static {p1}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 317
    const/4 v0, 0x0

    .line 319
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mAccountMonitor:Landroid/accounts/AccountMonitor;

    if-eqz v0, :cond_9

    .line 158
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mAccountMonitor:Landroid/accounts/AccountMonitor;

    invoke-virtual {v0}, Landroid/accounts/AccountMonitor;->close()V

    .line 160
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 161
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 324
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 325
    const/4 v0, 0x1

    .line 327
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 167
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 170
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 171
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/CalendarView;
    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 172
    .restart local v0       #view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 173
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 174
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 310
    invoke-static {p0, p1}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 311
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarView;

    .line 125
    .local v1, view:Lcom/android/calendar/CalendarView;
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 126
    .local v0, time:Landroid/text/format/Time;
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 127
    invoke-virtual {v1, v0}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 128
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 134
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->eventsChanged()V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/CalendarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 153
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 333
    const/4 v0, 0x1

    .line 335
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method startProgressSpinner()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 179
    return-void
.end method

.method stopProgressSpinner()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 184
    return-void
.end method

.method public switchViews(ZFF)Landroid/view/View;
    .registers 26
    .parameter "forward"
    .parameter "xOffSet"
    .parameter "width"

    .prologue
    .line 259
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v20, v4, p3

    .line 260
    .local v20, progress:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v20, v4

    if-lez v4, :cond_e

    .line 261
    const/high16 v20, 0x3f80

    .line 266
    :cond_e
    if-eqz p1, :cond_84

    .line 267
    const/high16 v4, 0x3f80

    sub-float v5, v4, v20

    .line 268
    .local v5, inFromXValue:F
    const/4 v7, 0x0

    .line 269
    .local v7, inToXValue:F
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v19, v0

    .line 270
    .local v19, outFromXValue:F
    const/high16 v12, -0x4080

    .line 280
    .local v12, outToXValue:F
    :goto_1c
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 286
    .local v3, inAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v10, v19

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 293
    .local v8, outAnimation:Landroid/view/animation/TranslateAnimation;
    const/high16 v4, 0x43c8

    const/high16 v5, 0x3f80

    sub-float v5, v5, v20

    mul-float/2addr v4, v5

    move v0, v4

    float-to-long v0, v0

    move-wide/from16 v17, v0

    .line 294
    .local v17, duration:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 295
    .end local v5           #inFromXValue:F
    move-object v0, v8

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4, v8}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/CalendarView;

    .line 300
    .local v21, view:Lcom/android/calendar/CalendarView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v21

    .end local v21           #view:Lcom/android/calendar/CalendarView;
    check-cast v21, Lcom/android/calendar/CalendarView;

    .line 303
    .restart local v21       #view:Lcom/android/calendar/CalendarView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/CalendarView;->requestFocus()Z

    .line 304
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 305
    return-object v21

    .line 272
    .end local v3           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v7           #inToXValue:F
    .end local v8           #outAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v12           #outToXValue:F
    .end local v17           #duration:J
    .end local v19           #outFromXValue:F
    .end local v21           #view:Lcom/android/calendar/CalendarView;
    :cond_84
    const/high16 v4, 0x3f80

    sub-float v5, v20, v4

    .line 273
    .restart local v5       #inFromXValue:F
    const/4 v7, 0x0

    .line 274
    .restart local v7       #inToXValue:F
    move/from16 v19, v20

    .line 275
    .restart local v19       #outFromXValue:F
    const/high16 v12, 0x3f80

    .restart local v12       #outToXValue:F
    goto :goto_1c
.end method
