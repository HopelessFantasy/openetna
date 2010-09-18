.class public Lcom/android/server/status/TrackingView;
.super Landroid/widget/LinearLayout;
.source "TrackingView.java"


# instance fields
.field final mDisplay:Landroid/view/Display;

.field mService:Lcom/android/server/status/StatusBarService;

.field mStartX:I

.field mStartY:I

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/TrackingView;->mDisplay:Landroid/view/Display;

    .line 21
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_14

    move v0, v2

    .line 32
    .local v0, down:Z
    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_13
    return v1

    .line 31
    .end local v0           #down:Z
    :cond_14
    const/4 v1, 0x0

    move v0, v1

    goto :goto_8

    .line 34
    .restart local v0       #down:Z
    :pswitch_17
    if-eqz v0, :cond_1e

    .line 35
    iget-object v1, p0, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService;->deactivate()V

    :cond_1e
    move v1, v2

    .line 37
    goto :goto_13

    .line 32
    :pswitch_data_20
    .packed-switch 0x4
        :pswitch_17
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 45
    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->onTrackingViewAttached()V

    .line 46
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 25
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 26
    iget-object v0, p0, Lcom/android/server/status/TrackingView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->updateAvailableHeight()V

    .line 27
    return-void
.end method
