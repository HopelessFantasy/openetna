.class public Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;
.super Landroid/view/View;
.source "BlockTouchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurDown:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectFive:Landroid/graphics/Rect;

.field private mRectFiveHit:Z

.field private mRectFour:Landroid/graphics/Rect;

.field private mRectFourHit:Z

.field private mRectHeight:I

.field private mRectOne:Landroid/graphics/Rect;

.field private mRectOneHit:Z

.field private mRectThree:Landroid/graphics/Rect;

.field private mRectThreeHit:Z

.field private mRectTwo:Landroid/graphics/Rect;

.field private mRectTwoHit:Z

.field private mRectWidth:I

.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;


# direct methods
.method public constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "c"

    .prologue
    const/16 v1, 0x28

    const/4 v0, 0x0

    .line 151
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    .line 152
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    .line 143
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    .line 145
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOneHit:Z

    .line 146
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwoHit:Z

    .line 147
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThreeHit:Z

    .line 148
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFourHit:Z

    .line 149
    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFiveHit:Z

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->setFocusable(Z)V

    .line 155
    return-void
.end method

.method private InitDraw(II)V
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0xff

    const/16 v5, 0xa

    .line 188
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->clear()V

    .line 189
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    add-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    .line 192
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    sub-int v1, p1, v1

    sub-int/2addr v1, v5

    sub-int v2, p1, v5

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    sub-int v2, p2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    add-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    sub-int v1, p2, v1

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    add-int/lit8 v2, v2, 0xa

    sub-int v3, p2, v5

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectWidth:I

    sub-int v1, p1, v1

    sub-int/2addr v1, v5

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectHeight:I

    sub-int v2, p2, v2

    sub-int/2addr v2, v5

    sub-int v3, p1, v5

    sub-int v4, p2, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    .line 197
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 198
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 199
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 200
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 201
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 203
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->invalidate()V

    .line 204
    return-void
.end method

.method private hitTest(II)I
    .registers 6
    .parameter "eventX"
    .parameter "eventY"

    .prologue
    .line 262
    move v0, p1

    .line 263
    .local v0, x:I
    move v1, p2

    .line 265
    .local v1, y:I
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_1c

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_1c

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_1c

    .line 267
    const/4 v2, 0x1

    .line 281
    :goto_1b
    return v2

    .line 268
    :cond_1c
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_36

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_36

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_36

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_36

    .line 270
    const/4 v2, 0x2

    goto :goto_1b

    .line 271
    :cond_36
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_50

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_50

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_50

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_50

    .line 273
    const/4 v2, 0x3

    goto :goto_1b

    .line 274
    :cond_50
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_6a

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_6a

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_6a

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_6a

    .line 276
    const/4 v2, 0x4

    goto :goto_1b

    .line 277
    :cond_6a
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v0, v2, :cond_84

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge v0, v2, :cond_84

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v1, v2, :cond_84

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_84

    .line 279
    const/4 v2, 0x5

    goto :goto_1b

    .line 281
    :cond_84
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method private updateRects(I)V
    .registers 6
    .parameter "i"

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 286
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 288
    if-ne p1, v3, :cond_1a

    .line 290
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOne:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 291
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOneHit:Z

    .line 314
    :cond_16
    :goto_16
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->invalidate()V

    .line 315
    return-void

    .line 293
    :cond_1a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_29

    .line 295
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwo:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 296
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwoHit:Z

    goto :goto_16

    .line 298
    :cond_29
    const/4 v0, 0x3

    if-ne p1, v0, :cond_38

    .line 300
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThree:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 301
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThreeHit:Z

    goto :goto_16

    .line 303
    :cond_38
    const/4 v0, 0x4

    if-ne p1, v0, :cond_47

    .line 305
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFour:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 306
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFourHit:Z

    goto :goto_16

    .line 308
    :cond_47
    const/4 v0, 0x5

    if-ne p1, v0, :cond_16

    .line 310
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFive:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 311
    iput-boolean v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFiveHit:Z

    goto :goto_16
.end method


# virtual methods
.method public CleanBitmap()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 164
    :cond_c
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_16

    .line 209
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 210
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 211
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->invalidate()V

    .line 213
    :cond_16
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 217
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 219
    :cond_b
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 166
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move v1, v4

    .line 167
    .local v1, curW:I
    :goto_d
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v0, v4

    .line 168
    .local v0, curH:I
    :goto_18
    if-lt v1, p1, :cond_21

    if-lt v0, p2, :cond_21

    .line 185
    :goto_1c
    return-void

    .end local v0           #curH:I
    .end local v1           #curW:I
    :cond_1d
    move v1, v5

    .line 166
    goto :goto_d

    .restart local v1       #curW:I
    :cond_1f
    move v0, v5

    .line 167
    goto :goto_18

    .line 172
    .restart local v0       #curH:I
    :cond_21
    if-ge v1, p1, :cond_24

    move v1, p1

    .line 173
    :cond_24
    if-ge v0, p2, :cond_27

    move v0, p2

    .line 175
    :cond_27
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, newBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 177
    .local v3, newCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3f

    .line 179
    iget-object v4, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    :cond_3f
    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 182
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->InitDraw(II)V

    goto :goto_1c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 224
    .local v2, action:I
    if-eqz v2, :cond_a

    const/4 v5, 0x2

    if-ne v2, v5, :cond_78

    :cond_a
    move v5, v7

    :goto_b
    iput-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCurDown:Z

    .line 227
    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mCurDown:Z

    if-eqz v5, :cond_77

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->hitTest(II)I

    move-result v4

    .line 230
    .local v4, mHitTestResult:I
    if-eqz v4, :cond_24

    .line 231
    invoke-direct {p0, v4}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->updateRects(I)V

    .line 232
    :cond_24
    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectOneHit:Z

    if-ne v5, v7, :cond_77

    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectTwoHit:Z

    if-ne v5, v7, :cond_77

    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectThreeHit:Z

    if-ne v5, v7, :cond_77

    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFourHit:Z

    if-ne v5, v7, :cond_77

    iget-boolean v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->mRectFiveHit:Z

    if-ne v5, v7, :cond_77

    .line 236
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    iget-object v5, v5, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_72

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    invoke-static {v5}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 239
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    invoke-static {v5, v7}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->access$002(Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;Z)Z

    .line 240
    const-string v1, "AutoAllTest"

    .line 241
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 242
    .local v0, AutoAllTest:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->CleanBitmap()V

    .line 244
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.media.action.AUTO_CAMERA"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x400

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 248
    :try_start_6d
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    invoke-virtual {v5, v3}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->startActivity(Landroid/content/Intent;)V
    :try_end_72
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6d .. :try_end_72} :catch_7a

    .line 254
    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_72
    :goto_72
    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest$MyView;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;

    invoke-virtual {v5}, Lcom/lge/hiddenmenu/device_test/touch_test/BlockTouchTest;->finish()V

    .line 258
    .end local v4           #mHitTestResult:I
    :cond_77
    return v7

    .line 224
    :cond_78
    const/4 v5, 0x0

    goto :goto_b

    .line 250
    .restart local v0       #AutoAllTest:Ljava/lang/Integer;
    .restart local v1       #ExtraName:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #mHitTestResult:I
    :catch_7a
    move-exception v5

    goto :goto_72
.end method
