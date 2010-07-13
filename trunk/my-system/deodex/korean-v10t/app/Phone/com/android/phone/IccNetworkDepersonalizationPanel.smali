.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


# static fields
.field private static final CORPORATE:I = 0x4

.field private static final DBG:Z = false

.field private static final EVENT_ICC_DEPERSONALIZATION_RESULT:I = 0x65

.field private static final EVENT_ICC_NTWRK_DEPERSONALIZATION_RESULT:I = 0x64

.field private static final EVENT_ICC_NTWRK_LOCK_RETRY_COUNT:I = 0xe8

.field private static final INT_SIZE:I = 0x4

.field private static final NETWORK:I = 0x1

.field private static final NETWORK_SUBSET:I = 0x2

.field private static final SERVICE_PROVIDER:I = 0x3

.field private static final SIM:I = 0x5

.field private static final USIM_LOCK_FLAG_DISABLE:B = 0x56t

.field private static final USIM_LOCK_FLAG_ENABLE:B = 0x34t

.field private static final USIM_LOCK_FLAG_HACKED:B = 0x78t

.field private static final USIM_LOCK_FLAG_NONE:B

.field public static mRetry_count:I


# instance fields
.field OEMHOOK_BASE:I

.field OEMHOOK_ME_DEPERSONALIZATION:I

.field app:Lcom/android/internal/telephony/gsm/SimCard;

.field mCheckDepersonalFlag:Z

.field private final mContext:Landroid/content/Context;

.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaderSize:I

.field private final mOemIdentifier:Ljava/lang/String;

.field private mPersoSubtype:I

