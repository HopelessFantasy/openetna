.class public Lcom/android/launcher/HandleView;
.super Landroid/widget/ImageView;
.source "HandleView.java"


# static fields
.field private static final ORIENTATION_HORIZONTAL:I = 0x1


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/HandleView;->mOrientation:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v3, p0, Lcom/android/launcher/HandleView;->mOrientation:I

    .line 44
    sget-object v1, Lcom/android/launcher/R$styleable;->HandleView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/HandleView;->mOrientation:I

    .line 46
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    return-void
.end method

.method private static isDirectionKey(I)Z
    .registers 2
    .parameter "keyCode"

    .prologue
    .line 84
    const/16 v0, 0x14

    if-eq p0, v0, :cond_10

    const/16 v0, 0x15

    if-eq p0, v0, :cond_10

    const/16 v0, 0x16

    if-eq p0, v0, :cond_10

    const/16 v0, 0x13

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public focusSearch(I)Landroid/view/View;
    .registers 6
    .parameter "direction"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/ImageView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, newFocus:Landroid/view/View;
    if-nez v0, :cond_25

    iget-object v2, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 53
    iget-object v2, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher/Launcher;->getWorkspace()Lcom/android/launcher/Workspace;

    move-result-object v1

    .line 54
    .local v1, workspace:Lcom/android/launcher/Workspace;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher/Workspace;->dispatchUnhandledMove(Landroid/view/View;I)Z

    .line 55
    iget v2, p0, Lcom/android/launcher/HandleView;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const/16 v2, 0x82

    if-ne p1, v2, :cond_23

    move-object v2, p0

    .line 58
    .end local v1           #workspace:Lcom/android/launcher/Workspace;
    :goto_22
    return-object v2

    .restart local v1       #workspace:Lcom/android/launcher/Workspace;
    :cond_23
    move-object v2, v1

    .line 55
    goto :goto_22

    .end local v1           #workspace:Lcom/android/launcher/Workspace;
    :cond_25
    move-object v2, v0

    .line 58
    goto :goto_22
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 65
    .local v0, handled:Z
    if-nez v0, :cond_1f

    iget-object v1, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {p1}, Lcom/android/launcher/HandleView;->isDirectionKey(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 66
    iget-object v1, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getApplicationsGrid()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 69
    :goto_1e
    return v1

    :cond_1f
    move v1, v0

    goto :goto_1e
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 76
    .local v0, handled:Z
    if-nez v0, :cond_1f

    iget-object v1, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->isDrawerDown()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {p1}, Lcom/android/launcher/HandleView;->isDirectionKey(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 77
    iget-object v1, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getApplicationsGrid()Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/GridView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 80
    :goto_1e
    return v1

    :cond_1f
    move v1, v0

    goto :goto_1e
.end method

.method setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/launcher/HandleView;->mLauncher:Lcom/android/launcher/Launcher;

    .line 90
    return-void
.end method
