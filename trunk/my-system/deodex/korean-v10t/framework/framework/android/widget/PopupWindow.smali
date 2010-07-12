.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 117
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 218
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 86
    iput-boolean v6, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 87
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 88
    iput-boolean v6, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 102
    new-array v6, v9, [I

    iput-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 103
    new-array v6, v9, [I

    iput-object v6, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 104
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 113
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 115
    iput v8, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 122
    new-instance v6, Landroid/widget/PopupWindow$1;

    invoke-direct {v6, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v6, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 161
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 162
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 164
    sget-object v6, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v6, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 168
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v6, v6, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v6, :cond_6d

    .line 180
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 183
    .local v2, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v6, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 187
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v4

    .line 188
    .local v4, count:I
    const/4 v3, -0x1

    .line 189
    .local v3, belowAnchorStateIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_58
    if-ge v5, v4, :cond_5d

    .line 190
    if-eq v5, v1, :cond_71

    .line 191
    move v3, v5

    .line 198
    :cond_5d
    if-eq v1, v8, :cond_74

    if-eq v3, v8, :cond_74

    .line 199
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    .end local v1           #aboveAnchorStateIndex:I
    .end local v2           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v3           #belowAnchorStateIndex:I
    .end local v4           #count:I
    .end local v5           #i:I
    :cond_6d
    :goto_6d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    return-void

    .line 189
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v2       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v3       #belowAnchorStateIndex:I
    .restart local v4       #count:I
    .restart local v5       #i:I
    :cond_71
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 202
    :cond_74
    iput-object v10, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 203
    iput-object v10, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6d
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 5
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 8
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 86
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 87
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 88
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 102
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 103
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 113
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 122
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 276
    if-eqz p1, :cond_3d

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 278
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 280
    :cond_3d
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 281
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 282
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 283
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 284
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/PopupWindow;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()[I
    .registers 1

    .prologue
    .line 50
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .registers 3

    .prologue
    .line 903
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 904
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_15

    .line 905
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_11

    const v0, 0x1030069

    .line 911
    :goto_10
    return v0

    .line 905
    :cond_11
    const v0, 0x1030068

    goto :goto_10

    .line 909
    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    .line 911
    :cond_17
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_10
.end method

.method private computeFlags(I)I
    .registers 5
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 872
    const v0, -0x68219

    and-int/2addr p1, v0

    .line 879
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_e

    .line 880
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 882
    :cond_e
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_2e

    .line 883
    or-int/lit8 p1, p1, 0x8

    .line 884
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 885
    or-int/2addr p1, v2

    .line 890
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_20

    .line 891
    or-int/lit8 p1, p1, 0x10

    .line 893
    :cond_20
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_27

    .line 894
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 896
    :cond_27
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_2d

    .line 897
    or-int/lit16 p1, p1, 0x200

    .line 899
    :cond_2d
    return p1

    .line 887
    :cond_2e
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 888
    or-int/2addr p1, v2

    goto :goto_1a
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .parameter "token"

    .prologue
    .line 849
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 854
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 855
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 856
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 857
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_52

    .line 858
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 862
    :goto_21
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 863
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 864
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 865
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 868
    return-object v0

    .line 860
    :cond_52
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_21
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .registers 16
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 931
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 932
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v6, v6, v10

    add-int/2addr v6, p3

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 933
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v6, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p4

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 935
    const/4 v1, 0x0

    .line 937
    .local v1, onTop:Z
    const/16 v6, 0x33

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 939
    iget-object v6, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 940
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 941
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 944
    .local v3, root:Landroid/view/View;
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v7, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v7, :cond_45

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v7, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    if-lez v6, :cond_a7

    .line 948
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 949
    .local v4, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    .line 950
    .local v5, scrollY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v7, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 952
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v2, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 956
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 957
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v6, v6, v10

    add-int/2addr v6, p3

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 958
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v6, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p4

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 961
    iget-object v6, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 963
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, p4

    iget-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    aget v7, v7, v9

    sub-int/2addr v7, p4

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_af

    move v1, v9

    .line 965
    :goto_95
    if-eqz v1, :cond_b1

    .line 966
    const/16 v6, 0x53

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 967
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    add-int/2addr v6, p4

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 973
    .end local v2           #r:Landroid/graphics/Rect;
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_a7
    :goto_a7
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v7, 0x1000

    or-int/2addr v6, v7

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 975
    return v1

    .restart local v2       #r:Landroid/graphics/Rect;
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_af
    move v1, v10

    .line 963
    goto :goto_95

    .line 969
    :cond_b1
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    aget v6, v6, v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p4

    iput v6, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_a7
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 836
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8
    .parameter "p"

    .prologue
    .line 797
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_c

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_14

    .line 798
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 802
    :cond_14
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_49

    .line 803
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 804
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 805
    .local v0, height:I
    if-eqz v1, :cond_27

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_27

    .line 807
    const/4 v0, -0x2

    .line 812
    :cond_27
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 813
    .local v3, popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 816
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 823
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_40
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 824
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 825
    return-void

    .line 821
    :cond_49
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_40
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .registers 6
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1308
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1310
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1312
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_15

    .line 1313
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1316
    :cond_15
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1317
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1318
    return-void
.end method

.method private unregisterForScrollChanged()V
    .registers 5

    .prologue
    .line 1295
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1296
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1297
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_b

    .line 1298
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1300
    .restart local v0       #anchor:Landroid/view/View;
    :cond_b
    if-eqz v0, :cond_16

    .line 1301
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1302
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1304
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_16
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1305
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .registers 12
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, -0x1

    .line 1250
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_c

    .line 1282
    :cond_b
    :goto_b
    return-void

    .line 1254
    :cond_c
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1255
    .local v0, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_20

    if-eqz p2, :cond_23

    iget v2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    if-ne v2, p3, :cond_20

    iget v2, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    if-eq v2, p4, :cond_23

    .line 1257
    :cond_20
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1260
    :cond_23
    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1262
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_35

    .line 1263
    if-ne p6, v3, :cond_45

    .line 1264
    iget p6, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1268
    :goto_31
    if-ne p7, v3, :cond_48

    .line 1269
    iget p7, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1275
    :cond_35
    :goto_35
    if-eqz p2, :cond_4b

    .line 1276
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1281
    :goto_3d
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v2, v3, p6, p7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_b

    .line 1266
    :cond_45
    iput p6, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_31

    .line 1271
    :cond_48
    iput p7, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_35

    .line 1278
    :cond_4b
    iget v2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    goto :goto_3d
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 1056
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 1057
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1059
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1061
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_29

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_29

    .line 1062
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1064
    :cond_29
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1067
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_38

    .line 1068
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1071
    :cond_38
    return-void
.end method

.method public getAnimationStyle()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 602
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .prologue
    .line 431
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3
    .parameter "anchor"

    .prologue
    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 13
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    const/4 v8, 0x1

    .line 1025
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1026
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1028
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1029
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1031
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1032
    .local v1, bottomEdge:I
    if-eqz p3, :cond_20

    .line 1033
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1035
    :cond_20
    aget v6, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v1, v6

    sub-int v3, v6, p2

    .line 1036
    .local v3, distanceToBottom:I
    aget v6, v0, v8

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    add-int v4, v6, p2

    .line 1039
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1040
    .local v5, returnedHeight:I
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4b

    .line 1041
    iget-object v6, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1042
    iget-object v6, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 1045
    :cond_4b
    return v5
.end method

.method public getSoftInputMode()I
    .registers 2

    .prologue
    .line 472
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 628
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public isAboveAnchor()Z
    .registers 2

    .prologue
    .line 785
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 652
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isTouchable()Z
    .registers 2

    .prologue
    .line 483
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method public setAnimationStyle(I)V
    .registers 2
    .parameter "animationStyle"

    .prologue
    .line 344
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 345
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "background"

    .prologue
    .line 302
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 303
    return-void
.end method

.method public setClippingEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 564
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 565
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .parameter "contentView"

    .prologue
    .line 371
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 384
    :cond_6
    :goto_6
    return-void

    .line 375
    :cond_7
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 377
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 378
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 381
    :cond_15
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    .line 382
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_6
.end method

.method public setFocusable(Z)V
    .registers 2
    .parameter "focusable"

    .prologue
    .line 422
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 423
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 617
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 618
    return-void
.end method

.method public setIgnoreCheekPress()V
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 327
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 448
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 449
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .parameter "onDismissListener"

    .prologue
    .line 1079
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1080
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .registers 2
    .parameter "touchable"

    .prologue
    .line 535
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 536
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 462
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 463
    return-void
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 391
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 392
    return-void
.end method

.method public setTouchable(Z)V
    .registers 2
    .parameter "touchable"

    .prologue
    .line 502
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 503
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 643
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 644
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .registers 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 590
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 591
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 592
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 3
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 704
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 705
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v3, 0x1

    .line 722
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_c

    .line 771
    :cond_b
    :goto_b
    return-void

    .line 733
    :cond_c
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 734
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 735
    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_2c

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_2c

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_2c

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-nez v2, :cond_2c

    .line 737
    const-string v2, "PopupWindow"

    const-string v3, "Warning: Parent window is already destroyed. So do nothing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 741
    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 743
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 744
    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 746
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 747
    .local v1, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 748
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 750
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_57

    .line 754
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7d

    .line 755
    iget-boolean v2, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v2, :cond_75

    .line 756
    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 765
    :cond_57
    :goto_57
    iget v2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v2, :cond_61

    iget v2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v2, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 766
    :cond_61
    iget v2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v2, :cond_6b

    iget v2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 768
    :cond_6b
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 770
    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_b

    .line 758
    :cond_75
    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_57

    .line 761
    :cond_7d
    iget-object v2, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_57
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 7
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_b

    .line 690
    :cond_a
    :goto_a
    return-void

    .line 674
    :cond_b
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 676
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 677
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 680
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 682
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 683
    if-nez p2, :cond_29

    .line 684
    const/16 p2, 0x33

    .line 686
    :cond_29
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 687
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 688
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 689
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_a
.end method

.method public update()V
    .registers 7

    .prologue
    .line 1090
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_b

    .line 1114
    :cond_a
    :goto_a
    return-void

    .line 1094
    :cond_b
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1097
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1099
    .local v3, update:Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1100
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_1f

    .line 1101
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1102
    const/4 v3, 0x1

    .line 1105
    :cond_1f
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1106
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_2c

    .line 1107
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1108
    const/4 v3, 0x1

    .line 1111
    :cond_2c
    if-eqz v3, :cond_a

    .line 1112
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method public update(II)V
    .registers 10
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1127
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1128
    return-void
.end method

.method public update(IIII)V
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1142
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1143
    return-void
.end method

.method public update(IIIIZ)V
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1159
    if-eq p3, v7, :cond_8

    .line 1160
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1161
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1164
    :cond_8
    if-eq p4, v7, :cond_f

    .line 1165
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1166
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1169
    :cond_f
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_1a

    .line 1214
    :cond_19
    :goto_19
    return-void

    .line 1173
    :cond_1a
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1175
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1177
    .local v5, update:Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_77

    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    move v1, v6

    .line 1178
    .local v1, finalWidth:I
    :goto_2a
    if-eq p3, v7, :cond_35

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_35

    .line 1179
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1180
    const/4 v5, 0x1

    .line 1183
    :cond_35
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_7b

    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    move v0, v6

    .line 1184
    .local v0, finalHeight:I
    :goto_3c
    if-eq p4, v7, :cond_47

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_47

    .line 1185
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1186
    const/4 v5, 0x1

    .line 1189
    :cond_47
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_4e

    .line 1190
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1191
    const/4 v5, 0x1

    .line 1194
    :cond_4e
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_55

    .line 1195
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1196
    const/4 v5, 0x1

    .line 1199
    :cond_55
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1200
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_60

    .line 1201
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1202
    const/4 v5, 0x1

    .line 1205
    :cond_60
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1206
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_6d

    .line 1207
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1208
    const/4 v5, 0x1

    .line 1211
    :cond_6d
    if-eqz v5, :cond_19

    .line 1212
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    .line 1177
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_77
    iget v6, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    move v1, v6

    goto :goto_2a

    .line 1183
    .restart local v1       #finalWidth:I
    :cond_7b
    iget v6, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    move v0, v6

    goto :goto_3c
.end method

.method public update(Landroid/view/View;II)V
    .registers 12
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1226
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1227
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 14
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1244
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1245
    return-void
.end method
