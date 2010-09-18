.class public Lcom/android/settings/ConfirmLockPattern;
.super Landroid/app/Activity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$4;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# static fields
.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 192
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$1;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$2;-><init>(Lcom/android/settings/ConfirmLockPattern;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPattern;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPattern;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPattern;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/settings/ConfirmLockPattern;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmLockPattern;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmLockPattern;Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmLockPattern;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ConfirmLockPattern;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 238
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 240
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$3;-><init>(Lcom/android/settings/ConfirmLockPattern;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 259
    return-void
.end method

.method private postClearPatternRunnable()V
    .registers 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 202
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    return-void
.end method

.method private updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .registers 5
    .parameter "stage"

    .prologue
    const/4 v2, 0x1

    .line 151
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$4;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_86

    .line 190
    :goto_c
    return-void

    .line 153
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2e

    .line 154
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_18
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_37

    .line 159
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_23
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_c

    .line 156
    :cond_2e
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f080279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    .line 161
    :cond_37
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f08027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_23

    .line 168
    :pswitch_40
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_68

    .line 169
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_4b
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_71

    .line 174
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_56
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_c

    .line 171
    :cond_68
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f08027b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4b

    .line 176
    :cond_71
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f08027c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_56

    .line 184
    :pswitch_7a
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_c

    .line 151
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_d
        :pswitch_40
        :pswitch_7a
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 84
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->requestWindowFeature(I)Z

    .line 85
    const v2, 0x7f030015

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->setContentView(I)V

    .line 87
    const v2, 0x7f0a0034

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderTextView:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0a0035

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 89
    const v2, 0x7f0a0036

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterTextView:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0a0004

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 96
    .local v1, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_6d

    .line 100
    const-string v2, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderText:Ljava/lang/CharSequence;

    .line 101
    const-string v2, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterText:Ljava/lang/CharSequence;

    .line 102
    const-string v2, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 103
    const-string v2, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 106
    :cond_6d
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 108
    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 110
    if-eqz p1, :cond_8f

    .line 111
    const-string v2, "num_wrong_attempts"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    .line 121
    :cond_8e
    :goto_8e
    return-void

    .line 116
    :cond_8f
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 117
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmLockPattern;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    goto :goto_8e
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 136
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 144
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    .line 145
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->handleAttemptLockout(J)V

    .line 147
    :cond_12
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 126
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    return-void
.end method
