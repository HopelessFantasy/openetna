.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$LocalWindowManager;,
        Landroid/view/Window$Callback;
    }
.end annotation


# static fields
.field protected static final DEFAULT_FEATURES:I = 0x41

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_NO_TITLE:I = 0x1

.field private static final FEATURE_OPENGL:I = 0x8

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final PROGRESS_END:I = 0x2710

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3

.field public static final PROGRESS_SECONDARY_END:I = 0x7530

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20

.field public static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/16 v0, 0x41

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v1, p0, Landroid/view/Window;->mIsActive:Z

    .line 101
    iput-boolean v1, p0, Landroid/view/Window;->mHasChildren:Z

    .line 102
    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 104
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 105
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 107
    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 110
    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 113
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 283
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 284
    return-void
.end method

.method static synthetic access$000(Landroid/view/Window;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/Window;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Window;)Landroid/view/Window;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/Window;)Landroid/os/IBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 588
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    .line 589
    return-void
.end method

.method public clearFlags(I)V
    .registers 3
    .parameter "flags"

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    .line 599
    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .parameter "id"

    .prologue
    .line 711
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method protected final getFeatures()I
    .registers 2

    .prologue
    .line 967
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method protected final getForcedWindowFlags()I
    .registers 2

    .prologue
    .line 659
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method protected final getLocalFeatures()I
    .registers 2

    .prologue
    .line 979
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .registers 3

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_1
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    if-nez v0, :cond_f

    .line 303
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 306
    :cond_f
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    .line 307
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final hasChildren()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method protected final hasSoftInputMode()Z
    .registers 2

    .prologue
    .line 666
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method public final isActive()Z
    .registers 2

    .prologue
    .line 699
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .registers 3

    .prologue
    .line 687
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_15

    .line 688
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v0, :cond_11

    .line 689
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget-object v0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/Window;->mIsActive:Z

    .line 691
    :cond_11
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 693
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 694
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 695
    return-void
.end method

.method protected abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method public requestFeature(I)Z
    .registers 6
    .parameter "featureId"

    .prologue
    const/4 v3, 0x1

    .line 680
    shl-int v0, v3, p1

    .line 681
    .local v0, flag:I
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, v0

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 682
    iget v1, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    iget v2, v2, Landroid/view/Window;->mFeatures:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v0

    :goto_15
    or-int/2addr v1, v2

    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 683
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_21

    move v1, v3

    :goto_1e
    return v1

    :cond_1f
    move v2, v0

    .line 682
    goto :goto_15

    .line 683
    :cond_21
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 638
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 639
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_10

    .line 640
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    iget-object v1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 642
    :cond_10
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .registers 3
    .parameter "resid"

    .prologue
    .line 820
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 821
    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 450
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 451
    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setContainer(Landroid/view/Window;)V
    .registers 3
    .parameter "container"

    .prologue
    .line 318
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 319
    if-eqz p1, :cond_13

    .line 321
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 322
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 325
    :cond_13
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method protected setDefaultWindowFormat(I)V
    .registers 4
    .parameter "format"

    .prologue
    .line 993
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 994
    iget-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v1, :cond_15

    .line 995
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 996
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 997
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_15

    .line 998
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 1001
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_15
    return-void
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .registers 6
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 620
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 621
    iget v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 622
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_1c

    .line 623
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 625
    :cond_1c
    return-void
.end method

.method public setFormat(I)V
    .registers 4
    .parameter "format"

    .prologue
    .line 533
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 534
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_15

    .line 535
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 536
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 541
    :goto_b
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_14

    .line 542
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 544
    :cond_14
    return-void

    .line 538
    :cond_15
    iget v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 539
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_b
.end method

.method public setGravity(I)V
    .registers 4
    .parameter "gravity"

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 501
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 502
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_f

    .line 503
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 505
    :cond_f
    return-void
.end method

.method public setLayout(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 481
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 482
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 483
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_11

    .line 484
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 486
    :cond_11
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 569
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 570
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_15

    .line 571
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 572
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 576
    :goto_b
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_14

    .line 577
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 579
    :cond_14
    return-void

    .line 574
    :cond_15
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_b
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
.end method

.method public setType(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 515
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 516
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_f

    .line 517
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 519
    :cond_f
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 555
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 556
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz v1, :cond_f

    .line 557
    iget-object v1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    invoke-interface {v1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 559
    :cond_f
    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5
    .parameter "wm"
    .parameter "appToken"
    .parameter "appName"

    .prologue
    .line 350
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 351
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 352
    if-nez p1, :cond_a

    .line 353
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object p1

    .line 355
    :cond_a
    new-instance v0, Landroid/view/Window$LocalWindowManager;

    invoke-direct {v0, p0, p1}, Landroid/view/Window$LocalWindowManager;-><init>(Landroid/view/Window;Landroid/view/WindowManager;)V

    iput-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    .line 356
    return-void
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
