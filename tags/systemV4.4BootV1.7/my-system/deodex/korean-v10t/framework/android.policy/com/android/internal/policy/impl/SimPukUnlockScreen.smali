.class public Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1b58

.field private static final EMERGENCY_DIALER_WAKE_MILLIS:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "SimPukUnlockScreen"


# instance fields
.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreatedWithKeyboardOpen:Z

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private final mEnteredCode:[I

.field private mEnteredDigits:I

.field private mEntryText:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mNewPinCode:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mPukCode:Ljava/lang/String;

.field private mRetryText:Landroid/widget/TextView;

.field private mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private puk1_retry_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 9
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_be

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredCode:[I

    .line 93
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 95
    iput-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 102
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 103
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 104
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyboardOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    .line 105
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "SimPukUnlockScreen() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eqz v0, :cond_a5

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090032

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 113
    :goto_36
    const v0, 0x1020196

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 115
    const v0, 0x10201fd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    .line 117
    const v0, 0x1020194

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    .line 118
    const v0, 0x1020195

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x102017e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    .line 122
    const v0, 0x1020184

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 125
    sget-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 128
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eqz v0, :cond_b5

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 135
    :goto_95
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 139
    return-void

    .line 109
    :cond_a5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090033

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V

    goto :goto_36

    .line 132
    :cond_b5
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setFocusableInTouchMode(Z)V

    goto :goto_95

    .line 91
    :array_be
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->puk1_retry_count:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->puk1_retry_count:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkPuk()V
    .registers 4

    .prologue
    .line 335
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "checkPuk() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimPukUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 347
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->start()V

    .line 387
    return-void
.end method

.method private getSimPukUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3c

    .line 306
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040193

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 316
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getState()Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 500
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 508
    :goto_11
    return-void

    .line 506
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredCode:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 529
    return-void
.end method

.method private showPukDialog(Ljava/lang/String;)V
    .registers 7
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 321
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 326
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 330
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 331
    return-void
.end method

.method private updateView()V
    .registers 7

    .prologue
    const v4, 0x2020003

    const/4 v3, 0x4

    const/4 v5, 0x0

    .line 543
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_c4

    .line 597
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    return-void

    .line 545
    :pswitch_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x2020001

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 547
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_34

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 551
    :cond_34
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPUK1RetryNum()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->puk1_retry_count:I

    .line 552
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->puk1_retry_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    const/16 v1, 0x8

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v1, v2, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v1, :cond_12

    .line 557
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_12

    .line 563
    :pswitch_75
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v3, v1, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v1, :cond_12

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_12

    .line 572
    :pswitch_88
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x2020004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 575
    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v3, v1, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v1, :cond_12

    .line 576
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_12

    .line 582
    :pswitch_9f
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x2020005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, message:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialog(Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 588
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 591
    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v3, v1, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v1, :cond_12

    .line 592
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_12

    .line 543
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_75
        :pswitch_88
        :pswitch_9f
    .end packed-switch
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin2"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 537
    const/4 v0, 0x1

    .line 539
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public OnLocaleChange()V
    .registers 1

    .prologue
    .line 516
    return-void
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    const-string v7, "SimPukUnlockScreen"

    .line 221
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x1b58

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 224
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 225
    .local v1, digits:Landroid/text/Editable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v3, :cond_58

    .line 226
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 227
    .local v2, len:I
    if-lez v2, :cond_28

    .line 228
    sub-int v3, v2, v8

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 229
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v3, v8

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 232
    :cond_28
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v3, :cond_39

    .line 234
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_132

    .line 302
    .end local v2           #len:I
    :cond_39
    :goto_39
    return-void

    .line 236
    .restart local v2       #len:I
    :pswitch_3a
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v9, :cond_39

    .line 237
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_39

    .line 241
    :pswitch_44
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v6, :cond_39

    .line 242
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_39

    .line 246
    :pswitch_4e
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v6, :cond_39

    .line 247
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_39

    .line 255
    .end local v2           #len:I
    :cond_58
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_69

    .line 258
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x3a98

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 261
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_39

    .line 262
    :cond_69
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_39

    .line 263
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 264
    const-string v3, "SimPukUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onClick] mOkButton() is clicked. mEnteredDigits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, code:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_13c

    goto :goto_39

    .line 268
    :pswitch_a5
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v9, :cond_39

    .line 270
    const-string v3, "SimPukUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onClick] puk code entered, request for new pin, mEnteredDigits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 272
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 273
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 274
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_39

    .line 278
    :pswitch_d1
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_39

    .line 280
    const-string v3, "SimPukUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onClick] new pin code entered, verify pin, mEnteredDigits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 282
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 283
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_39

    .line 288
    :pswitch_fd
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_39

    .line 290
    const-string v3, "SimPukUnlockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onClick] new pin code re-entered, mEnteredDigits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 293
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto/16 :goto_39

    .line 295
    :cond_126
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 296
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 297
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_39

    .line 234
    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_44
        :pswitch_4e
    .end packed-switch

    .line 266
    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_d1
        :pswitch_fd
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "SimPukUnlockScreen"

    .line 391
    if-ne p1, v6, :cond_12

    .line 393
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 395
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v2, v5

    .line 496
    :goto_11
    return v2

    .line 399
    :cond_12
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 400
    .local v1, match:C
    if-eqz v1, :cond_52

    .line 401
    const/16 v2, 0x30

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    .line 403
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v2, :cond_32

    .line 405
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_12a

    :cond_32
    :goto_32
    move v2, v5

    .line 423
    goto :goto_11

    .line 407
    :pswitch_34
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v2, v8, :cond_32

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 412
    :pswitch_3e
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v2, v6, :cond_32

    .line 413
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 417
    :pswitch_48
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v2, v6, :cond_32

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 425
    :cond_52
    const/16 v2, 0x43

    if-ne p1, v2, :cond_95

    .line 426
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_75

    .line 427
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 428
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 430
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-nez v2, :cond_75

    .line 432
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_134

    :cond_75
    :goto_75
    move v2, v5

    .line 451
    goto :goto_11

    .line 434
    :pswitch_77
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v8, :cond_75

    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_75

    .line 439
    :pswitch_81
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_75

    .line 440
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_75

    .line 444
    :pswitch_8b
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_75

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_75

    .line 454
    :cond_95
    const/16 v2, 0x42

    if-ne p1, v2, :cond_126

    .line 455
    const-string v2, "SimPukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyDown] KeyEvent.KEYCODE_ENTER. mEnteredDigits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, code:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_13e

    :goto_ca
    move v2, v5

    .line 493
    goto/16 :goto_11

    .line 459
    :pswitch_cd
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v8, :cond_d4

    move v2, v4

    .line 460
    goto/16 :goto_11

    .line 461
    :cond_d4
    const-string v2, "SimPukUnlockScreen"

    const-string v2, "[onKeyDown] puk code entered, request for new pin"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 463
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 464
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 465
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_ca

    .line 469
    :pswitch_e8
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_ef

    move v2, v4

    .line 470
    goto/16 :goto_11

    .line 471
    :cond_ef
    const-string v2, "SimPukUnlockScreen"

    const-string v2, "[onKeyDown] new pin code entered, verify pin"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 473
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 474
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 475
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_ca

    .line 479
    :pswitch_103
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_10a

    move v2, v4

    .line 480
    goto/16 :goto_11

    .line 481
    :cond_10a
    const-string v2, "SimPukUnlockScreen"

    const-string v2, "[onKeyDown] new pin code re-entered"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 484
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto :goto_ca

    .line 486
    :cond_11b
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 487
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 488
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_ca

    .end local v0           #code:Ljava/lang/String;
    :cond_126
    move v2, v4

    .line 496
    goto/16 :goto_11

    .line 405
    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3e
        :pswitch_48
    .end packed-switch

    .line 432
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_77
        :pswitch_81
        :pswitch_8b
    .end packed-switch

    .line 457
    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_e8
        :pswitch_103
    .end packed-switch
.end method

.method public onKeyboardChange(Z)V
    .registers 5
    .parameter "isKeyboardOpen"

    .prologue
    .line 521
    const-string v0, "SimPukUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyboardChange() is caled. isKeyboardOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCreatedWithKeyboardOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eq p1, v0, :cond_2d

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe()V

    .line 525
    :cond_2d
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 5
    .parameter "inPortrait"

    .prologue
    .line 511
    const-string v0, "SimPukUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChange() is caled. inPortrait = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 168
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 170
    return-void
.end method
