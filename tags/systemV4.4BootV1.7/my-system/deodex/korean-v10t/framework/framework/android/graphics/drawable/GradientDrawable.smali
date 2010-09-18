.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$1;,
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;
    }
.end annotation


# static fields
.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDither:Z

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRectIsDirty:Z

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 152
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 153
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 980
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    .line 117
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    .line 981
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 982
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 983
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 984
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 4
    .parameter "orientation"
    .parameter "colors"

    .prologue
    .line 160
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 161
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .registers 16
    .parameter "st"

    .prologue
    const/4 v13, -0x1

    const/high16 v12, 0x4000

    const/4 v11, 0x0

    const/high16 v10, 0x43b4

    .line 361
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v8, :cond_17

    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-boolean v8, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v8, :cond_17

    :cond_14
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 409
    :goto_16
    return-object v8

    .line 362
    :cond_17
    iput-boolean v11, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 364
    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v10

    const v9, 0x461c4000

    div-float/2addr v8, v9

    move v4, v8

    .line 366
    .local v4, sweep:F
    :goto_2a
    new-instance v0, Landroid/graphics/RectF;

    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 368
    .local v0, bounds:Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float v6, v8, v12

    .line 369
    .local v6, x:F
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float v7, v8, v12

    .line 371
    .local v7, y:F
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-eq v8, v13, :cond_99

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v8, v8

    move v5, v8

    .line 374
    .local v5, thickness:F
    :goto_45
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v13, :cond_a2

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v8, v8

    move v2, v8

    .line 377
    .local v2, radius:F
    :goto_4d
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 378
    .local v1, innerBounds:Landroid/graphics/RectF;
    sub-float v8, v6, v2

    sub-float v9, v7, v2

    invoke-virtual {v1, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 380
    new-instance v0, Landroid/graphics/RectF;

    .end local v0           #bounds:Landroid/graphics/RectF;
    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 381
    .restart local v0       #bounds:Landroid/graphics/RectF;
    neg-float v8, v5

    neg-float v9, v5

    invoke-virtual {v0, v8, v9}, Landroid/graphics/RectF;->inset(FF)V

    .line 383
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v8, :cond_ab

    .line 384
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 389
    :goto_6e
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 392
    .local v3, ringPath:Landroid/graphics/Path;
    cmpg-float v8, v4, v10

    if-gez v8, :cond_b1

    const/high16 v8, -0x3c4c

    cmpl-float v8, v4, v8

    if-lez v8, :cond_b1

    .line 393
    sget-object v8, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 395
    add-float v8, v6, v2

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 397
    add-float v8, v6, v2

    add-float/2addr v8, v5

    invoke-virtual {v3, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 399
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v4, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 401
    neg-float v8, v4

    invoke-virtual {v3, v1, v4, v8, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 402
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    :goto_95
    move-object v8, v3

    .line 409
    goto :goto_16

    .end local v0           #bounds:Landroid/graphics/RectF;
    .end local v1           #innerBounds:Landroid/graphics/RectF;
    .end local v2           #radius:F
    .end local v3           #ringPath:Landroid/graphics/Path;
    .end local v4           #sweep:F
    .end local v5           #thickness:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_97
    move v4, v10

    .line 364
    goto :goto_2a

    .line 371
    .restart local v0       #bounds:Landroid/graphics/RectF;
    .restart local v4       #sweep:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_99
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v8, v9

    move v5, v8

    goto :goto_45

    .line 374
    .restart local v5       #thickness:F
    :cond_a2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v8, v9

    move v2, v8

    goto :goto_4d

    .line 386
    .restart local v1       #innerBounds:Landroid/graphics/RectF;
    .restart local v2       #radius:F
    :cond_ab
    iget-object v8, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    goto :goto_6e

    .line 405
    .restart local v3       #ringPath:Landroid/graphics/Path;
    :cond_b1
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 406
    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_95
.end method

.method private ensureValidRect()Z
    .registers 29

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    move v5, v0

    if-eqz v5, :cond_b6

    .line 469
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    .line 472
    .local v18, bounds:Landroid/graphics/Rect;
    const/16 v21, 0x0

    .line 474
    .local v21, inset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_27

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f00

    mul-float v21, v5, v6

    .line 478
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v25, v0

    .line 480
    .local v25, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    int-to-float v6, v6

    add-float v6, v6, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    int-to-float v7, v7

    add-float v7, v7, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    int-to-float v8, v8

    sub-float v8, v8, v21

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    int-to-float v9, v9

    sub-float v9, v9, v21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 483
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object v10, v0

    .line 484
    .local v10, colors:[I
    if-eqz v10, :cond_b6

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    .line 488
    .local v24, r:Landroid/graphics/RectF;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    if-nez v5, :cond_162

    .line 489
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x461c4000

    div-float/2addr v5, v6

    move/from16 v23, v5

    .line 490
    .local v23, level:F
    :goto_7a
    sget-object v5, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_29c

    .line 520
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .local v6, x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 521
    .local v7, y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .local v8, x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .line 525
    .local v9, y1:F
    :goto_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v13, v0

    new-instance v5, Landroid/graphics/LinearGradient;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object v11, v0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 569
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v10           #colors:[I
    .end local v18           #bounds:Landroid/graphics/Rect;
    .end local v21           #inset:F
    .end local v23           #level:F
    .end local v24           #r:Landroid/graphics/RectF;
    .end local v25           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_b6
    :goto_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_298

    const/4 v5, 0x1

    :goto_c2
    return v5

    .line 489
    .restart local v10       #colors:[I
    .restart local v18       #bounds:Landroid/graphics/Rect;
    .restart local v21       #inset:F
    .restart local v24       #r:Landroid/graphics/RectF;
    .restart local v25       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_c3
    const/high16 v5, 0x3f80

    move/from16 v23, v5

    goto :goto_7a

    .line 492
    .restart local v23       #level:F
    :pswitch_c8
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 493
    .restart local v7       #y0:F
    move v8, v6

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .line 494
    .restart local v9       #y1:F
    goto :goto_a2

    .line 496
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_db
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 497
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v5, v0

    mul-float v9, v23, v5

    .line 498
    .restart local v9       #y1:F
    goto :goto_a2

    .line 500
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_f4
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 501
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move v9, v7

    .line 502
    .restart local v9       #y1:F
    goto :goto_a2

    .line 504
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_107
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .line 505
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .line 506
    .restart local v9       #y1:F
    goto :goto_a2

    .line 508
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_120
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .line 509
    .restart local v7       #y0:F
    move v8, v6

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .line 510
    .restart local v9       #y1:F
    goto/16 :goto_a2

    .line 512
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_134
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    .line 513
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    mul-float v9, v23, v5

    .line 514
    .restart local v9       #y1:F
    goto/16 :goto_a2

    .line 516
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    :pswitch_14e
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v7, v0

    .line 517
    .restart local v7       #y0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v5, v0

    mul-float v8, v23, v5

    .restart local v8       #x1:F
    move v9, v7

    .line 518
    .restart local v9       #y1:F
    goto/16 :goto_a2

    .line 527
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v8           #x1:F
    .end local v9           #y1:F
    .end local v23           #level:F
    :cond_162
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c8

    .line 528
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    sub-float/2addr v6, v7

    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 529
    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    .line 531
    .restart local v7       #y0:F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_1c3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x461c4000

    div-float/2addr v5, v8

    move/from16 v23, v5

    .line 533
    .restart local v23       #level:F
    :goto_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v11, Landroid/graphics/RadialGradient;

    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float v14, v23, v8

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v12, v6

    move v13, v7

    move-object v15, v10

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_b6

    .line 531
    .end local v23           #level:F
    :cond_1c3
    const/high16 v5, 0x3f80

    move/from16 v23, v5

    goto :goto_1a7

    .line 536
    .end local v6           #x0:F
    .end local v7           #y0:F
    :cond_1c8
    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b6

    .line 537
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v7, v0

    sub-float/2addr v6, v7

    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 538
    .restart local v6       #x0:F
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v7, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    .line 540
    .restart local v7       #y0:F
    move-object/from16 v26, v10

    .line 541
    .local v26, tempColors:[I
    const/16 v27, 0x0

    .line 543
    .local v27, tempPositions:[F
    invoke-static/range {v25 .. v25}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z

    move-result v5

    if-eqz v5, :cond_282

    .line 544
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object/from16 v26, v0

    .line 545
    move-object v0, v10

    array-length v0, v0

    move/from16 v22, v0

    .line 546
    .local v22, length:I
    if-eqz v26, :cond_21a

    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    add-int/lit8 v8, v22, 0x1

    if-eq v5, v8, :cond_227

    .line 547
    :cond_21a
    add-int/lit8 v5, v22, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v26, v0

    .end local v26           #tempColors:[I
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    .line 549
    .restart local v26       #tempColors:[I
    :cond_227
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move v1, v5

    move-object/from16 v2, v26

    move v3, v8

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 550
    const/4 v5, 0x1

    sub-int v5, v22, v5

    aget v5, v10, v5

    aput v5, v26, v22

    .line 552
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object/from16 v27, v0

    .line 553
    const/high16 v5, 0x3f80

    const/4 v8, 0x1

    sub-int v8, v22, v8

    int-to-float v8, v8

    div-float v19, v5, v8

    .line 554
    .local v19, fraction:F
    if-eqz v27, :cond_252

    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    add-int/lit8 v8, v22, 0x1

    if-eq v5, v8, :cond_25f

    .line 555
    :cond_252
    add-int/lit8 v5, v22, 0x1

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .end local v27           #tempPositions:[F
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    .line 558
    .restart local v27       #tempPositions:[F
    :cond_25f
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x461c4000

    div-float v23, v5, v8

    .line 559
    .restart local v23       #level:F
    const/16 v20, 0x0

    .local v20, i:I
    :goto_26b
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_27e

    .line 560
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v19

    mul-float v5, v5, v23

    aput v5, v27, v20

    .line 559
    add-int/lit8 v20, v20, 0x1

    goto :goto_26b

    .line 562
    :cond_27e
    const/high16 v5, 0x3f80

    aput v5, v27, v22

    .line 565
    .end local v19           #fraction:F
    .end local v20           #i:I
    .end local v22           #length:I
    .end local v23           #level:F
    :cond_282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    new-instance v8, Landroid/graphics/SweepGradient;

    move-object v0, v8

    move v1, v6

    move v2, v7

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_b6

    .line 569
    .end local v6           #x0:F
    .end local v7           #y0:F
    .end local v10           #colors:[I
    .end local v18           #bounds:Landroid/graphics/Rect;
    .end local v21           #inset:F
    .end local v24           #r:Landroid/graphics/RectF;
    .end local v25           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v26           #tempColors:[I
    .end local v27           #tempPositions:[F
    :cond_298
    const/4 v5, 0x0

    goto/16 :goto_c2

    .line 490
    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_db
        :pswitch_f4
        :pswitch_107
        :pswitch_120
        :pswitch_134
        :pswitch_14e
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .registers 9
    .parameter "a"
    .parameter "index"
    .parameter "defaultValue"

    .prologue
    const/high16 v5, 0x3f80

    .line 803
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 804
    .local v0, tv:Landroid/util/TypedValue;
    move v1, p2

    .line 805
    .local v1, v:F
    if-eqz v0, :cond_17

    .line 806
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    move v2, v3

    .line 807
    .local v2, vIsFraction:Z
    :goto_10
    if-eqz v2, :cond_1b

    invoke-virtual {v0, v5, v5}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    move v1, v3

    .line 809
    .end local v2           #vIsFraction:Z
    :cond_17
    :goto_17
    return v1

    .line 806
    :cond_18
    const/4 v3, 0x0

    move v2, v3

    goto :goto_10

    .line 807
    .restart local v2       #vIsFraction:Z
    :cond_1b
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    move v1, v3

    goto :goto_17
.end method

.method private initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 987
    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    if-eqz v1, :cond_d

    .line 988
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 990
    :cond_d
    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 991
    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-ltz v1, :cond_4e

    .line 992
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 993
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 994
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 995
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 997
    iget v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4e

    .line 998
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v3, v1, v2

    iget v2, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v1, v5

    invoke-direct {v0, v1, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1000
    .local v0, e:Landroid/graphics/DashPathEffect;
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1003
    .end local v0           #e:Landroid/graphics/DashPathEffect;
    :cond_4e
    return-void
.end method

.method private modulateAlpha(I)I
    .registers 5
    .parameter "alpha"

    .prologue
    .line 242
    iget v1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v2, v2, 0x7

    add-int v0, v1, v2

    .line 243
    .local v0, scale:I
    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 248
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v5

    if-nez v5, :cond_7

    .line 358
    :cond_6
    :goto_6
    return-void

    .line 255
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    .line 256
    .local v17, prevFillAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-eqz v5, :cond_f4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    move/from16 v18, v5

    .line 258
    .local v18, prevStrokeAlpha:I
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v12

    .line 259
    .local v12, currFillAlpha:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v13

    .line 261
    .local v13, currStrokeAlpha:I
    if-lez v13, :cond_f9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f9

    const/4 v5, 0x1

    move v15, v5

    .line 262
    .local v15, haveStroke:Z
    :goto_44
    if-lez v12, :cond_fd

    const/4 v5, 0x1

    move v14, v5

    .line 263
    .local v14, haveFill:Z
    :goto_48
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v21, v0

    .line 269
    .local v21, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    if-eqz v15, :cond_101

    if-eqz v14, :cond_101

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_101

    const/16 v5, 0xff

    if-ge v13, v5, :cond_101

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 279
    .local v22, useLayer:Z
    :goto_61
    if-eqz v22, :cond_106

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    if-nez v5, :cond_74

    .line 281
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    .line 283
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v20

    .line 288
    .local v20, rad:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float v6, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float v7, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float v8, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float v9, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object v10, v0

    const/4 v11, 0x4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 310
    .end local v20           #rad:F
    :cond_e5
    :goto_e5
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    move v5, v0

    packed-switch v5, :pswitch_data_252

    .line 350
    :cond_ed
    :goto_ed
    if-eqz v22, :cond_237

    .line 351
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 256
    .end local v12           #currFillAlpha:I
    .end local v13           #currStrokeAlpha:I
    .end local v14           #haveFill:Z
    .end local v15           #haveStroke:Z
    .end local v18           #prevStrokeAlpha:I
    .end local v21           #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    .end local v22           #useLayer:Z
    :cond_f4
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_22

    .line 261
    .restart local v12       #currFillAlpha:I
    .restart local v13       #currStrokeAlpha:I
    .restart local v18       #prevStrokeAlpha:I
    :cond_f9
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_44

    .line 262
    .restart local v15       #haveStroke:Z
    :cond_fd
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_48

    .line 269
    .restart local v14       #haveFill:Z
    .restart local v21       #st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    :cond_101
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_61

    .line 300
    .restart local v22       #useLayer:Z
    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 303
    if-eqz v15, :cond_e5

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_e5

    .line 312
    :pswitch_14d
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    move-object v5, v0

    if-eqz v5, :cond_196

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    move-object v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 317
    if-eqz v15, :cond_ed

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 322
    :cond_196
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    move/from16 v20, v0

    .line 323
    .restart local v20       #rad:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v20

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 324
    if-eqz v15, :cond_ed

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v20

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 330
    .end local v20           #rad:F
    :pswitch_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 331
    if-eqz v15, :cond_ed

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 336
    :pswitch_1f0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    .line 337
    .local v19, r:Landroid/graphics/RectF;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .line 338
    .local v7, y:F
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    move v9, v7

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 342
    .end local v7           #y:F
    .end local v19           #r:Landroid/graphics/RectF;
    :pswitch_211
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v16

    .line 343
    .local v16, path:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 344
    if-eqz v15, :cond_ed

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_ed

    .line 353
    .end local v16           #path:Landroid/graphics/Path;
    :cond_237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    if-eqz v15, :cond_6

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_6

    .line 310
    nop

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_14d
        :pswitch_1ca
        :pswitch_1f0
        :pswitch_211
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .registers 3

    .prologue
    .line 419
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .prologue
    .line 824
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 825
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 814
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 441
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "padding"

    .prologue
    .line 165
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_a
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 41
    .parameter "r"
    .parameter "parser"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v24, v0

    .line 579
    .local v24, st:Landroid/graphics/drawable/GradientDrawable$GradientState;
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 582
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move/from16 v4, v31

    invoke-super {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 585
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v23

    .line 588
    .local v23, shapeType:I
    const/16 v31, 0x3

    move/from16 v0, v23

    move/from16 v1, v31

    if-ne v0, v1, :cond_b1

    .line 589
    const/16 v31, 0x5

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 591
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_69

    .line 592
    const/16 v31, 0x2

    const/high16 v32, 0x4040

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 595
    :cond_69
    const/16 v31, 0x6

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 597
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    move/from16 v31, v0

    const/16 v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9d

    .line 598
    const/16 v31, 0x3

    const/high16 v32, 0x4110

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 601
    :cond_9d
    const/16 v31, 0x4

    const/16 v32, 0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 605
    :cond_b1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 607
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 611
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v31

    add-int/lit8 v19, v31, 0x1

    .line 614
    .local v19, innerDepth:I
    :cond_c1
    :goto_c1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    .local v29, type:I
    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_54a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .local v14, depth:I
    move v0, v14

    move/from16 v1, v19

    if-ge v0, v1, :cond_de

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_54a

    .line 616
    :cond_de
    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_c1

    .line 620
    move v0, v14

    move/from16 v1, v19

    if-gt v0, v1, :cond_c1

    .line 624
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    .line 626
    .local v20, name:Ljava/lang/String;
    const-string v31, "size"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12e

    .line 627
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 629
    const/16 v31, 0x1

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v30

    .line 631
    .local v30, width:I
    const/16 v31, 0x0

    const/16 v32, -0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 633
    .local v18, height:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 634
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto :goto_c1

    .line 635
    .end local v18           #height:I
    .end local v30           #width:I
    :cond_12e
    const-string v31, "gradient"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_359

    .line 636
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 638
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v25

    .line 640
    .local v25, startColor:I
    const/16 v31, 0x8

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v17

    .line 642
    .local v17, hasCenterColor:Z
    const/16 v31, 0x8

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 644
    .local v10, centerColor:I
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 646
    .local v15, endColor:I
    const/16 v31, 0x4

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 650
    .local v16, gradientType:I
    const/16 v31, 0x5

    const/high16 v32, 0x3f00

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$202(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    .line 655
    const/16 v31, 0x6

    const/high16 v32, 0x3f00

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    .line 660
    const/16 v31, 0x2

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 662
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 664
    if-nez v16, :cond_2c4

    .line 665
    const/16 v31, 0x3

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v31

    move/from16 v0, v31

    float-to-int v0, v0

    move v6, v0

    .line 667
    .local v6, angle:I
    rem-int/lit16 v6, v6, 0x168

    .line 668
    rem-int/lit8 v31, v6, 0x2d

    if-eqz v31, :cond_201

    .line 669
    new-instance v31, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "<gradient> tag requires \'angle\' attribute to "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "be a multiple of 45"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 674
    :cond_201
    sparse-switch v6, :sswitch_data_54c

    .line 715
    .end local v6           #angle:I
    :cond_204
    :goto_204
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 717
    if-eqz v17, :cond_335

    .line 718
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 719
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v25, v31, v32

    .line 720
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput v10, v31, v32

    .line 721
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aput v15, v31, v32

    .line 723
    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 724
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    aput v33, v31, v32

    .line 726
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v33

    const/high16 v34, 0x3f00

    cmpl-float v33, v33, v34

    if-eqz v33, :cond_32f

    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v33

    :goto_265
    aput v33, v31, v32

    .line 727
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    move-object/from16 v31, v0

    const/16 v32, 0x2

    const/high16 v33, 0x3f80

    aput v33, v31, v32

    goto/16 :goto_c1

    .line 676
    .restart local v6       #angle:I
    :sswitch_275
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_204

    .line 679
    :sswitch_27e
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 682
    :sswitch_288
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 685
    :sswitch_292
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 688
    :sswitch_29c
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 691
    :sswitch_2a6
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 694
    :sswitch_2b0
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 697
    :sswitch_2ba
    sget-object v31, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto/16 :goto_204

    .line 701
    .end local v6           #angle:I
    :cond_2c4
    const/16 v31, 0x7

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v28

    .line 703
    .local v28, tv:Landroid/util/TypedValue;
    if-eqz v28, :cond_304

    .line 704
    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2fa

    const/16 v31, 0x1

    move/from16 v22, v31

    .line 705
    .local v22, radiusRel:Z
    :goto_2e1
    if-eqz v22, :cond_2ff

    const/high16 v31, 0x3f80

    const/high16 v32, 0x3f80

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v31

    :goto_2f1
    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F

    goto/16 :goto_204

    .line 704
    .end local v22           #radiusRel:Z
    :cond_2fa
    const/16 v31, 0x0

    move/from16 v22, v31

    goto :goto_2e1

    .line 705
    .restart local v22       #radiusRel:Z
    :cond_2ff
    invoke-virtual/range {v28 .. v28}, Landroid/util/TypedValue;->getFloat()F

    move-result v31

    goto :goto_2f1

    .line 707
    .end local v22           #radiusRel:Z
    :cond_304
    const/16 v31, 0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_204

    .line 708
    new-instance v31, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "<gradient> tag requires \'gradientRadius\' "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "attribute with radial type"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 726
    .end local v28           #tv:Landroid/util/TypedValue;
    :cond_32f
    invoke-static/range {v24 .. v24}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F

    move-result v33

    goto/16 :goto_265

    .line 729
    :cond_335
    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 730
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aput v25, v31, v32

    .line 731
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aput v15, v31, v32

    goto/16 :goto_c1

    .line 734
    .end local v10           #centerColor:I
    .end local v15           #endColor:I
    .end local v16           #gradientType:I
    .end local v17           #hasCenterColor:Z
    .end local v25           #startColor:I
    :cond_359
    const-string v31, "solid"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_389

    .line 735
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 737
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 739
    .local v7, argb:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 740
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/16 :goto_c1

    .line 741
    .end local v7           #argb:I
    :cond_389
    const-string v31, "stroke"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3f3

    .line 742
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 744
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v30

    .line 746
    .restart local v30       #width:I
    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    .line 748
    .local v11, color:I
    const/16 v31, 0x2

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    .line 750
    .local v13, dashWidth:F
    const/16 v31, 0x0

    cmpl-float v31, v13, v31

    if-eqz v31, :cond_3ea

    .line 751
    const/16 v31, 0x3

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    .line 753
    .local v12, dashGap:F
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v11

    move v3, v13

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 757
    .end local v12           #dashGap:F
    :goto_3e5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_c1

    .line 755
    :cond_3ea
    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_3e5

    .line 758
    .end local v11           #color:I
    .end local v13           #dashWidth:F
    .end local v30           #width:I
    :cond_3f3
    const-string v31, "corners"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4be

    .line 759
    sget-object v31, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 761
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    .line 763
    .local v21, radius:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 764
    const/16 v31, 0x1

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v26

    .line 766
    .local v26, topLeftRadius:I
    const/16 v31, 0x2

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v27

    .line 768
    .local v27, topRightRadius:I
    const/16 v31, 0x3

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 770
    .local v8, bottomLeftRadius:I
    const/16 v31, 0x4

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 772
    .local v9, bottomRightRadius:I
    move/from16 v0, v26

    move/from16 v1, v21

    if-eq v0, v1, :cond_4b9

    move/from16 v0, v27

    move/from16 v1, v21

    if-eq v0, v1, :cond_4b9

    move v0, v8

    move/from16 v1, v21

    if-eq v0, v1, :cond_4b9

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_4b9

    .line 774
    const/16 v31, 0x8

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x1

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x3

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x4

    move v0, v8

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x5

    move v0, v8

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x6

    move v0, v9

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    const/16 v32, 0x7

    move v0, v9

    int-to-float v0, v0

    move/from16 v33, v0

    aput v33, v31, v32

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 781
    :cond_4b9
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_c1

    .line 782
    .end local v8           #bottomLeftRadius:I
    .end local v9           #bottomRightRadius:I
    .end local v21           #radius:I
    .end local v26           #topLeftRadius:I
    .end local v27           #topRightRadius:I
    :cond_4be
    const-string v31, "padding"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_52c

    .line 783
    sget-object v31, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 785
    new-instance v31, Landroid/graphics/Rect;

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object v0, v5

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v33

    const/16 v34, 0x2

    const/16 v35, 0x0

    move-object v0, v5

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v34

    const/16 v35, 0x3

    const/16 v36, 0x0

    move-object v0, v5

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v35

    invoke-direct/range {v31 .. v35}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    .line 794
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    goto/16 :goto_c1

    .line 797
    :cond_52c
    const-string v31, "drawable"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Bad element under <shape>: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c1

    .line 800
    .end local v14           #depth:I
    .end local v20           #name:Ljava/lang/String;
    :cond_54a
    return-void

    .line 674
    nop

    :sswitch_data_54c
    .sparse-switch
        0x0 -> :sswitch_275
        0x2d -> :sswitch_27e
        0x5a -> :sswitch_288
        0x87 -> :sswitch_292
        0xb4 -> :sswitch_29c
        0xe1 -> :sswitch_2a6
        0x10e -> :sswitch_2b0
        0x13b -> :sswitch_2ba
    .end sparse-switch
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_1b

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1b

    .line 831
    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    .line 832
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->initializeWithState(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    .line 835
    :cond_1b
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "r"

    .prologue
    const/4 v1, 0x1

    .line 446
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 448
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 449
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 450
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3
    .parameter "level"

    .prologue
    const/4 v0, 0x1

    .line 454
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 455
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 456
    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    .line 457
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    .line 458
    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 425
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    .line 426
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .parameter "argb"

    .prologue
    .line 413
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColor(I)V

    .line 414
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 435
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 436
    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3
    .parameter "radii"

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    .line 180
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3
    .parameter "radius"

    .prologue
    .line 187
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    .line 188
    return-void
.end method

.method public setDither(Z)V
    .registers 2
    .parameter "dither"

    .prologue
    .line 430
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable;->mDither:Z

    .line 431
    return-void
.end method

.method public setGradientCenter(FF)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    .line 231
    return-void
.end method

.method public setGradientRadius(F)V
    .registers 3
    .parameter "gradientRadius"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(F)V

    .line 235
    return-void
.end method

.method public setGradientType(I)V
    .registers 3
    .parameter "gradient"

    .prologue
    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRectIsDirty:Z

    .line 227
    return-void
.end method

.method public setShape(I)V
    .registers 3
    .parameter "shape"

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    .line 221
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    .line 222
    return-void
.end method

.method public setSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    .line 217
    return-void
.end method

.method public setStroke(II)V
    .registers 4
    .parameter "width"
    .parameter "color"

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 196
    return-void
.end method

.method public setStroke(IIFF)V
    .registers 10
    .parameter "width"
    .parameter "color"
    .parameter "dashWidth"
    .parameter "dashGap"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(IIFF)V

    .line 201
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_19

    .line 202
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 203
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    :cond_19
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, e:Landroid/graphics/DashPathEffect;
    cmpl-float v1, p3, v3

    if-lez v1, :cond_36

    .line 210
    new-instance v0, Landroid/graphics/DashPathEffect;

    .end local v0           #e:Landroid/graphics/DashPathEffect;
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    aput p4, v1, v4

    invoke-direct {v0, v1, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 212
    .restart local v0       #e:Landroid/graphics/DashPathEffect;
    :cond_36
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 213
    return-void
.end method

.method public setUseLevel(Z)V
    .registers 3
    .parameter "useLevel"

    .prologue
    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z

    .line 239
    return-void
.end method
