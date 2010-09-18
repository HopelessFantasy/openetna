.class Lcom/android/calendar/CalendarActivity$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 375
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doDown(Landroid/view/MotionEvent;)V

    .line 376
    const/4 v1, 0x1

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 368
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 369
    const/4 v1, 0x1

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 355
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doLongPress(Landroid/view/MotionEvent;)V

    .line 356
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 361
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/calendar/CalendarView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 362
    const/4 v1, 0x1

    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "ev"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 349
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doShowPress(Landroid/view/MotionEvent;)V

    .line 350
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/android/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 342
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/android/calendar/CalendarView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    .line 343
    const/4 v1, 0x1

    return v1
.end method