.field private mPersoSubtypeText:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mRetryCountText:Landroid/widget/TextView;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetry_count:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const-string v1, "QUALCOMM"

    .line 201
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v0, "QUALCOMM"

    iput-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mOemIdentifier:Ljava/lang/String;

    .line 76
    const-string v0, "QUALCOMM"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderSize:I

    .line 86
    const/high16 v0, 0x8

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_BASE:I

    .line 88
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_BASE:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_ME_DEPERSONALIZATION:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mCheckDepersonalFlag:Z

    .line 124
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 140
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 202
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    .line 206
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mContext:Landroid/content/Context;

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "subtype"

    .prologue
    const-string v1, "QUALCOMM"

    .line 212
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v0, "QUALCOMM"

    iput-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mOemIdentifier:Ljava/lang/String;

    .line 76
    const-string v0, "QUALCOMM"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderSize:I

    .line 86
    const/high16 v0, 0x8

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_BASE:I

    .line 88
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_BASE:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_ME_DEPERSONALIZATION:I

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mCheckDepersonalFlag:Z

    .line 124
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 140
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 213
    iput p2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    .line 217
    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->showSIMLockStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->resetHandset()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;Lcom/android/internal/telephony/gsm/SIMLockInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->storeSIMLockInfo(Lcom/android/internal/telephony/gsm/SIMLockInfo;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicatePermanentLock()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hideAlert()V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    return-void
.end method

.method private indicateBusy()V
    .registers 5

    .prologue
    .line 308
    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_20

    .line 311
    .local v0, busyLabels:[I
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 312
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    return-void

    .line 308
    nop

    :array_20
    .array-data 0x4
        0x59t 0x0t 0x9t 0x7ft
        0x5at 0x0t 0x9t 0x7ft
        0x5bt 0x0t 0x9t 0x7ft
        0x5ct 0x0t 0x9t 0x7ft
        0x5dt 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private indicateError()V
    .registers 5

    .prologue
    .line 317
    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_20

    .line 320
    .local v0, errorLabels:[I
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    return-void

    .line 317
    nop

    :array_20
    .array-data 0x4
        0x5et 0x0t 0x9t 0x7ft
        0x5ft 0x0t 0x9t 0x7ft
        0x60t 0x0t 0x9t 0x7ft
        0x61t 0x0t 0x9t 0x7ft
        0x62t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private indicatePermanentLock()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    const v0, 0x7f06008e

    invoke-virtual {p0, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 405
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    return-void
.end method

.method private indicateSuccess()V
    .registers 5

    .prologue
    .line 326
    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_20

    .line 329
    .local v0, successLabels:[I
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 330
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 332
    return-void

    .line 326
    nop

    :array_20
    .array-data 0x4
        0x63t 0x0t 0x9t 0x7ft
        0x64t 0x0t 0x9t 0x7ft
        0x65t 0x0t 0x9t 0x7ft
        0x66t 0x0t 0x9t 0x7ft
        0x67t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 386
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccNetworkDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-void
.end method

.method private resetHandset()V
    .registers 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 412
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 414
    const-string v1, "SIM Unlock Success"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method private setPersoPanelTitle()V
    .registers 5

    .prologue
    .line 348
    const/4 v1, 0x5

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    .line 352
    .local v0, panelTitles:[I
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 353
    return-void

    .line 348
    :array_12
    .array-data 0x4
        0x52t 0x0t 0x9t 0x7ft
        0x53t 0x0t 0x9t 0x7ft
        0x55t 0x0t 0x9t 0x7ft
        0x54t 0x0t 0x9t 0x7ft
        0x56t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method private showSIMLockStatus()V
    .registers 7

    .prologue
    const/16 v5, 0x34

    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v1, 0x7f06008b

    .line 423
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    sget v0, Lcom/android/internal/telephony/gsm/SimCard;->mAttemptsLeft:I

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    sget-byte v0, Lcom/android/internal/telephony/gsm/SimCard;->mFlag:B

    if-ne v0, v5, :cond_46

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCountText:Landroid/widget/TextView;

    .line 427
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCountText:Landroid/widget/TextView;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 430
    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 431
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 433
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 434
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    :goto_45
    return-void

    .line 436
    :cond_46
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    sget-byte v0, Lcom/android/internal/telephony/gsm/SimCard;->mFlag:B

    if-eq v0, v5, :cond_7f

    .line 438
    invoke-virtual {p0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCountText:Landroid/widget/TextView;

    .line 439
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCountText:Landroid/widget/TextView;

    const v1, 0x7f090069

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 442
    const v0, 0x7f06008c

    invoke-virtual {p0, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 443
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 445
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 446
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 449
    iput-boolean v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mCheckDepersonalFlag:Z

    goto :goto_45

    .line 454
    :cond_7f
    invoke-virtual {p0, v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCountText:Landroid/widget/TextView;

    .line 455
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    sget v0, Lcom/android/internal/telephony/gsm/SimCard;->mRetry_count_max:I

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    sget v1, Lcom/android/internal/telephony/gsm/SimCard;->mAttemptsLeft:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetry_count:I

    .line 456
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetryCountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f09006b

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mRetry_count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45
.end method

.method private storeSIMLockInfo(Lcom/android/internal/telephony/gsm/SIMLockInfo;)V
    .registers 3
    .parameter "lockinfo"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    iget-byte v0, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->flag:B

    sput-byte v0, Lcom/android/internal/telephony/gsm/SimCard;->mFlag:B

    .line 397
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    iget v0, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->attemptsLeft:I

    sput v0, Lcom/android/internal/telephony/gsm/SimCard;->mAttemptsLeft:I

    .line 398
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->app:Lcom/android/internal/telephony/gsm/SimCard;

    iget v0, p1, Lcom/android/internal/telephony/gsm/SIMLockInfo;->retry_count_max:I

    sput v0, Lcom/android/internal/telephony/gsm/SimCard;->mRetry_count_max:I

    .line 399
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 222
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const v3, 0x7f03001e

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    .line 227
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->showSIMLockStatus()V

    .line 231
    const v3, 0x7f06008c

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 232
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 233
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 237
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 238
    .local v1, span:Landroid/text/Spannable;
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v1, v3, v6, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 240
    const v3, 0x7f060089

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 241
    const v3, 0x7f06008a

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtypeText:Landroid/widget/TextView;

    .line 244
    iget-boolean v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mCheckDepersonalFlag:Z

    if-eqz v3, :cond_b0

    .line 246
    iput-boolean v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mCheckDepersonalFlag:Z

    .line 252
    :goto_59
    const v3, 0x7f06008d

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 253
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    const v3, 0x7f06008e

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 258
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 260
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :goto_93
    const v3, 0x7f06008f

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 269
    const v3, 0x7f060090

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 271
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 272
    return-void

    .line 249
    :cond_b0
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setPersoPanelTitle()V

    goto :goto_59

    .line 264
    :cond_b4
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_93
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 281
    const/4 v0, 0x1

    .line 284
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 275
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 276
    return-void
.end method

.method sendDepersoOemRilRequestRaw(Ljava/lang/String;)V
    .registers 10
    .parameter "pin"

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, 0x4

    .line 358
    .local v3, requestSize:I
    iget v5, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHeaderSize:I

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [B

    .line 359
    .local v2, request:[B
    const/4 v4, 0x0

    .line 360
    .local v4, termChar:B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 361
    .local v1, reqBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 365
    :try_start_19
    const-string v5, "QUALCOMM"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 368
    iget v5, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->OEMHOOK_ME_DEPERSONALIZATION:I

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 371
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 373
    iget v5, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPersoSubtype:I

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 375
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_39} :catch_47

    .line 381
    :goto_39
    iget-object v5, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x65

    invoke-static {v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 383
    return-void

    .line 376
    :catch_47
    move-exception v5

    move-object v0, v5

    .line 377
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping Depersonalization because of exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    goto :goto_39
.end method
