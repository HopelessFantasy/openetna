.class public Lcom/android/server/status/CloseDragHandle;
.super Landroid/widget/LinearLayout;
.source "CloseDragHandle.java"


# instance fields
.field mService:Lcom/android/server/status/StatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/status/CloseDragHandle;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    iget-object v0, p0, Lcom/android/server/status/CloseDragHandle;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    :cond_b
    const/4 v0, 0x1

    return v0
.end method
