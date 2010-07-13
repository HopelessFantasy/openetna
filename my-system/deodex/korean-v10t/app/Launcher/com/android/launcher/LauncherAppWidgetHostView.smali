.class public Lcom/android/launcher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher/LauncherAppWidgetHostView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher/LauncherAppWidgetHostView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher/LauncherAppWidgetHostView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher/LauncherAppWidgetHostView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/android/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .registers 4

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 105
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_e

    .line 106
    new-instance v0, Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    .line 108
    :cond_e
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 109
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 117
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 120
    :cond_f
    return-void
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/android/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 47
    .local v0, mInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 49
    iget-object v1, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    :goto_1b
    return-object v1

    :cond_1c
    iget-object v1, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030004

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1b
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_9

    .line 59
    iput-boolean v1, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 60
    const/4 v0, 0x1

    .line 81
    :goto_8
    return v0

    .line 65
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :cond_10
    :goto_10
    :pswitch_10
    move v0, v1

    .line 81
    goto :goto_8

    .line 67
    :pswitch_12
    invoke-direct {p0}, Lcom/android/launcher/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_10

    .line 73
    :pswitch_16
    iput-boolean v1, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 74
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_10

    .line 75
    iget-object v0, p0, Lcom/android/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 65
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_12
        :pswitch_16
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
