.class Lcom/android/internal/policy/impl/LockScreen;
.super Landroid/widget/LinearLayout;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockScreen$IccText;
    }
.end annotation


# static fields
.field private static final EMERGENCY_DIALER_WAKE_MILLIS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "LockScreen"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAlarmSpacer:Landroid/view/View;

.field private mAlarmText:Landroid/widget/TextView;

.field private mBatteryInfoGroup:Landroid/view/ViewGroup;

.field private mBatteryInfoIcon:Landroid/widget/ImageView;

.field private mBatteryInfoSpacer:Landroid/view/View;

.field private mBatteryInfoText:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mDate:Landroid/widget/TextView;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mHeaderSimBad1:Landroid/widget/TextView;

.field private mHeaderSimBad2:Landroid/widget/TextView;

.field private mHeaderSimOk1:Landroid/widget/TextView;

.field private mHeaderSimOk2:Landroid/widget/TextView;

.field private mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

.field private mImageButton:Landroid/widget/ImageButton;

.field private mLockInstructions:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextAlarmGroup:Landroid/view/ViewGroup;

.field private mOnlyVisibleWhenSimNotOk:[Landroid/view/View;

.field private mOnlyVisibleWhenSimOk:[Landroid/view/View;

.field private mPluggedIn:Z

.field private mRuimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

.field private mScreenLockedMessageGroup:Landroid/view/ViewGroup;

.field private mShowingBatteryInfo:Z

.field private mSimOk:Z

.field private mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

.field private mTime:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWM:Landroid/view/IWindowManager;

.field private marrowImage:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 14
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/high16 v3, 0x41d0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 153
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const-string v2, "LockScreen"

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->LOG_TAG:Ljava/lang/String;

    .line 119
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimOk:Z

    .line 122
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 125
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 128
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 154
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 156
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 160
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 161
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090031

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 163
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->isSimOk(Lcom/android/internal/telephony/IccCard$State;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimOk:Z

    .line 164
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 165
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 166
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 168
    const v2, 0x1020185

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    .line 169
    const v2, 0x1020186

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    .line 171
    const v2, 0x1020187

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    .line 172
    const v2, 0x1020188

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    .line 174
    const v2, 0x1020059

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mTime:Landroid/widget/TextView;

    .line 175
    const v2, 0x1020058

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 180
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_a6

    .line 183
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    :cond_a6
    const v2, 0x1020189

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoGroup:Landroid/view/ViewGroup;

    .line 190
    const v2, 0x102018a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoIcon:Landroid/widget/ImageView;

    .line 191
    const v2, 0x102018b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    .line 192
    const v2, 0x102018c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoSpacer:Landroid/view/View;

    .line 194
    const v2, 0x102018d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarmGroup:Landroid/view/ViewGroup;

    .line 195
    const v2, 0x102018e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmText:Landroid/widget/TextView;

    .line 196
    const v2, 0x102018f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmSpacer:Landroid/view/View;

    .line 199
    const v2, 0x10201f8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mImageButton:Landroid/widget/ImageButton;

    .line 201
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x203005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    const v2, 0x10201f9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->marrowImage:Landroid/widget/ImageView;

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->marrowImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mImageButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/LockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/LockScreen$1;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 220
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mWM:Landroid/view/IWindowManager;

    .line 221
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 224
    const v2, 0x1020190

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLockedMessageGroup:Landroid/view/ViewGroup;

    .line 226
    const v2, 0x1020191

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockInstructions:Landroid/widget/TextView;

    .line 228
    const v2, 0x1020192

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 230
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/LockScreen$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/LockScreen$2;-><init>(Lcom/android/internal/policy/impl/LockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const/16 v2, 0x8

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoGroup:Landroid/view/ViewGroup;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoSpacer:Landroid/view/View;

    aput-object v3, v2, v8

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarmGroup:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmSpacer:Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mScreenLockedMessageGroup:Landroid/view/ViewGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockInstructions:Landroid/widget/TextView;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimOk:[Landroid/view/View;

    .line 252
    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimNotOk:[Landroid/view/View;

    .line 258
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockScreen;->setFocusable(Z)V

    .line 259
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/LockScreen;->setFocusableInTouchMode(Z)V

    .line 260
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockScreen;->setDescendantFocusability(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryDisplay()V

    .line 263
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 264
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshUnlockIntructions()V

    .line 266
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshViewsWRTSimOk()V

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/LockScreen;->refreshSimOkHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 270
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 271
    invoke-virtual {p3, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method private createRuimText()Lcom/android/internal/policy/impl/LockScreen$IccText;
    .registers 3

    .prologue
    .line 687
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$IccText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/LockScreen$IccText;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V

    .line 688
    .local v0, ruimText:Lcom/android/internal/policy/impl/LockScreen$IccText;
    const v1, 0x104019a

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    .line 689
    const v1, 0x104019b

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedInstructions:I

    .line 690
    const v1, 0x1040197

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessage:I

    .line 691
    const v1, 0x1040198

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    .line 692
    const v1, 0x1040195

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccErrorMessage:I

    .line 693
    const v1, 0x104017f

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccInstructionsWhenPatternEnabled:I

    .line 694
    const v1, 0x1040180

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccInstructionsWhenPatternDisabled:I

    .line 695
    const v1, 0x104019c

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    .line 696
    const v1, 0x1040196

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    .line 697
    const v1, 0x1040194

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccErrorMessageShort:I

    .line 698
    const v1, 0x1040199

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->networkLockedMessage:I

    .line 699
    return-object v0
.end method

.method private createSimText()Lcom/android/internal/policy/impl/LockScreen$IccText;
    .registers 3

    .prologue
    .line 670
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$IccText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/LockScreen$IccText;-><init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/policy/impl/LockScreen$1;)V

    .line 671
    .local v0, simText:Lcom/android/internal/policy/impl/LockScreen$IccText;
    const v1, 0x1040190

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    .line 672
    const v1, 0x1040191

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedInstructions:I

    .line 673
    const v1, 0x1040189

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessage:I

    .line 674
    const v1, 0x104018a

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingInstructions:I

    .line 675
    const v1, 0x104018c

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccErrorMessage:I

    .line 676
    const v1, 0x104017f

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccInstructionsWhenPatternEnabled:I

    .line 677
    const v1, 0x1040180

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccInstructionsWhenPatternDisabled:I

    .line 678
    const v1, 0x1040192

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    .line 679
    const v1, 0x1040188

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    .line 680
    const v1, 0x104018b

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccErrorMessageShort:I

    .line 681
    const v1, 0x104018f

    iput v1, v0, Lcom/android/internal/policy/impl/LockScreen$IccText;->networkLockedMessage:I

    .line 682
    return-object v0
.end method

.method private getCurrentText()Lcom/android/internal/policy/impl/LockScreen$IccText;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 704
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 705
    .local v0, activePhoneType:I
    if-ne v3, v0, :cond_37

    move v1, v3

    .line 706
    .local v1, isGsm:Z
    :goto_c
    const-string v2, "LockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating Lock Screen text to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3a

    const-string v4, "Sim"

    :goto_1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    if-eqz v1, :cond_3d

    .line 709
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    if-nez v2, :cond_34

    .line 710
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->createSimText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 712
    :cond_34
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 717
    :goto_36
    return-object v2

    .line 705
    .end local v1           #isGsm:Z
    :cond_37
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c

    .line 706
    .restart local v1       #isGsm:Z
    :cond_3a
    const-string v4, "Ruim"

    goto :goto_1d

    .line 714
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mRuimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    if-nez v2, :cond_47

    .line 715
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->createRuimText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mRuimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 717
    :cond_47
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mRuimText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    goto :goto_36
.end method

.method private isSimOk(Lcom/android/internal/telephony/IccCard$State;)Z
    .registers 6
    .parameter "simState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_17

    move v0, v3

    .line 552
    .local v0, missingAndNotProvisioned:Z
    :goto_f
    if-nez v0, :cond_19

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_19

    move v1, v3

    :goto_16
    return v1

    .end local v0           #missingAndNotProvisioned:Z
    :cond_17
    move v0, v2

    .line 546
    goto :goto_f

    .restart local v0       #missingAndNotProvisioned:Z
    :cond_19
    move v1, v2

    .line 552
    goto :goto_16
.end method

.method private refreshAlarmDisplay()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 410
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, nextAlarmText:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 415
    .local v1, plmn:Ljava/lang/CharSequence;
    if-eqz v1, :cond_33

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    move v2, v6

    .line 416
    .local v2, showingPlmn:Z
    :goto_17
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isInPortrait()Z

    move-result v4

    if-nez v4, :cond_35

    if-eqz v2, :cond_35

    move v3, v6

    .line 417
    .local v3, wontFit:Z
    :goto_22
    if-eqz v0, :cond_37

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimOk:Z

    if-eqz v4, :cond_37

    if-nez v3, :cond_37

    .line 418
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/LockScreen;->setAlarmInfoVisible(Z)V

    .line 419
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :goto_32
    return-void

    .end local v2           #showingPlmn:Z
    .end local v3           #wontFit:Z
    :cond_33
    move v2, v5

    .line 415
    goto :goto_17

    .restart local v2       #showingPlmn:Z
    :cond_35
    move v3, v5

    .line 416
    goto :goto_22

    .line 421
    .restart local v3       #wontFit:Z
    :cond_37
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockScreen;->setAlarmInfoVisible(Z)V

    goto :goto_32
.end method

.method private refreshBatteryDisplay()V
    .registers 7

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 442
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimOk:Z

    if-nez v0, :cond_16

    .line 443
    :cond_b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoSpacer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :goto_15
    return-void

    .line 447
    :cond_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoSpacer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_57

    .line 451
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoIcon:Landroid/widget/ImageView;

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 452
    iget v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3b

    .line 453
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    const v1, 0x1040186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_15

    .line 455
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040185

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 459
    :cond_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoIcon:Landroid/widget/ImageView;

    const v1, 0x1080020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryInfoText:Landroid/widget/TextView;

    const v1, 0x1040187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_15
.end method

.method private refreshSimBadInfo()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 376
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1f

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 378
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPukLockedInstructions:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 397
    :goto_1e
    return-void

    .line 379
    :cond_1f
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_32

    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    .line 383
    :cond_32
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_45

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccErrorMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    .line 389
    :cond_45
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PREM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_5a

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    const v2, 0x2020007

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    const v2, 0x1040191

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1e

    .line 394
    :cond_5a
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimBad2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e
.end method

.method private refreshSimOkHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/high16 v4, 0x41d8

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 482
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_40

    .line 483
    if-eqz p1, :cond_34

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 484
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :goto_21
    if-eqz p2, :cond_3a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 491
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_33
    :goto_33
    return-void

    .line 487
    :cond_34
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21

    .line 494
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    .line 496
    :cond_40
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_58

    .line 497
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccPinLockedMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 499
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    .line 500
    :cond_58
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_75

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 505
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccMissingMessageShort:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    .line 507
    :cond_75
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8d

    .line 508
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccErrorMessageShort:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 510
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    .line 511
    :cond_8d
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_aa

    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 516
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v2, v2, Lcom/android/internal/policy/impl/LockScreen$IccText;->networkLockedMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33

    .line 522
    :cond_aa
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_33

    .line 523
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk1:Landroid/widget/TextView;

    const v2, 0x1040190

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mHeaderSimOk2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_33
.end method

.method private refreshTimeAndDateDisplay()V
    .registers 4

    .prologue
    .line 469
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 470
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method

.method private refreshUnlockIntructions()V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_26

    .line 403
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockInstructions:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v1, v1, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccInstructionsWhenPatternEnabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 407
    :goto_25
    return-void

    .line 405
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mLockInstructions:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    iget v1, v1, Lcom/android/internal/policy/impl/LockScreen$IccText;->iccInstructionsWhenPatternDisabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_25
.end method

.method private refreshViewsWRTSimOk()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 347
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimOk:Z

    if-eqz v2, :cond_5e

    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimOk:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 349
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimOk:[Landroid/view/View;

    aget-object v1, v2, v0

    .line 350
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_32

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_32
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 353
    .end local v1           #view:Landroid/view/View;
    :cond_38
    const/4 v0, 0x0

    :goto_39
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimNotOk:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_48

    .line 354
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimNotOk:[Landroid/view/View;

    aget-object v1, v2, v0

    .line 355
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 357
    .end local v1           #view:Landroid/view/View;
    :cond_48
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/LockScreen;->refreshSimOkHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 359
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryDisplay()V

    .line 372
    :goto_5d
    return-void

    .line 362
    .end local v0           #i:I
    :cond_5e
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5f
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimOk:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_6e

    .line 363
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimOk:[Landroid/view/View;

    aget-object v1, v2, v0

    .line 364
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 366
    .end local v1           #view:Landroid/view/View;
    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimNotOk:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_7e

    .line 367
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockScreen;->mOnlyVisibleWhenSimNotOk:[Landroid/view/View;

    aget-object v1, v2, v0

    .line 368
    .restart local v1       #view:Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 370
    .end local v1           #view:Landroid/view/View;
    :cond_7e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshSimBadInfo()V

    goto :goto_5d
.end method

.method private setAlarmInfoVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 426
    if-eqz p1, :cond_f

    const/4 v1, 0x0

    move v0, v1

    .line 427
    .local v0, visibilityFlag:I
    :goto_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mNextAlarmGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mAlarmSpacer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 429
    return-void

    .line 426
    .end local v0           #visibilityFlag:I
    :cond_f
    const/16 v1, 0x8

    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method public OnLocaleChange()V
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe()V

    .line 562
    return-void
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 634
    return-void
.end method

.method public forceKeyLockRelease()V
    .registers 2

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 577
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v6, "android.intent.extra.KEY_EVENT"

    const-string v3, "LockScreen"

    .line 293
    sparse-switch p1, :sswitch_data_b8

    :goto_a
    move v1, v4

    .line 343
    :goto_b
    return v1

    .line 296
    :sswitch_c
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 297
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_a

    .line 301
    :sswitch_15
    const-string v1, "LockScreen"

    const-string v1, "**************** ATCMD_CAM ****************"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATCAM_BUTTON"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "LockScreen"

    const-string v1, "**************** ATCMD_CAM: 3 ****************"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    const-string v1, "LockScreen"

    const-string v1, "**************** ATCMD_CAM: 4 ****************"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 310
    const-string v1, "LockScreen"

    const-string v1, "**************** ATCMD_CAM: 5 ****************"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 311
    goto :goto_b

    .line 314
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_4e
    const-string v1, "LockScreen"

    const-string v1, "**************** ATCMD_AVR ****************"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 316
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ATAVR_BUTTON"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v5

    .line 321
    goto :goto_b

    .line 329
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_72
    const-string v1, "LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**************** ATLCD :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.lge.hiddenmenu"

    const-string v2, "com.lge.hiddenmenu.device_test.lcd_test.ManualTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    const-string v1, "ATcmdArgument"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v5

    .line 338
    goto/16 :goto_b

    .line 293
    :sswitch_data_b8
    .sparse-switch
        0x6 -> :sswitch_c
        0x52 -> :sswitch_c
        0x64 -> :sswitch_15
        0x65 -> :sswitch_4e
        0x6c -> :sswitch_72
        0x6d -> :sswitch_72
        0x6e -> :sswitch_72
        0x6f -> :sswitch_72
        0x70 -> :sswitch_72
        0x71 -> :sswitch_72
    .end sparse-switch
.end method

.method public onKeyboardChange(Z)V
    .registers 3
    .parameter "isKeyboardOpen"

    .prologue
    .line 565
    if-eqz p1, :cond_b

    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 569
    :cond_b
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 2
    .parameter "inPortrait"

    .prologue
    .line 558
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 586
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockScreen;->mShowingBatteryInfo:Z

    .line 435
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/LockScreen;->mPluggedIn:Z

    .line 436
    iput p3, p0, Lcom/android/internal/policy/impl/LockScreen;->mBatteryLevel:I

    .line 438
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshBatteryDisplay()V

    .line 439
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockScreen;->refreshSimOkHeaders(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 477
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 478
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshAlarmDisplay()V

    .line 600
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 601
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockScreen;->invalidate()V

    .line 616
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->getCurrentText()Lcom/android/internal/policy/impl/LockScreen$IccText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mIccText:Lcom/android/internal/policy/impl/LockScreen$IccText;

    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockScreen;->isSimOk(Lcom/android/internal/telephony/IccCard$State;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mSimOk:Z

    .line 536
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshViewsWRTSimOk()V

    .line 537
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshUnlockIntructions()V

    .line 538
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockScreen;->refreshTimeAndDateDisplay()V

    .line 466
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 643
    if-nez p1, :cond_a

    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    .line 651
    :cond_9
    :goto_9
    return-void

    .line 647
    :cond_a
    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 649
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockScreen;->setLockScreen(Z)V

    goto :goto_9
.end method

.method public setLockScreen(Z)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setLockScreen(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 628
    :goto_5
    return-void

    .line 626
    :catch_6
    move-exception v0

    goto :goto_5
.end method
