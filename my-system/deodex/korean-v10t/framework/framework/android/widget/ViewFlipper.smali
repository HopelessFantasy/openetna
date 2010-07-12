.class public Landroid/widget/ViewFlipper;
.super Landroid/widget/ViewAnimator;
.source "ViewFlipper.java"


# instance fields
.field private final FLIP_MSG:I

.field private mFlipInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private mKeepFlipping:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    .line 91
    new-instance v0, Landroid/widget/ViewFlipper$1;

    invoke-direct {v0, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v0, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0xbb8

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v3, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 36
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    .line 89
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/ViewFlipper;->FLIP_MSG:I

    .line 91
    new-instance v1, Landroid/widget/ViewFlipper$1;

    invoke-direct {v1, p0}, Landroid/widget/ViewFlipper$1;-><init>(Landroid/widget/ViewFlipper;)V

    iput-object v1, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    .line 45
    sget-object v1, Lcom/android/internal/R$styleable;->ViewFlipper:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ViewFlipper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/ViewFlipper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    return v0
.end method


# virtual methods
.method public isFlipping()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    return v0
.end method

.method public setFlipInterval(I)V
    .registers 2
    .parameter "milliseconds"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 60
    iput p1, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    .line 61
    return-void
.end method

.method public startFlipping()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-boolean v1, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    if-nez v1, :cond_1a

    .line 68
    iput-boolean v2, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    .line 69
    iget v1, p0, Landroid/widget/ViewFlipper;->mWhichChild:I

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->showOnly(I)V

    .line 70
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 71
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/ViewFlipper;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/widget/ViewFlipper;->mFlipInterval:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 73
    .end local v0           #msg:Landroid/os/Message;
    :cond_1a
    return-void
.end method

.method public stopFlipping()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ViewFlipper;->mKeepFlipping:Z

    .line 80
    return-void
.end method
