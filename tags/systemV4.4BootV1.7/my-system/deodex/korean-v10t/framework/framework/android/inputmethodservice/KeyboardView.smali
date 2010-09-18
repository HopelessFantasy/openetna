.class public Landroid/inputmethodservice/KeyboardView;
.super Landroid/view/View;
.source "KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY_AFTER_PREVIEW:I = 0x3c

.field private static final DELAY_BEFORE_PREVIEW:I = 0x28

.field private static final KEY_DELETE:[I = null

.field private static final LONGPRESS_TIMEOUT:I = 0x320

.field private static final LONG_PRESSABLE_STATE_SET:[I = null

.field private static MAX_NEARBY_KEYS:I = 0x0

.field private static final MSG_LONGPRESS:I = 0x4

.field private static final MSG_REMOVE_PREVIEW:I = 0x2

.field private static final MSG_REPEAT:I = 0x3

.field private static final MSG_SHOW_PREVIEW:I = 0x1

.field private static final MULTITAP_INTERVAL:I = 0x320

.field private static final NOT_A_KEY:I = -0x1

.field private static final REPEAT_INTERVAL:I = 0x32

.field private static final REPEAT_START_DELAY:I = 0x190


# instance fields
.field private mAbortKey:Z

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field private mCurrentKey:I

.field private mCurrentKeyIndex:I

.field private mCurrentKeyTime:J

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDistances:[I

.field private mDownTime:J

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyIndices:[I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyboard:Landroid/inputmethodservice/Keyboard;

.field private mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private mKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLastCodeX:I

.field private mLastCodeY:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field private mMiniKeyboardOnScreen:Z

.field private mOffsetInWindow:[I

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private mPopupX:I

.field private mPopupY:I

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mProximityCorrectOn:Z

.field private mProximityThreshold:I

.field private mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private mStartX:I

.field private mStartY:I

.field private mTapCount:I

.field private mVerticalCorrection:I

.field private mWindowOffset:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-array v0, v3, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    .line 129
    new-array v0, v3, [I

    const v1, 0x101023c

    aput v1, v0, v2

    sput-object v0, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    .line 213
    const/16 v0, 0xc

    sput v0, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 257
    const v0, 0x101029a

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 132
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 172
    iput-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    .line 173
    iput-boolean v10, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 174
    iput-boolean v10, p0, Landroid/inputmethodservice/KeyboardView;->mShowTouchPoints:Z

    .line 193
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 196
    const/16 v7, 0xc

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    .line 200
    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 204
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 214
    sget v7, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 227
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 233
    new-instance v7, Landroid/inputmethodservice/KeyboardView$1;

    invoke-direct {v7, p0}, Landroid/inputmethodservice/KeyboardView$1;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    .line 263
    sget-object v7, Landroid/R$styleable;->KeyboardView:[I

    invoke-virtual {p1, p2, v7, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    .local v0, a:Landroid/content/res/TypedArray;
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 271
    .local v3, inflate:Landroid/view/LayoutInflater;
    const/4 v6, 0x0

    .line 272
    .local v6, previewLayout:I
    const/4 v4, 0x0

    .line 274
    .local v4, keyTextSize:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 276
    .local v5, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_50
    if-ge v2, v5, :cond_b0

    .line 277
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 279
    .local v1, attr:I
    packed-switch v1, :pswitch_data_132

    .line 276
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 281
    :pswitch_5c
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_59

    .line 284
    :pswitch_63
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    goto :goto_59

    .line 287
    :pswitch_6a
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 288
    goto :goto_59

    .line 290
    :pswitch_6f
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    goto :goto_59

    .line 293
    :pswitch_76
    const/16 v7, 0x50

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    goto :goto_59

    .line 296
    :pswitch_7f
    const/16 v7, 0x12

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    goto :goto_59

    .line 299
    :pswitch_88
    const/high16 v7, -0x100

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    goto :goto_59

    .line 302
    :pswitch_91
    const/16 v7, 0xe

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    goto :goto_59

    .line 305
    :pswitch_9a
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    goto :goto_59

    .line 308
    :pswitch_a1
    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    goto :goto_59

    .line 311
    :pswitch_a8
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    goto :goto_59

    .line 316
    .end local v1           #attr:I
    :cond_b0
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v7, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 318
    const/4 v7, 0x2

    const/high16 v8, 0x3f00

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    .line 320
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 321
    if-eqz v6, :cond_12f

    .line 322
    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    .line 323
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    .line 324
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 325
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :goto_e7
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 332
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 333
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iput-object p0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 339
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 340
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 341
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 344
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v9, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 345
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 346
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 348
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 349
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V

    .line 350
    return-void

    .line 327
    :cond_12f
    iput-boolean v9, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    goto :goto_e7

    .line 279
    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_a8
        :pswitch_5c
        :pswitch_7f
        :pswitch_91
        :pswitch_88
        :pswitch_6a
        :pswitch_6f
        :pswitch_76
        :pswitch_63
        :pswitch_9a
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/inputmethodservice/KeyboardView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/inputmethodservice/KeyboardView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/inputmethodservice/KeyboardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/inputmethodservice/KeyboardView;Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/inputmethodservice/KeyboardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    return-void
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "label"

    .prologue
    .line 515
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 517
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 519
    :cond_24
    return-object p1
.end method

.method private checkMultiTap(JI)V
    .registers 10
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const-wide/16 v4, 0x320

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 1208
    if-ne p3, v3, :cond_7

    .line 1224
    :cond_6
    :goto_6
    return-void

    .line 1209
    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p3

    .line 1210
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_2b

    .line 1211
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1212
    iget-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_28

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_28

    .line 1214
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_6

    .line 1217
    :cond_28
    iput v3, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_6

    .line 1221
    :cond_2b
    iget-wide v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gtz v1, :cond_36

    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_6

    .line 1222
    :cond_36
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    goto :goto_6
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .registers 9
    .parameter "keyboard"

    .prologue
    .line 543
    if-nez p1, :cond_3

    .line 555
    :cond_2
    :goto_2
    return-void

    .line 544
    :cond_3
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 545
    .local v3, keys:[Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v3, :cond_2

    .line 546
    array-length v4, v3

    .line 547
    .local v4, length:I
    const/4 v0, 0x0

    .line 548
    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v4, :cond_1d

    .line 549
    aget-object v2, v3, v1

    .line 550
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 552
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1d
    if-ltz v0, :cond_2

    if-eqz v4, :cond_2

    .line 553
    int-to-float v5, v0

    const v6, 0x3fb33333

    mul-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    .line 554
    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    goto :goto_2
.end method

.method private detectAndSendKey(IIJ)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 734
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 735
    .local v2, index:I
    if-eq v2, v6, :cond_23

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v4, v4

    if-ge v2, v4, :cond_23

    .line 736
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v3, v4, v2

    .line 737
    .local v3, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_24

    .line 738
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    iget-object v5, v3, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v6}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 758
    :goto_1f
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 759
    iput-wide p3, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 761
    .end local v3           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_23
    return-void

    .line 741
    .restart local v3       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_24
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v4, v5

    .line 743
    .local v0, code:I
    sget v4, Landroid/inputmethodservice/KeyboardView;->MAX_NEARBY_KEYS:I

    new-array v1, v4, [I

    .line 744
    .local v1, codes:[I
    invoke-static {v1, v6}, Ljava/util/Arrays;->fill([II)V

    .line 745
    invoke-direct {p0, p1, p2, v1}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    .line 747
    iget-boolean v4, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v4, :cond_48

    .line 748
    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-eq v4, v6, :cond_53

    .line 749
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v5, -0x5

    sget-object v6, Landroid/inputmethodservice/KeyboardView;->KEY_DELETE:[I

    invoke-interface {v4, v5, v6}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 753
    :goto_42
    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    aget v0, v4, v5

    .line 755
    :cond_48
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v0, v1}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 756
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1f

    .line 751
    :cond_53
    iput v5, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_42
.end method

.method private dismissPopupKeyboard()V
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1186
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1188
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 1190
    :cond_13
    return-void
.end method

.method private getKeyIndices(II[I)I
    .registers 27
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object v14, v0

    .line 683
    .local v14, keys:[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v18

    .line 684
    .local v18, shifted:Z
    const/16 v17, -0x1

    .line 685
    .local v17, primaryIndex:I
    const/4 v6, -0x1

    .line 686
    .local v6, closestKey:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v19, v0

    add-int/lit8 v7, v19, 0x1

    .line 687
    .local v7, closestKeyDist:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v19, v0

    const v20, 0x7fffffff

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v16

    .line 689
    .local v16, nearestKeyIndices:[I
    move-object/from16 v0, v16

    array-length v0, v0

    move v13, v0

    .line 690
    .local v13, keyCount:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3b
    if-ge v9, v13, :cond_10f

    .line 691
    aget v19, v16, v9

    aget-object v12, v14, v19

    .line 692
    .local v12, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v8, 0x0

    .line 693
    .local v8, dist:I
    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v10

    .line 694
    .local v10, isInside:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_67

    move-object v0, v12

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mProximityThreshold:I

    move/from16 v19, v0

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_69

    :cond_67
    if-eqz v10, :cond_109

    :cond_69
    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_109

    .line 699
    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move v15, v0

    .line 700
    .local v15, nCodes:I
    if-ge v8, v7, :cond_88

    .line 701
    move v7, v8

    .line 702
    aget v6, v16, v9

    .line 705
    :cond_88
    if-nez p3, :cond_8d

    .line 690
    .end local v15           #nCodes:I
    :cond_8a
    :goto_8a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 707
    .restart local v15       #nCodes:I
    :cond_8d
    const/4 v11, 0x0

    .local v11, j:I
    :goto_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-ge v0, v1, :cond_109

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v19, v0

    aget v19, v19, v11

    move/from16 v0, v19

    move v1, v8

    if-le v0, v1, :cond_106

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v20, v0

    add-int v21, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    sub-int v22, v22, v11

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move v1, v11

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 712
    add-int v19, v11, v15

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v11

    sub-int v20, v20, v15

    move-object/from16 v0, p3

    move v1, v11

    move-object/from16 v2, p3

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    const/4 v5, 0x0

    .local v5, c:I
    :goto_ec
    if-ge v5, v15, :cond_109

    .line 715
    add-int v19, v11, v5

    move-object v0, v12

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    aget v20, v20, v5

    aput v20, p3, v19

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDistances:[I

    move-object/from16 v19, v0

    add-int v20, v11, v5

    aput v8, v19, v20

    .line 714
    add-int/lit8 v5, v5, 0x1

    goto :goto_ec

    .line 707
    .end local v5           #c:I
    :cond_106
    add-int/lit8 v11, v11, 0x1

    goto :goto_8e

    .line 723
    .end local v11           #j:I
    .end local v15           #nCodes:I
    :cond_109
    if-eqz v10, :cond_8a

    .line 724
    aget v17, v16, v9

    goto/16 :goto_8a

    .line 727
    .end local v8           #dist:I
    .end local v10           #isInside:Z
    .end local v12           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_10f
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_119

    .line 728
    move/from16 v17, v6

    .line 730
    :cond_119
    return v17
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .registers 6
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 767
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    if-eqz v0, :cond_23

    .line 769
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 770
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    if-gez v2, :cond_20

    move v2, v3

    :goto_13
    aget v1, v1, v2

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 773
    :goto_1f
    return-object v0

    .line 770
    :cond_20
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    goto :goto_13

    .line 773
    :cond_23
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1f
.end method

.method private initGestureDetector()V
    .registers 4

    .prologue
    .line 353
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/inputmethodservice/KeyboardView$2;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/KeyboardView$2;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 378
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 379
    return-void
.end method

.method private onBufferDraw()V
    .registers 28

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    if-nez v6, :cond_2c

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 576
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 579
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    .line 580
    .local v5, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v6, v0

    if-nez v6, :cond_43

    .line 679
    :goto_42
    return-void

    .line 584
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v10, v0

    .line 585
    .local v10, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    .line 586
    .local v22, keyBackground:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    move-object v12, v0

    .line 587
    .local v12, clipRegion:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 588
    .local v26, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    move/from16 v19, v0

    .line 589
    .local v19, kbdPaddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    move/from16 v20, v0

    .line 590
    .local v20, kbdPaddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v24, v0

    .line 591
    .local v24, keys:[Landroid/inputmethodservice/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v18, v0

    .line 593
    .local v18, invalidKey:Landroid/inputmethodservice/Keyboard$Key;
    const/16 v6, 0xff

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextColor:I

    move v6, v0

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    const/4 v13, 0x0

    .line 596
    .local v13, drawSingleKey:Z
    if-eqz v18, :cond_c8

    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_c8

    .line 598
    move-object/from16 v0, v18

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    add-int v6, v6, v19

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v12, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_c8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v6, v0

    add-int v6, v6, v20

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iget v7, v12, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_c8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v19

    add-int/lit8 v6, v6, 0x1

    iget v7, v12, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_c8

    move-object/from16 v0, v18

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v7, v0

    add-int/2addr v6, v7

    add-int v6, v6, v20

    add-int/lit8 v6, v6, 0x1

    iget v7, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_c8

    .line 602
    const/4 v13, 0x1

    .line 605
    :cond_c8
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 606
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v23, v0

    .line 607
    .local v23, keyCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_d5
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_283

    .line 608
    aget-object v21, v24, v17

    .line 609
    .local v21, key:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v13, :cond_e8

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e8

    .line 607
    :goto_e5
    add-int/lit8 v17, v17, 0x1

    goto :goto_d5

    .line 612
    :cond_e8
    invoke-virtual/range {v21 .. v21}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v14

    .line 613
    .local v14, drawableState:[I
    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 616
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    if-nez v6, :cond_1d8

    const/4 v6, 0x0

    move-object/from16 v25, v6

    .line 618
    .local v25, label:Ljava/lang/String;
    :goto_fc
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 619
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    iget v7, v11, Landroid/graphics/Rect;->right:I

    if-ne v6, v7, :cond_112

    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    if-eq v6, v7, :cond_127

    .line 621
    :cond_112
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v8, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v9, v0

    move-object/from16 v0, v22

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 623
    :cond_127
    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    add-int v6, v6, v19

    int-to-float v6, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v7, v0

    add-int v7, v7, v20

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 626
    if-eqz v25, :cond_1fc

    .line 628
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1ec

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1ec

    .line 629
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mLabelTextSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 630
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 636
    :goto_160
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mShadowColor:I

    move v9, v0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 638
    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v7, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v8, v0

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v10}, Landroid/graphics/Paint;->getTextSize()F

    move-result v8

    invoke-virtual {v10}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    int-to-float v8, v8

    add-float/2addr v7, v8

    move-object v0, v5

    move-object/from16 v1, v25

    move v2, v6

    move v3, v7

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 657
    .end local v11           #bounds:Landroid/graphics/Rect;
    :cond_1c1
    :goto_1c1
    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move v6, v0

    neg-int v6, v6

    sub-int v6, v6, v19

    int-to-float v6, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move v7, v0

    neg-int v7, v7

    sub-int v7, v7, v20

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_e5

    .line 616
    .end local v25           #label:Ljava/lang/String;
    :cond_1d8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/inputmethodservice/KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v6

    goto/16 :goto_fc

    .line 632
    .restart local v11       #bounds:Landroid/graphics/Rect;
    .restart local v25       #label:Ljava/lang/String;
    :cond_1ec
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 633
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_160

    .line 646
    :cond_1fc
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_1c1

    .line 647
    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move v6, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v7, v0

    add-int v15, v6, v7

    .line 649
    .local v15, drawableX:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move v6, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    add-int v16, v6, v7

    .line 651
    .local v16, drawableY:I
    int-to-float v6, v15

    move/from16 v0, v16

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 652
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v11, v0

    .end local v11           #bounds:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v6, v7, v8, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 654
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 655
    neg-int v6, v15

    int-to-float v6, v6

    move/from16 v0, v16

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1c1

    .line 659
    .end local v14           #drawableState:[I
    .end local v15           #drawableX:I
    .end local v16           #drawableY:I
    .end local v21           #key:Landroid/inputmethodservice/Keyboard$Key;
    .end local v25           #label:Ljava/lang/String;
    :cond_283
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 661
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    move v6, v0

    if-eqz v6, :cond_2ad

    .line 662
    move-object/from16 v0, p0

    iget v0, v0, Landroid/inputmethodservice/KeyboardView;->mBackgroundDimAmount:F

    move v6, v0

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 663
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 677
    :cond_2ad
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_42
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "me"

    .prologue
    const/4 v4, 0x0

    .line 919
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    if-nez v2, :cond_7

    move v2, v4

    .line 932
    :goto_6
    return v2

    .line 922
    :cond_7
    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v2, :cond_12

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v3, v3

    if-lt v2, v3, :cond_14

    :cond_12
    move v2, v4

    .line 923
    goto :goto_6

    .line 926
    :cond_14
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v0, v2, v3

    .line 927
    .local v0, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    .line 928
    .local v1, result:Z
    if-eqz v1, :cond_27

    .line 929
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 930
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    :cond_27
    move v2, v1

    .line 932
    goto :goto_6
.end method

.method private repeatKey()Z
    .registers 6

    .prologue
    .line 1143
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    aget-object v0, v1, v2

    .line 1144
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v3, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIJ)V

    .line 1145
    const/4 v1, 0x1

    return v1
.end method

.method private resetMultiTap()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1201
    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastSentIndex:I

    .line 1202
    iput v2, p0, Landroid/inputmethodservice/KeyboardView;->mTapCount:I

    .line 1203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/inputmethodservice/KeyboardView;->mLastTapTime:J

    .line 1204
    iput-boolean v2, p0, Landroid/inputmethodservice/KeyboardView;->mInMultiTap:Z

    .line 1205
    return-void
.end method

.method private showKey(I)V
    .registers 14
    .parameter "keyIndex"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 824
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 825
    .local v5, previewPopup:Landroid/widget/PopupWindow;
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 826
    .local v1, keys:[Landroid/inputmethodservice/Keyboard$Key;
    aget-object v0, v1, p1

    .line 827
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c1

    .line 828
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_bd

    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    :goto_16
    invoke-virtual {v6, v8, v8, v8, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 830
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    :goto_1e
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 844
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 846
    .local v4, popupWidth:I
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewHeight:I

    .line 847
    .local v3, popupHeight:I
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 848
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_53

    .line 849
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 850
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 852
    :cond_53
    iget-boolean v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewCentered:Z

    if-nez v6, :cond_fe

    .line 853
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 854
    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v6, v3

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    .line 860
    :goto_6d
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    if-nez v6, :cond_91

    .line 862
    new-array v6, v9, [I

    iput-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    .line 863
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    invoke-virtual {p0, v6}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 864
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    aget v7, v6, v10

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v7, v8

    aput v7, v6, v10

    .line 865
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    aget v7, v6, v11

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v7, v8

    aput v7, v6, v11

    .line 868
    :cond_91
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_116

    sget-object v7, Landroid/inputmethodservice/KeyboardView;->LONG_PRESSABLE_STATE_SET:[I

    :goto_9d
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 870
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_119

    .line 871
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    aget v7, v7, v10

    add-int/2addr v6, v7

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    aget v8, v8, v11

    add-int/2addr v7, v8

    invoke-virtual {v5, v6, v7, v4, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 881
    :goto_b7
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 882
    return-void

    .line 828
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #popupHeight:I
    .end local v4           #popupWidth:I
    :cond_bd
    iget-object v7, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_16

    .line 832
    :cond_c1
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 833
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v11, :cond_ed

    iget-object v6, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v6, v6

    if-ge v6, v9, :cond_ed

    .line 835
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mKeyTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 836
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1e

    .line 838
    :cond_ed
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewTextSizeLarge:I

    int-to-float v7, v7

    invoke-virtual {v6, v10, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 839
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1e

    .line 857
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v3       #popupHeight:I
    .restart local v4       #popupWidth:I
    :cond_fe
    const/16 v6, 0xa0

    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    .line 858
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    neg-int v6, v6

    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_6d

    .line 868
    :cond_116
    sget-object v7, Landroid/inputmethodservice/KeyboardView;->EMPTY_STATE_SET:[I

    goto :goto_9d

    .line 875
    :cond_119
    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 876
    invoke-virtual {v5, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 877
    iget-object v6, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewX:I

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    aget v8, v8, v10

    add-int/2addr v7, v8

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mPopupPreviewY:I

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mOffsetInWindow:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_b7
.end method

.method private showPreview(I)V
    .registers 12
    .parameter "keyIndex"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 778
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 779
    .local v1, oldKeyIndex:I
    iget-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 781
    .local v2, previewPopup:Landroid/widget/PopupWindow;
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    .line 783
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 784
    .local v0, keys:[Landroid/inputmethodservice/Keyboard$Key;
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_36

    .line 785
    if-eq v1, v7, :cond_21

    array-length v3, v0

    if-le v3, v1, :cond_21

    .line 786
    aget-object v3, v0, v1

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-ne v4, v7, :cond_6d

    move v4, v8

    :goto_1b
    invoke-virtual {v3, v4}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 787
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 789
    :cond_21
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v3, v7, :cond_36

    array-length v3, v0

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-le v3, v4, :cond_36

    .line 790
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 791
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v3}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 795
    :cond_36
    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v3, :cond_6c

    iget-boolean v3, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    if-eqz v3, :cond_6c

    .line 796
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 798
    if-ne p1, v7, :cond_59

    .line 799
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3c

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 804
    :cond_59
    if-eq p1, v7, :cond_6c

    .line 805
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_6f

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6f

    .line 807
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->showKey(I)V

    .line 821
    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    move v4, v9

    .line 786
    goto :goto_1b

    .line 809
    :cond_6f
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x28

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6c
.end method


# virtual methods
.method public closing()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1165
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1166
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1168
    :cond_e
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1169
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1170
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1172
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1173
    iput-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1174
    iput-object v2, p0, Landroid/inputmethodservice/KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1175
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1176
    return-void
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method public handleBack()Z
    .registers 2

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1194
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 1195
    const/4 v0, 0x1

    .line 1197
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public invalidateAllKeys()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 891
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    .line 893
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    .line 894
    return-void
.end method

.method public invalidateKey(I)V
    .registers 9
    .parameter "keyIndex"

    .prologue
    .line 904
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    if-nez v1, :cond_5

    .line 915
    :cond_4
    :goto_4
    return-void

    .line 905
    :cond_5
    if-ltz p1, :cond_4

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v1

    if-ge p1, v1, :cond_4

    .line 908
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v0, v1, p1

    .line 909
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 910
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 912
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 913
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->invalidate(IIII)V

    goto :goto_4
.end method

.method public isPreviewEnabled()Z
    .registers 2

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .registers 2

    .prologue
    .line 503
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    return v0
.end method

.method public isShifted()Z
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_b

    .line 450
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 452
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 511
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->dismissPopupKeyboard()V

    .line 512
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1180
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1181
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->closing()V

    .line 1182
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 566
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 567
    iget-boolean v0, p0, Landroid/inputmethodservice/KeyboardView;->mDrawPending:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-nez v0, :cond_f

    .line 568
    :cond_c
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->onBufferDraw()V

    .line 570
    :cond_f
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 571
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .registers 16
    .parameter "popupKey"

    .prologue
    const v4, 0x1020026

    const/high16 v13, -0x8000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 943
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 945
    .local v2, popupKeyboardId:I
    if-eqz v2, :cond_135

    .line 946
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 947
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-nez v1, :cond_127

    .line 948
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 950
    .local v7, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupLayout:I

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 951
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    .line 953
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v3, 0x1020027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 955
    .local v6, closeButton:Landroid/view/View;
    if-eqz v6, :cond_46

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    :cond_46
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    new-instance v3, Landroid/inputmethodservice/KeyboardView$3;

    invoke-direct {v3, p0}, Landroid/inputmethodservice/KeyboardView$3;-><init>(Landroid/inputmethodservice/KeyboardView;)V

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    .line 980
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11c

    .line 981
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingRight()I

    move-result v10

    add-int/2addr v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 986
    .local v0, keyboard:Landroid/inputmethodservice/Keyboard;
    :goto_69
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 987
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v1, p0}, Landroid/inputmethodservice/KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 988
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v3

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v4

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 992
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    .end local v6           #closeButton:Landroid/view/View;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :goto_8f
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    if-nez v1, :cond_9d

    .line 998
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    .line 999
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/KeyboardView;->getLocationInWindow([I)V

    .line 1001
    :cond_9d
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1002
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1003
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    .line 1004
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    .line 1005
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupX:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    aget v3, v3, v11

    add-int v8, v1, v3

    .line 1006
    .local v8, x:I
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupY:I

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mWindowOffset:[I

    aget v3, v3, v12

    add-int v9, v1, v3

    .line 1007
    .local v9, y:I
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    if-gez v8, :cond_133

    move v3, v11

    :goto_e7
    invoke-virtual {v1, v3, v9}, Landroid/inputmethodservice/KeyboardView;->setPopupOffset(II)V

    .line 1008
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/inputmethodservice/KeyboardView;->setShifted(Z)Z

    .line 1009
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1010
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1011
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1012
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0, v11, v8, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1013
    iput-boolean v12, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 1015
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    move v1, v12

    .line 1018
    .end local v8           #x:I
    .end local v9           #y:I
    :goto_11b
    return v1

    .line 984
    .restart local v6       #closeButton:Landroid/view/View;
    .restart local v7       #inflater:Landroid/view/LayoutInflater;
    :cond_11c
    new-instance v0, Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0       #keyboard:Landroid/inputmethodservice/Keyboard;
    goto/16 :goto_69

    .line 994
    .end local v0           #keyboard:Landroid/inputmethodservice/Keyboard;
    .end local v6           #closeButton:Landroid/view/View;
    .end local v7           #inflater:Landroid/view/LayoutInflater;
    :cond_127
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/KeyboardView;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboard:Landroid/inputmethodservice/KeyboardView;

    goto/16 :goto_8f

    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_133
    move v3, v8

    .line 1007
    goto :goto_e7

    .end local v8           #x:I
    .end local v9           #y:I
    :cond_135
    move v1, v11

    .line 1018
    goto :goto_11b
.end method

.method public onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 525
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_12

    .line 526
    iget v1, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    iget v3, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    .line 534
    :goto_11
    return-void

    .line 528
    :cond_12
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingRight:I

    add-int v0, v1, v2

    .line 529
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_2b

    .line 530
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 532
    :cond_2b
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingBottom:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/KeyboardView;->setMeasuredDimension(II)V

    goto :goto_11
.end method

.method public onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 562
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "me"

    .prologue
    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingLeft:I

    sub-int v6, v8, v9

    .line 1024
    .local v6, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mVerticalCorrection:I

    add-int/2addr v8, v9

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mPaddingTop:I

    sub-int v7, v8, v9

    .line 1025
    .local v7, touchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1026
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 1027
    .local v2, eventTime:J
    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Landroid/inputmethodservice/KeyboardView;->getKeyIndices(II[I)I

    move-result v4

    .line 1029
    .local v4, keyIndex:I
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 1030
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1031
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1032
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    const/4 v8, 0x1

    .line 1139
    :goto_3b
    return v8

    .line 1038
    :cond_3c
    iget-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-eqz v8, :cond_42

    .line 1039
    const/4 v8, 0x1

    goto :goto_3b

    .line 1042
    :cond_42
    packed-switch v0, :pswitch_data_192

    .line 1137
    :goto_45
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    .line 1138
    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    .line 1139
    const/4 v8, 0x1

    goto :goto_3b

    .line 1044
    :pswitch_4b
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    .line 1045
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mStartX:I

    .line 1046
    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mStartY:I

    .line 1047
    iput v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1048
    iput v7, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1049
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1050
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1051
    const/4 v8, -0x1

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1052
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    .line 1054
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    .line 1055
    invoke-direct {p0, v2, v3, v4}, Landroid/inputmethodservice/KeyboardView;->checkMultiTap(JI)V

    .line 1056
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    const/4 v9, -0x1

    if-eq v4, v9, :cond_bb

    iget-object v9, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v9, v9, v4

    iget-object v9, v9, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    :goto_7e
    invoke-interface {v8, v9}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 1058
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ltz v8, :cond_a4

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iget v9, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    aget-object v8, v8, v9

    iget-boolean v8, v8, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v8, :cond_a4

    .line 1059
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1060
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->repeatKey()Z

    .line 1061
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1062
    .local v5, msg:Landroid/os/Message;
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x190

    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1064
    .end local v5           #msg:Landroid/os/Message;
    :cond_a4
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b7

    .line 1065
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1066
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x320

    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1068
    .end local v5           #msg:Landroid/os/Message;
    :cond_b7
    invoke-direct {p0, v4}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto :goto_45

    .line 1056
    :cond_bb
    const/4 v9, 0x0

    goto :goto_7e

    .line 1072
    :pswitch_bd
    const/4 v1, 0x0

    .line 1073
    .local v1, continueLongPress:Z
    const/4 v8, -0x1

    if-eq v4, v8, :cond_db

    .line 1074
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_f9

    .line 1075
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1076
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mDownTime:J

    sub-long v8, v2, v8

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1092
    :goto_ce
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    if-eq v4, v8, :cond_db

    .line 1093
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1094
    const/4 v8, -0x1

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    .line 1097
    :cond_db
    if-nez v1, :cond_f4

    .line 1099
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    const/4 v8, -0x1

    if-eq v4, v8, :cond_f4

    .line 1102
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1103
    .restart local v5       #msg:Landroid/os/Message;
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x320

    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1106
    .end local v5           #msg:Landroid/os/Message;
    :cond_f4
    invoke-direct {p0, v4}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    goto/16 :goto_45

    .line 1078
    :cond_f9
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v4, v8, :cond_108

    .line 1079
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v2, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1080
    const/4 v1, 0x1

    goto :goto_ce

    .line 1082
    :cond_108
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1083
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1084
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastX:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1085
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastY:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1086
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v2

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1088
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1089
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_ce

    .line 1110
    .end local v1           #continueLongPress:Z
    :pswitch_126
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1111
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1112
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1113
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    if-ne v4, v8, :cond_17c

    .line 1114
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long v10, v2, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    .line 1122
    :goto_145
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_15a

    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_15a

    .line 1123
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1124
    iget v6, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeX:I

    .line 1125
    iget v7, p0, Landroid/inputmethodservice/KeyboardView;->mLastCodeY:I

    .line 1127
    :cond_15a
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 1128
    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView;->mKeyIndices:[I

    const/4 v9, -0x1

    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 1130
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_174

    iget-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v8, :cond_174

    iget-boolean v8, p0, Landroid/inputmethodservice/KeyboardView;->mAbortKey:Z

    if-nez v8, :cond_174

    .line 1131
    invoke-direct {p0, v6, v7, v2, v3}, Landroid/inputmethodservice/KeyboardView;->detectAndSendKey(IIJ)V

    .line 1133
    :cond_174
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/KeyboardView;->invalidateKey(I)V

    .line 1134
    const/4 v8, -0x1

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_45

    .line 1116
    :cond_17c
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView;->resetMultiTap()V

    .line 1117
    iget v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    iput v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKey:I

    .line 1118
    iget-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v8, v2

    iget-wide v10, p0, Landroid/inputmethodservice/KeyboardView;->mLastMoveTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mLastKeyTime:J

    .line 1119
    iput v4, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKey:I

    .line 1120
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/inputmethodservice/KeyboardView;->mCurrentKeyTime:J

    goto :goto_145

    .line 1042
    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_126
        :pswitch_bd
    .end packed-switch
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .registers 4
    .parameter "keyboard"

    .prologue
    .line 401
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v1, :cond_8

    .line 402
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/inputmethodservice/KeyboardView;->showPreview(I)V

    .line 404
    :cond_8
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 405
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 407
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->requestLayout()V

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 411
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 412
    invoke-direct {p0, p1}, Landroid/inputmethodservice/KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 413
    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 414
    return-void
.end method

.method public setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 382
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    .line 383
    return-void
.end method

.method public setPopupOffset(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 482
    iput p1, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetX:I

    .line 483
    iput p2, p0, Landroid/inputmethodservice/KeyboardView;->mMiniKeyboardOffsetY:I

    .line 484
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 485
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 487
    :cond_11
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 478
    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView;->mPopupParent:Landroid/view/View;

    .line 479
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .registers 2
    .parameter "previewEnabled"

    .prologue
    .line 462
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mShowPreview:Z

    .line 463
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 496
    iput-boolean p1, p0, Landroid/inputmethodservice/KeyboardView;->mProximityCorrectOn:Z

    .line 497
    return-void
.end method

.method public setShifted(Z)Z
    .registers 3
    .parameter "shifted"

    .prologue
    .line 432
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_11

    .line 433
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 435
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidateAllKeys()V

    .line 436
    const/4 v0, 0x1

    .line 439
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setVerticalCorrection(I)V
    .registers 2
    .parameter "verticalOffset"

    .prologue
    .line 476
    return-void
.end method

.method protected swipeDown()V
    .registers 2

    .prologue
    .line 1161
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 1162
    return-void
.end method

.method protected swipeLeft()V
    .registers 2

    .prologue
    .line 1153
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 1154
    return-void
.end method

.method protected swipeRight()V
    .registers 2

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 1150
    return-void
.end method

.method protected swipeUp()V
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView;->mKeyboardActionListener:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 1158
    return-void
.end method
