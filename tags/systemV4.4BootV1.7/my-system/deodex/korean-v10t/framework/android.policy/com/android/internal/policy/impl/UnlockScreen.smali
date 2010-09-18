.class Lcom/android/internal/policy/impl/UnlockScreen;
.super Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
.source "UnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockScreen$5;,
        Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;,
        Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;
    }
.end annotation


# static fields
.field private static final EMERGENCY_DIALER_WAKE_MILLIS:I = 0x3a98

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "UnlockScreen"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreatedInPortrait:Z

.field private mFailedPatternAttemptsSinceLastTimeout:I

.field private mFooterForgotPattern:Landroid/view/ViewGroup;

.field private mFooterNormal:Landroid/view/ViewGroup;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mLastPokeTime:J

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTotalFailedPatternAttempts:I

.field private mUnlockHeader:Landroid/widget/TextView;

.field private mUnlockIcon:Landroid/widget/ImageView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V
    .registers 14
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "totalFailedAttempts"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;-><init>(Landroid/content/Context;)V

    .line 57
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 58
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    .line 59
    iput-object v7, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 80
    const-wide/16 v3, -0x1b58

    iput-wide v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLastPokeTime:J

    .line 85
    new-instance v3, Lcom/android/internal/policy/impl/UnlockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 131
    iput-object p2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    iput-object p3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 133
    iput-object p4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 134
    iput p5, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    .line 135
    rem-int/lit8 v3, p5, 0x5

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    .line 137
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090035

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    :goto_35
    const v3, 0x10201a4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockIcon:Landroid/widget/ImageView;

    .line 145
    const v3, 0x10201aa

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 146
    const v3, 0x1020196

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockHeader:Landroid/widget/TextView;

    .line 148
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockHeader:Landroid/widget/TextView;

    const v4, 0x1040181

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 150
    const v3, 0x10201a5

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    .line 151
    const v3, 0x10201a7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    .line 154
    new-instance v1, Lcom/android/internal/policy/impl/UnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/UnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    .line 164
    .local v1, emergencyClick:Landroid/view/View$OnClickListener;
    const v3, 0x10201a6

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 165
    .local v0, emergencyAlone:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v3, 0x10201a9

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 168
    .local v2, emergencyTogether:Landroid/widget/Button;
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 169
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v3, 0x10201a8

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    .line 172
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    const v4, 0x10401a0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/UnlockScreen$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/UnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 185
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternView;->setFocusable(Z)V

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v4, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;

    invoke-direct {v4, p0, v7}, Lcom/android/internal/policy/impl/UnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$1;)V

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 190
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    if-nez v4, :cond_104

    move v4, v6

    :goto_d8
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 196
    sget-object v3, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    .line 198
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCreatedInPortrait:Z

    .line 199
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 200
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/UnlockScreen;->setFocusableInTouchMode(Z)V

    .line 201
    return-void

    .line 140
    .end local v0           #emergencyAlone:Landroid/widget/Button;
    .end local v1           #emergencyClick:Landroid/view/View$OnClickListener;
    .end local v2           #emergencyTogether:Landroid/widget/Button;
    :cond_f8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1090034

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_35

    .restart local v0       #emergencyAlone:Landroid/widget/Button;
    .restart local v1       #emergencyClick:Landroid/view/View$OnClickListener;
    .restart local v2       #emergencyTogether:Landroid/widget/Button;
    :cond_104
    move v4, v5

    .line 190
    goto :goto_d8
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/UnlockScreen;Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UnlockScreen;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/UnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/UnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/UnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/internal/policy/impl/UnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I

    return v0
.end method

.method static synthetic access$808(Lcom/android/internal/policy/impl/UnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/UnlockScreen;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 347
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/UnlockScreen$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/UnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/UnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockScreen$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 366
    return-void
.end method

.method private updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 103
    sget-object v0, Lcom/android/internal/policy/impl/UnlockScreen$5;->$SwitchMap$com$android$internal$policy$impl$UnlockScreen$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 116
    :goto_e
    return-void

    .line 105
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 109
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 113
    :pswitch_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterNormal:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mFooterForgotPattern:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_e

    .line 103
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1a
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public OnLocaleChange()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "ev"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 218
    .local v0, result:Z
    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLastPokeTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_20

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLastPokeTime:J

    .line 222
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1b58

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 224
    :cond_20
    return v0
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 205
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onKeyboardChange(Z)V
    .registers 2
    .parameter "isKeyboardOpen"

    .prologue
    .line 235
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 3
    .parameter "inPortrait"

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCreatedInPortrait:Z

    if-eq p1, v0, :cond_9

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe()V

    .line 232
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_c

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 253
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x1b58

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 263
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockHeader:Landroid/widget/TextView;

    const v3, 0x1040181

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mUnlockIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_69

    move v3, v5

    :goto_21
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 272
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v3

    if-eqz v3, :cond_6b

    move v3, v4

    :goto_49
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 282
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5b

    .line 283
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/UnlockScreen;->handleAttemptLockout(J)V

    .line 287
    :cond_5b
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 288
    sget-object v2, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->VerifyUnlocked:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    .line 294
    :goto_68
    return-void

    .end local v0           #deadline:J
    :cond_69
    move v3, v4

    .line 268
    goto :goto_21

    .line 277
    :cond_6b
    const/4 v3, 0x4

    goto :goto_49

    .line 289
    .restart local v0       #deadline:J
    :cond_6d
    iget v2, p0, Lcom/android/internal/policy/impl/UnlockScreen;->mTotalFailedPatternAttempts:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_78

    .line 290
    sget-object v2, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->Normal:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    goto :goto_68

    .line 292
    :cond_78
    sget-object v2, Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockScreen;->updateFooter(Lcom/android/internal/policy/impl/UnlockScreen$FooterMode;)V

    goto :goto_68
.end method
