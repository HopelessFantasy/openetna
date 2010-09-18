.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLockUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MediaFormat;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_24

    .line 138
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0a0075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_24
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method private establishInitialState()V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_24

    .line 161
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0a0076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    :cond_24
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 168
    return-void
.end method

.method private runKeyguardConfirmation()V
    .registers 4

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    const v2, 0x7f080259

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 96
    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    const v2, 0x7f08025a

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 98
    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MediaFormat;->startActivityForResult(Landroid/content/Intent;I)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    const/16 v0, 0x37

    if-eq p1, v0, :cond_8

    .line 116
    :goto_7
    return-void

    .line 111
    :cond_8
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    .line 112
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_7

    .line 114
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedState"

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 175
    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 176
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 177
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mLockUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 179
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 180
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 191
    return-void
.end method
