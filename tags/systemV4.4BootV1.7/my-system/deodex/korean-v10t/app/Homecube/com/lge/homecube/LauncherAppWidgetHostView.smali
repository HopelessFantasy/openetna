.class public Lcom/lge/homecube/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/lge/homecube/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/homecube/LauncherAppWidgetHostView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/lge/homecube/LauncherAppWidgetHostView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/homecube/LauncherAppWidgetHostView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/homecube/LauncherAppWidgetHostView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 95
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_e

    .line 96
    new-instance v0, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/lge/homecube/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    .line 98
    :cond_e
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 99
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/homecube/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    return-void
.end method


# virtual methods
.method protected getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-boolean v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_9

    .line 49
    iput-boolean v1, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 50
    const/4 v0, 0x1

    .line 71
    :goto_8
    return v0

    .line 55
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :cond_10
    :goto_10
    :pswitch_10
    move v0, v1

    .line 71
    goto :goto_8

    .line 57
    :pswitch_12
    invoke-direct {p0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_10

    .line 63
    :pswitch_16
    iput-boolean v1, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 64
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_10

    .line 65
    iget-object v0, p0, Lcom/lge/homecube/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/lge/homecube/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/lge/homecube/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 55
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_12
        :pswitch_16
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
