.class public Lcom/angryredplanet/android/rings_extended/FastScrollView;
.super Landroid/widget/FrameLayout;
.source "FastScrollView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;,
        Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;
    }
.end annotation


# instance fields
.field private mChangedBounds:Z

.field private mCurrentThumb:Landroid/graphics/drawable/Drawable;

.field private mDragging:Z

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlaySize:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScrollCompleted:Z

.field private mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mThumbH:I

.field private mThumbVisible:Z

.field private mThumbW:I

.field private mThumbY:I

.field private mVisibleItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v0, 0x68

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mHandler:Landroid/os/Handler;

    .line 91
    invoke-direct {p0, p1}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/16 v0, 0x68

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-direct {p0, p1}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->init(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/16 v0, 0x68

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-direct {p0, p1}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->init(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/angryredplanet/android/rings_extended/FastScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    return v0
.end method

.method static synthetic access$100(Lcom/angryredplanet/android/rings_extended/FastScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    return v0
.end method

.method static synthetic access$200(Lcom/angryredplanet/android/rings_extended/FastScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    return v0
.end method

.method static synthetic access$300(Lcom/angryredplanet/android/rings_extended/FastScrollView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->removeThumb()V

    return-void
.end method

.method private cancelFling()V
    .registers 10

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 358
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 359
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 361
    return-void
.end method

.method private getSections()V
    .registers 4

    .prologue
    .line 236
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 237
    .local v1, adapter:Landroid/widget/Adapter;
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_1a

    .line 238
    move-object v0, v1

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListOffset:I

    .line 239
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 241
    .restart local v1       #adapter:Landroid/widget/Adapter;
    :cond_1a
    instance-of v2, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;

    if-eqz v2, :cond_2c

    .line 242
    check-cast v1, Landroid/widget/BaseAdapter;

    .end local v1           #adapter:Landroid/widget/Adapter;
    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 243
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v2, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;

    invoke-interface {v2}, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mSections:[Ljava/lang/Object;

    .line 245
    :cond_2c
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->useThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const/high16 v1, 0x108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    iput-boolean v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollCompleted:Z

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->setWillNotDraw(Z)V

    .line 126
    invoke-virtual {p0, p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 128
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlayPos:Landroid/graphics/RectF;

    .line 129
    new-instance v1, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    invoke-direct {v1, p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;-><init>(Lcom/angryredplanet/android/rings_extended/FastScrollView;)V

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    .line 130
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 133
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    return-void
.end method

.method private removeThumb()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbVisible:Z

    .line 142
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->invalidate()V

    .line 143
    return-void
.end method

.method private scrollTo(F)V
    .registers 22
    .parameter "position"

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 278
    .local v3, count:I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollCompleted:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mSections:[Ljava/lang/Object;

    move-object v15, v0

    .line 281
    .local v15, sections:[Ljava/lang/Object;
    if-eqz v15, :cond_fd

    move-object v0, v15

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_fd

    .line 282
    array-length v7, v15

    .line 283
    .local v7, nSections:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v0, v0

    move v13, v0

    .line 284
    .local v13, section:I
    if-lt v13, v7, :cond_36

    .line 285
    const/16 v17, 0x1

    sub-int v13, v7, v17

    .line 287
    :cond_36
    move v14, v13

    .line 288
    .local v14, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListAdapter:Landroid/widget/BaseAdapter;

    move-object v2, v0

    check-cast v2, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;

    .line 289
    .local v2, baseAdapter:Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;
    invoke-interface {v2, v13}, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .line 297
    .local v6, index:I
    move v8, v3

    .line 298
    .local v8, nextIndex:I
    move v11, v6

    .line 299
    .local v11, prevIndex:I
    move v12, v13

    .line 300
    .local v12, prevSection:I
    add-int/lit8 v10, v13, 0x1

    .line 302
    .local v10, nextSection:I
    const/16 v17, 0x1

    sub-int v17, v7, v17

    move v0, v13

    move/from16 v1, v17

    if-ge v0, v1, :cond_59

    .line 303
    add-int/lit8 v17, v13, 0x1

    move-object v0, v2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 307
    :cond_59
    if-ne v8, v6, :cond_67

    .line 309
    :cond_5b
    if-lez v13, :cond_67

    .line 310
    add-int/lit8 v13, v13, -0x1

    .line 311
    invoke-interface {v2, v13}, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 312
    if-eq v11, v6, :cond_5b

    .line 313
    move v12, v13

    .line 314
    move v14, v13

    .line 324
    :cond_67
    add-int/lit8 v9, v10, 0x1

    .line 326
    .local v9, nextNextSection:I
    :goto_69
    if-ge v9, v7, :cond_79

    invoke-interface {v2, v9}, Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;->getPositionForSection(I)I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-ne v0, v1, :cond_79

    .line 327
    add-int/lit8 v9, v9, 0x1

    .line 328
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    .line 333
    :cond_79
    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v5, v17, v18

    .line 334
    .local v5, fPrev:F
    move v0, v10

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v4, v17, v18

    .line 335
    .local v4, fNext:F
    sub-int v17, v8, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v18, p1, v5

    mul-float v17, v17, v18

    sub-float v18, v4, v5

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v6, v11, v17

    .line 338
    const/16 v17, 0x1

    sub-int v17, v3, v17

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_b0

    const/16 v17, 0x1

    sub-int v6, v3, v17

    .line 340
    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListOffset:I

    move/from16 v18, v0

    add-int v18, v18, v6

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 347
    .end local v2           #baseAdapter:Lcom/angryredplanet/android/rings_extended/FastScrollView$SectionIndexer;
    .end local v4           #fNext:F
    .end local v5           #fPrev:F
    .end local v7           #nSections:I
    .end local v8           #nextIndex:I
    .end local v9           #nextNextSection:I
    .end local v10           #nextSection:I
    .end local v11           #prevIndex:I
    .end local v12           #prevSection:I
    .end local v13           #section:I
    :goto_c3
    if-ltz v14, :cond_11f

    .line 348
    aget-object v17, v15, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mSectionText:Ljava/lang/String;

    .line 349
    .local v16, text:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_eb

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11c

    :cond_eb
    move-object v0, v15

    array-length v0, v0

    move/from16 v17, v0

    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_11c

    const/16 v17, 0x1

    :goto_f6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDrawOverlay:Z

    .line 354
    .end local v16           #text:Ljava/lang/String;
    :goto_fc
    return-void

    .line 342
    .end local v6           #index:I
    .end local v14           #sectionIndex:I
    :cond_fd
    move v0, v3

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p1

    move/from16 v0, v17

    float-to-int v0, v0

    move v6, v0

    .line 343
    .restart local v6       #index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListOffset:I

    move/from16 v18, v0

    add-int v18, v18, v6

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 344
    const/4 v14, -0x1

    .restart local v14       #sectionIndex:I
    goto :goto_c3

    .line 349
    .restart local v16       #text:Ljava/lang/String;
    :cond_11c
    const/16 v17, 0x0

    goto :goto_f6

    .line 352
    .end local v16           #text:Ljava/lang/String;
    :cond_11f
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDrawOverlay:Z

    goto :goto_fc
.end method

.method private useThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    .line 109
    const/16 v0, 0x40

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    .line 110
    const/16 v0, 0x34

    iput v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mChangedBounds:Z

    .line 112
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 149
    iget-boolean v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbVisible:Z

    if-nez v8, :cond_a

    .line 187
    :goto_9
    return-void

    .line 154
    :cond_a
    iget v7, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    .line 155
    .local v7, y:I
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getWidth()I

    move-result v6

    .line 156
    .local v6, viewWidth:I
    iget-object v5, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    .line 158
    .local v5, scrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;
    const/4 v0, -0x1

    .line 159
    .local v0, alpha:I
    iget-boolean v8, v5, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    if-eqz v8, :cond_37

    .line 160
    invoke-virtual {v5}, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->getAlpha()I

    move-result v0

    .line 161
    const/16 v8, 0x7f

    if-ge v0, v8, :cond_26

    .line 162
    iget-object v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    mul-int/lit8 v9, v0, 0x2

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 164
    :cond_26
    iget v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    mul-int/2addr v8, v0

    div-int/lit16 v8, v8, 0xff

    sub-int v2, v6, v8

    .line 165
    .local v2, left:I
    iget-object v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    invoke-virtual {v8, v2, v11, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mChangedBounds:Z

    .line 169
    .end local v2           #left:I
    :cond_37
    int-to-float v8, v7

    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget-object v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 171
    neg-int v8, v7

    int-to-float v8, v8

    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    iget-boolean v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    if-eqz v8, :cond_78

    iget-boolean v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDrawOverlay:Z

    if-eqz v8, :cond_78

    .line 175
    iget-object v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 176
    iget-object v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mPaint:Landroid/graphics/Paint;

    .line 177
    .local v3, paint:Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 178
    .local v1, descent:F
    iget-object v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlayPos:Landroid/graphics/RectF;

    .line 179
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mSectionText:Ljava/lang/String;

    iget v9, v4, Landroid/graphics/RectF;->left:F

    iget v10, v4, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    iget v11, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v10, v10, 0x2

    iget v11, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    div-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    int-to-float v10, v10

    sub-float/2addr v10, v1

    invoke-virtual {p1, v8, v9, v10, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 181
    .end local v1           #descent:F
    .end local v3           #paint:Landroid/graphics/Paint;
    .end local v4           #rectF:Landroid/graphics/RectF;
    :cond_78
    if-nez v0, :cond_80

    .line 182
    iput-boolean v11, v5, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    .line 183
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->removeThumb()V

    goto :goto_9

    .line 185
    :cond_80
    iget v8, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    sub-int v8, v6, v8

    iget v9, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    add-int/2addr v9, v7

    invoke-virtual {p0, v8, v7, v6, v9}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->invalidate(IIII)V

    goto/16 :goto_9
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 248
    instance-of v0, p2, Landroid/widget/ListView;

    if-eqz v0, :cond_10

    .line 249
    check-cast p2, Landroid/widget/ListView;

    .end local p2
    iput-object p2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    .line 251
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 252
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getSections()V

    .line 254
    :cond_10
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "parent"
    .parameter "child"

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    if-ne p2, v0, :cond_b

    .line 258
    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    .line 259
    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 260
    iput-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mSections:[Ljava/lang/Object;

    .line 262
    :cond_b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 266
    iget-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbVisible:Z

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_38

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_38

    .line 269
    iput-boolean v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    move v0, v3

    .line 273
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 11
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 210
    sub-int v1, p4, p3

    if-lez v1, :cond_2c

    iget-boolean v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    if-nez v1, :cond_2c

    .line 211
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, p2

    sub-int v2, p4, p3

    div-int/2addr v1, v2

    iput v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    .line 212
    iget-boolean v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mChangedBounds:Z

    if-eqz v1, :cond_2c

    .line 213
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getWidth()I

    move-result v0

    .line 214
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    iput-boolean v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mChangedBounds:Z

    .line 218
    .end local v0           #viewWidth:I
    :cond_2c
    iput-boolean v5, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollCompleted:Z

    .line 219
    iget v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mVisibleItem:I

    if-ne p2, v1, :cond_33

    .line 232
    :cond_32
    :goto_32
    return-void

    .line 222
    :cond_33
    iput p2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mVisibleItem:I

    .line 223
    iget-boolean v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbVisible:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    iget-boolean v1, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    if-eqz v1, :cond_48

    .line 224
    :cond_3f
    iput-boolean v5, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbVisible:Z

    .line 225
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 227
    :cond_48
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    iput-boolean v4, v1, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    .line 229
    iget-boolean v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    if-nez v1, :cond_32

    .line 230
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_32
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 205
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 192
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 193
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mCurrentThumb:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    sub-int v2, p1, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    :cond_13
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlayPos:Landroid/graphics/RectF;

    .line 196
    .local v0, pos:Landroid/graphics/RectF;
    iget v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 197
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 198
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 199
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlaySize:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 200
    iget-object v1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "me"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_43

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_a0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    iget v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a0

    .line 370
    iput-boolean v5, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    .line 371
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v2, :cond_3e

    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mList:Landroid/widget/ListView;

    if-eqz v2, :cond_3e

    .line 372
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getSections()V

    .line 375
    :cond_3e
    invoke-direct {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->cancelFling()V

    move v2, v5

    .line 403
    :goto_42
    return v2

    .line 378
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_5f

    .line 379
    iget-boolean v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    if-eqz v2, :cond_a0

    .line 380
    iput-boolean v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    .line 381
    iget-object v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mHandler:Landroid/os/Handler;

    .line 382
    .local v0, handler:Landroid/os/Handler;
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollFade:Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v5

    .line 384
    goto :goto_42

    .line 386
    .end local v0           #handler:Landroid/os/Handler;
    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a0

    .line 387
    iget-boolean v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mDragging:Z

    if-eqz v2, :cond_a0

    .line 388
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getHeight()I

    move-result v1

    .line 389
    .local v1, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    .line 390
    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    if-gez v2, :cond_92

    .line 391
    iput v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    .line 396
    :cond_80
    :goto_80
    iget-boolean v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mScrollCompleted:Z

    if-eqz v2, :cond_90

    .line 397
    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->scrollTo(F)V

    :cond_90
    move v2, v5

    .line 399
    goto :goto_42

    .line 392
    :cond_92
    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    iget v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    add-int/2addr v2, v3

    if-le v2, v1, :cond_80

    .line 393
    iget v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbH:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView;->mThumbY:I

    goto :goto_80

    .line 403
    .end local v1           #viewHeight:I
    :cond_a0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_42
.end method
