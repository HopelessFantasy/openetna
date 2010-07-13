.class public Lcom/android/music/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TouchInterceptor$RemoveListener;,
        Lcom/android/music/TouchInterceptor$DropListener;,
        Lcom/android/music/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1


# instance fields
.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v3, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 63
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "deletemode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/music/TouchInterceptor;->mTouchSlop:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/TouchInterceptor;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/music/TouchInterceptor;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/TouchInterceptor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/music/TouchInterceptor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/music/TouchInterceptor;)Lcom/android/music/TouchInterceptor$RemoveListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/music/TouchInterceptor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .registers 3
    .parameter "y"

    .prologue
    .line 162
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_c

    .line 163
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    .line 165
    :cond_c
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1c

    .line 166
    iget v0, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    .line 168
    :cond_1c
    return-void
.end method

.method private doExpansion()V
    .registers 11

    .prologue
    .line 211
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 212
    .local v0, childnum:I
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    if-le v7, v8, :cond_10

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 216
    :cond_10
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 219
    .local v3, i:I
    :goto_1c
    invoke-virtual {p0, v3}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 220
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_23

    .line 244
    return-void

    .line 223
    :cond_23
    const/16 v2, 0x40

    .line 224
    .local v2, height:I
    const/4 v5, 0x0

    .line 225
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 227
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    if-ne v7, v8, :cond_42

    .line 229
    const/4 v5, 0x4

    .line 239
    :cond_33
    :goto_33
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 240
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 232
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_42
    const/4 v2, 0x1

    goto :goto_33

    .line 234
    :cond_44
    if-ne v3, v0, :cond_33

    .line 235
    iget v7, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_33

    .line 236
    const/16 v2, 0x80

    goto :goto_33
.end method

.method private dragView(II)V
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 346
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 347
    const/high16 v0, 0x3f80

    .line 348
    .local v0, alpha:F
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 349
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_19

    .line 350
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 352
    :cond_19
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 354
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1d
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 355
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    return-void
.end method

.method private getItemForPosition(I)I
    .registers 6
    .parameter "y"

    .prologue
    .line 149
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mDragPoint:I

    sub-int v2, p1, v2

    const/16 v3, 0x20

    sub-int v0, v2, v3

    .line 150
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 151
    .local v1, pos:I
    if-ltz v1, :cond_16

    .line 152
    iget v2, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_15

    .line 153
    add-int/lit8 v1, v1, 0x1

    .line 158
    :cond_15
    :goto_15
    return v1

    .line 155
    :cond_16
    if-gez v0, :cond_15

    .line 156
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private myPointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 136
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 137
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 138
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_9
    if-ltz v3, :cond_21

    .line 139
    invoke-virtual {p0, v3}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 141
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 142
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 145
    .end local v0           #child:Landroid/view/View;
    :goto_1d
    return v4

    .line 138
    .restart local v0       #child:Landroid/view/View;
    :cond_1e
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 145
    .end local v0           #child:Landroid/view/View;
    :cond_21
    const/4 v4, -0x1

    goto :goto_1d
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .registers 10
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 316
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 317
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x30

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 318
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 319
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/music/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/music/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 321
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 322
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 323
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x198

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 327
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 328
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 330
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 331
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 332
    .local v0, backGroundColor:I
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 333
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_58

    .line 336
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    :cond_58
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 340
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 341
    iget-object v2, p0, Lcom/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iput-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 343
    return-void
.end method

.method private stopDragging()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 360
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 361
    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 362
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1d

    .line 363
    iget-object v1, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    iput-object v3, p0, Lcom/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 366
    :cond_1d
    return-void
.end method

