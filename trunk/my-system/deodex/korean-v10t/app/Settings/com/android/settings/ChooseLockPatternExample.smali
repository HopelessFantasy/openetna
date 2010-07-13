.class public Lcom/android/settings/ChooseLockPatternExample;
.super Landroid/app/Activity;
.source "ChooseLockPatternExample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUESTCODE_CHOOSE:I = 0x1

.field private static final START_DELAY:J = 0x3e8L

.field protected static final TAG:Ljava/lang/String; = "Settings"


# instance fields
.field private mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v0, Lcom/android/settings/ChooseLockPatternExample$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPatternExample$1;-><init>(Lcom/android/settings/ChooseLockPatternExample;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockPatternExample;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private initViews()V
    .registers 3

    .prologue
    .line 82
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 92
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 75
    if-ne p1, v0, :cond_b

    if-ne p2, v0, :cond_b

    .line 76
    invoke-virtual {p0, p2}, Lcom/android/settings/ChooseLockPatternExample;->setResult(I)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    .line 79
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mSkipButton:Landroid/view/View;

    if-ne p1, v1, :cond_c

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPatternExample;->setResult(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternExample;->finish()V

    .line 71
    :cond_b
    :goto_b
    return-void

    .line 66
    :cond_c
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mNextButton:Landroid/view/View;

    if-ne p1, v1, :cond_b

    .line 67
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/ChooseLockPatternExample;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternExample;->initViews()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternExample;->stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 59
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternExample;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternExample;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method protected startAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 95
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->run()V

    .line 98
    :cond_b
    return-void
.end method

.method protected stopAnimation(Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 101
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 102
    :cond_b
    return-void
.end method
