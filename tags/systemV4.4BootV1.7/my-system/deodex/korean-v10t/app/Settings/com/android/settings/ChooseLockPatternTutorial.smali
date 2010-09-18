.class public Lcom/android/settings/ChooseLockPatternTutorial;
.super Landroid/app/Activity;
.source "ChooseLockPatternTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUESTCODE_EXAMPLE:I = 0x1


# instance fields
.field private mNextButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 48
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->setContentView(I)V

    .line 49
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
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

    .line 68
    if-ne p1, v0, :cond_b

    if-ne p2, v0, :cond_b

    .line 69
    invoke-virtual {p0, p2}, Lcom/android/settings/ChooseLockPatternTutorial;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 72
    :cond_b
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_c

    .line 58
    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPatternTutorial;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 64
    :cond_b
    :goto_b
    return-void

    .line 60
    :cond_c
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternTutorial;->mNextButton:Landroid/view/View;

    if-ne p1, v0, :cond_b

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ChooseLockPatternExample;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/ContentResolver;)V

    .line 37
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    if-nez p1, :cond_27

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockPattern"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPatternTutorial;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->finish()V

    .line 45
    .end local v0           #intent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 43
    :cond_27
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternTutorial;->initViews()V

    goto :goto_26
.end method