.method private unExpandViews(Z)V
    .registers 9
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, i:I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 176
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_2a

    .line 177
    if-eqz p1, :cond_20

    .line 179
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 180
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 181
    .local v4, y:I
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/music/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    invoke-virtual {p0, v2, v4}, Lcom/android/music/TouchInterceptor;->setSelectionFromTop(II)V

    .line 185
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_20
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->layoutChildren()V

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 187
    if-nez v3, :cond_2a

    .line 196
    return-void

    .line 191
    :cond_2a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 192
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    const/16 v5, 0x40

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    .line 70
    iget-object v8, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v8, :cond_1c

    .line 71
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-nez v8, :cond_1c

    .line 72
    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/music/TouchInterceptor$1;

    invoke-direct {v10, p0}, Lcom/android/music/TouchInterceptor$1;-><init>(Lcom/android/music/TouchInterceptor;)V

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 95
    :cond_1c
    iget-object v8, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-nez v8, :cond_24

    iget-object v8, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v8, :cond_2b

    .line 96
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_aa

    .line 128
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_2f
    return v8

    .line 98
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 99
    .local v6, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 100
    .local v7, y:I
    invoke-virtual {p0, v6, v7}, Lcom/android/music/TouchInterceptor;->pointToPosition(II)I

    move-result v3

    .line 101
    .local v3, itemnum:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2b

    .line 104
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 105
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    sub-int v8, v7, v8

    iput v8, p0, Lcom/android/music/TouchInterceptor;->mDragPoint:I

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v8, v7

    iput v8, p0, Lcom/android/music/TouchInterceptor;->mCoordOffset:I

    .line 107
    const v8, 0x7f0a0017

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, dragger:Landroid/view/View;
    iget-object v4, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 109
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 110
    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-ge v6, v8, :cond_a6

    .line 111
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 114
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v7}, Lcom/android/music/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 116
    iput v3, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    .line 117
    iget v8, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    iput v8, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    .line 118
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    .line 119
    iget v5, p0, Lcom/android/music/TouchInterceptor;->mTouchSlop:I

    .line 120
    .local v5, touchSlop:I
    sub-int v8, v7, v5

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    .line 121
    add-int v8, v7, v5

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    .line 122
    const/4 v8, 0x0

    goto :goto_2f

    .line 124
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #touchSlop:I
    :cond_a6
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    goto :goto_2b

    .line 96
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 248
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_b

    .line 249
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    :cond_b
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-nez v9, :cond_13

    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v9, :cond_ed

    :cond_13
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_ed

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    .local v0, action:I
    packed-switch v0, :pswitch_data_f4

    :cond_1e
    :goto_1e
    move v9, v13

    .line 312
    .end local v0           #action:I
    :goto_1f
    return v9

    .line 256
    .restart local v0       #action:I
    :pswitch_20
    iget-object v3, p0, Lcom/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 257
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 258
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->stopDragging()V

    .line 259
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v9, v13, :cond_4c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4c

    .line 260
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    if-eqz v9, :cond_48

    .line 261
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    iget v10, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    invoke-interface {v9, v10}, Lcom/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 263
    :cond_48
    invoke-direct {p0, v13}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_1e

    .line 265
    :cond_4c
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    if-eqz v9, :cond_65

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-ltz v9, :cond_65

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_65

    .line 266
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    iget v10, p0, Lcom/android/music/TouchInterceptor;->mFirstDragPos:I

    iget v11, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/android/music/TouchInterceptor$DropListener;->drop(II)V

    .line 268
    :cond_65
    invoke-direct {p0, v12}, Lcom/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_1e

    .line 274
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 275
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 276
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/android/music/TouchInterceptor;->dragView(II)V

    .line 277
    invoke-direct {p0, v8}, Lcom/android/music/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 278
    .local v1, itemnum:I
    if-ltz v1, :cond_1e

    .line 279
    if-eqz v0, :cond_82

    iget v9, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    if-eq v1, v9, :cond_92

    .line 280
    :cond_82
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    if-eqz v9, :cond_8d

    .line 281
    iget-object v9, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    iget v10, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/android/music/TouchInterceptor$DragListener;->drag(II)V

    .line 283
    :cond_8d
    iput v1, p0, Lcom/android/music/TouchInterceptor;->mDragPos:I

    .line 284
    invoke-direct {p0}, Lcom/android/music/TouchInterceptor;->doExpansion()V

    .line 286
    :cond_92
    const/4 v5, 0x0

    .line 287
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/android/music/TouchInterceptor;->adjustScrollBounds(I)V

    .line 288
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    if-le v8, v9, :cond_dc

    .line 290
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    iget v10, p0, Lcom/android/music/TouchInterceptor;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_d9

    const/16 v9, 0x10

    move v5, v9

    .line 295
    :cond_a6
    :goto_a6
    if-eqz v5, :cond_1e

    .line 296
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/android/music/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 297
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_c2

    .line 299
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/android/music/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 301
    :cond_c2
    invoke-virtual {p0}, Lcom/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 302
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_1e

    .line 303
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 304
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/android/music/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_1e

    .line 290
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_d9
    const/4 v9, 0x4

    move v5, v9

    goto :goto_a6

    .line 291
    :cond_dc
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    if-ge v8, v9, :cond_a6

    .line 293
    iget v9, p0, Lcom/android/music/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_ea

    const/16 v9, -0x10

    move v5, v9

    :goto_e9
    goto :goto_a6

    :cond_ea
    const/4 v9, -0x4

    move v5, v9

    goto :goto_e9

    .line 312
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_ed
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1f

    .line 253
    nop

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_69
        :pswitch_20
        :pswitch_69
        :pswitch_20
    .end packed-switch
.end method

.method public setDragListener(Lcom/android/music/TouchInterceptor$DragListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDragListener:Lcom/android/music/TouchInterceptor$DragListener;

    .line 370
    return-void
.end method

.method public setDropListener(Lcom/android/music/TouchInterceptor$DropListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mDropListener:Lcom/android/music/TouchInterceptor$DropListener;

    .line 374
    return-void
.end method

.method public setRemoveListener(Lcom/android/music/TouchInterceptor$RemoveListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/music/TouchInterceptor;->mRemoveListener:Lcom/android/music/TouchInterceptor$RemoveListener;

    .line 378
    return-void
.end method
