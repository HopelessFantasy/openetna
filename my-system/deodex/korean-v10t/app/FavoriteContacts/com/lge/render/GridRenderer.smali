.class public Lcom/lge/render/GridRenderer;
.super Ljava/lang/Object;
.source "GridRenderer.java"

# interfaces
.implements Lcom/lge/render/RendererAttribute;


# static fields
.field public static final GRID_ALPHA:I = 0xef

.field public static final PHOTO_HEIGHT:I = 0x74

.field public static final PHOTO_WIDTH:I = 0x74

.field public static final SIDE_PADDING:I = 0x1d

.field public static final TAG:Ljava/lang/String; = "GRID_RENDERER"

.field public static final VERTICAL_PADDING:I = 0x1


# instance fields
.field private m_RenderListener:Lcom/lge/render/RenderAttListener;

.field private m_bMoveAction:Z

.field private m_iCurMovingDist:I

.field private m_iDrageMoveDistance:I

.field private final m_iGridItemNum:I

.field private final m_iMaxSpeed:I

.field private final m_iMinSpeed:I

.field private m_iMode:I

.field private m_iMoveDistance:I

.field private m_iMovingVector:I

.field private m_iNowState:I

.field private m_iSpeed:I

.field private final m_iStandardPx:I


# direct methods
.method public constructor <init>(Lcom/lge/render/RenderAttListener;)V
    .registers 4
    .parameter "elRender"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iGridItemNum:I

    .line 21
    const/16 v0, 0x41

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMaxSpeed:I

    .line 22
    const/16 v0, 0x23

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMinSpeed:I

    .line 23
    const/16 v0, 0x3a

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iStandardPx:I

    .line 36
    const/high16 v0, 0x2

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    .line 42
    iput-object p1, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    .line 43
    iput v1, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    .line 44
    iput v1, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 45
    iput-boolean v1, p0, Lcom/lge/render/GridRenderer;->m_bMoveAction:Z

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/lge/render/GridRenderer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/lge/render/GridRenderer;->m_bMoveAction:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/render/GridRenderer;)Lcom/lge/render/RenderAttListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    return-object v0
.end method


# virtual methods
.method public FlingTouch(FFLcom/lge/render/PhotoMgr;)Z
    .registers 9
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "mgr"

    .prologue
    const/4 v4, 0x1

    .line 57
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_15

    .line 58
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 60
    .local v0, dis:F
    const/high16 v2, 0x442f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_15

    move v2, v4

    .line 83
    .end local v0           #dis:F
    :goto_14
    return v2

    .line 63
    :cond_15
    :goto_15
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    .line 64
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    if-nez v2, :cond_15

    .line 65
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    goto :goto_15

    .line 68
    :cond_27
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_4d

    .line 69
    iput v4, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    .line 73
    :goto_2e
    float-to-int v2, p2

    div-int/lit8 v1, v2, 0x5

    .line 74
    .local v1, movingnum:I
    mul-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    .line 78
    const/16 v2, 0x41

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 80
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 81
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 82
    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 83
    const/4 v2, 0x0

    goto :goto_14

    .line 71
    .end local v1           #movingnum:I
    :cond_4d
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    goto :goto_2e
.end method

.method public LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 11
    .parameter "e"
    .parameter "mgr"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 89
    iget v3, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_45

    .line 90
    iget-boolean v3, p0, Lcom/lge/render/GridRenderer;->m_bMoveAction:Z

    if-nez v3, :cond_45

    .line 91
    iput-boolean v5, p0, Lcom/lge/render/GridRenderer;->m_bMoveAction:Z

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 94
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 96
    .local v2, y:I
    invoke-virtual {p2, v1, v2, v5}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 98
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-eqz v0, :cond_45

    .line 99
    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v5}, Lcom/lge/render/PhotoMgr;->setSelectedItem(Lcom/lge/render/FCPhotoItem;II)V

    .line 101
    iget-object v3, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-interface {v3, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v3

    invoke-interface {v3, v6, v5}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 104
    iget-object v3, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v4, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-interface {v4, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    .line 108
    if-nez v0, :cond_3d

    move v3, v6

    .line 126
    .end local v0           #item:Lcom/lge/render/FCPhotoItem;
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_3c
    return v3

    .line 111
    .restart local v0       #item:Lcom/lge/render/FCPhotoItem;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_3d
    new-instance v3, Lcom/lge/render/GridRenderer$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/lge/render/GridRenderer$1;-><init>(Lcom/lge/render/GridRenderer;Lcom/lge/render/PhotoMgr;Landroid/view/MotionEvent;)V

    invoke-virtual {p2, v3}, Lcom/lge/render/PhotoMgr;->addPreOperation(Ljava/lang/Runnable;)V

    .end local v0           #item:Lcom/lge/render/FCPhotoItem;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_45
    move v3, v6

    .line 126
    goto :goto_3c
.end method

.method public ScrollTouch(FFLandroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 9
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "e"
    .parameter "mgr"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_10

    move v0, v2

    .line 160
    :goto_f
    return v0

    .line 138
    :cond_10
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3a

    .line 139
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    if-gez v0, :cond_1d

    .line 140
    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 141
    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    .line 144
    :cond_1d
    iput v3, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    .line 154
    :goto_1f
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    .line 156
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 157
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 158
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    move v0, v3

    .line 160
    goto :goto_f

    .line 146
    :cond_3a
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    if-lez v0, :cond_42

    .line 147
    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 148
    iput v2, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    .line 151
    :cond_42
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    goto :goto_1f
.end method

.method public SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "mgr"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 166
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v2, :cond_f

    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_11

    :cond_f
    move v0, v9

    .line 212
    :goto_10
    return v0

    .line 169
    :cond_11
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 170
    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {p3, v0, v3, v2}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 173
    .local v8, item:Lcom/lge/render/FCPhotoItem;
    if-nez v8, :cond_1e

    move v0, v2

    .line 174
    goto :goto_10

    .line 177
    :cond_1e
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v3, 0x1

    if-ne v0, v3, :cond_42

    .line 178
    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {v8, v0, v3}, Lcom/lge/render/FCPhotoItem;->getBtnClick(II)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 179
    invoke-virtual {p3, v8, v2}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v1

    .line 181
    .local v1, itemidx:I
    invoke-virtual {v8}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v3

    new-instance v5, Lcom/lge/render/GridRenderer$2;

    invoke-direct {v5, p0}, Lcom/lge/render/GridRenderer$2;-><init>(Lcom/lge/render/GridRenderer;)V

    move-object v0, p3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->prepareErasePhoto(IIJLjava/lang/Runnable;Z)V

    move v0, v9

    .line 195
    goto :goto_10

    .end local v1           #itemidx:I
    :cond_40
    move v0, v2

    .line 198
    goto :goto_10

    .line 201
    :cond_42
    const/16 v0, 0x63

    invoke-virtual {p3, v8, v0, v2}, Lcom/lge/render/PhotoMgr;->setSelectedItem(Lcom/lge/render/FCPhotoItem;II)V

    .line 203
    const/4 v7, 0x1

    .line 204
    .local v7, flag:I
    shl-int/lit8 v7, v7, 0x8

    .line 205
    or-int/lit8 v7, v7, 0x1

    .line 207
    iget-object v0, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    const/16 v3, 0x101

    invoke-interface {v0, p0, v2, v3, v7}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    move v0, v9

    .line 212
    goto :goto_10
.end method

.method public TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "mgr"
    .parameter "PressOrUp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    if-nez p4, :cond_a

    .line 221
    iget-object v1, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4}, Lcom/lge/render/RenderAttListener;->setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V

    .line 223
    :cond_a
    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_2e

    .line 224
    if-eqz p4, :cond_16

    .line 225
    iput v3, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    :cond_14
    :goto_14
    move v1, v3

    .line 256
    :goto_15
    return v1

    .line 227
    :cond_16
    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_14

    .line 230
    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 231
    iput v3, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    .line 232
    iput v3, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    .line 233
    iput v3, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 234
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->onMoveStop()V

    goto :goto_14

    .line 238
    :cond_2e
    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 239
    if-eqz p4, :cond_14

    .line 240
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p3, v1, v2, v4}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 243
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-nez v0, :cond_40

    move v1, v4

    .line 244
    goto :goto_15

    .line 246
    :cond_40
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->getBtnClick(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 249
    iget-object v1, p0, Lcom/lge/render/GridRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getButton()Lcom/lge/render/FCBtnItem;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/lge/render/RenderAttListener;->setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V

    move v1, v3

    .line 252
    goto :goto_15
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    return v0
.end method

.method public getMovingDistance()F
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    int-to-float v0, v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "GRID_RENDERER"

    return-object v0
.end method

.method public initMovingDistance()V
    .registers 2

    .prologue
    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    .line 449
    return-void
.end method

.method public initailRender(Lcom/lge/render/PhotoMgr;)V
    .registers 3
    .parameter "mgr"

    .prologue
    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 415
    iput-boolean v0, p0, Lcom/lge/render/GridRenderer;->m_bMoveAction:Z

    .line 416
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 16
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 262
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1c

    .line 263
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iDrageMoveDistance:I

    .line 266
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4b

    .line 267
    const/16 v0, 0x5a

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 272
    :cond_1c
    :goto_1c
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    .line 273
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    iget v2, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    .line 277
    :goto_30
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    const/16 v1, 0x3a

    if-le v0, v1, :cond_74

    .line 279
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 281
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 292
    :cond_41
    :goto_41
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/lit8 v1, v1, 0x75

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    goto :goto_30

    .line 269
    :cond_4b
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    goto :goto_1c

    .line 283
    :cond_53
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/lge/render/PhotoMgr;->onMovePhoto(II)Z

    move-result v0

    if-nez v0, :cond_41

    .line 285
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_70

    .line 286
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    .line 287
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    goto :goto_41

    .line 289
    :cond_70
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    goto :goto_41

    .line 295
    :cond_74
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    if-gtz v0, :cond_9a

    .line 296
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_9a

    .line 297
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    if-nez v0, :cond_f2

    .line 298
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    if-eqz v0, :cond_91

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 300
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->onMoveStop()V

    .line 302
    :cond_91
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    .line 321
    :cond_9a
    :goto_9a
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v12

    .line 322
    .local v12, topListSize:I
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v7

    .line 323
    .local v7, bottomListSize:I
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v8

    .line 325
    .local v8, dispListSize:I
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getContactsCnt()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_b3

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 330
    :cond_b3
    const/4 v0, 0x1

    sub-int v1, v12, v0

    .local v1, i:I
    const/4 v10, 0x1

    .local v10, j:I
    :goto_b7
    if-ltz v1, :cond_118

    const/4 v0, 0x2

    if-gt v10, v0, :cond_118

    .line 331
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v9

    .line 333
    .local v9, item:Lcom/lge/render/FCPhotoItem;
    rem-int/lit8 v0, v10, 0x2

    mul-int/lit8 v0, v0, 0x1d

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit8 v2, v10, 0x2

    mul-int/lit8 v2, v2, 0x74

    add-int/2addr v0, v2

    const/16 v2, -0x73

    iget v3, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    sub-int/2addr v2, v3

    invoke-virtual {v9, v0, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 336
    const/16 v0, 0x74

    const/16 v2, 0x74

    invoke-virtual {v9, v0, v2}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 337
    const/16 v0, 0xef

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 339
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v0, v2, :cond_ed

    .line 340
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 330
    :cond_ed
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_b7

    .line 306
    .end local v1           #i:I
    .end local v7           #bottomListSize:I
    .end local v8           #dispListSize:I
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    .end local v10           #j:I
    .end local v12           #topListSize:I
    :cond_f2
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_104

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    .line 308
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    goto :goto_9a

    .line 312
    :cond_104
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iNowState:I

    .line 313
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMoveDistance:I

    .line 314
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMovingVector:I

    .line 315
    const/16 v0, 0x23

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iSpeed:I

    goto :goto_9a

    .line 345
    .restart local v1       #i:I
    .restart local v7       #bottomListSize:I
    .restart local v8       #dispListSize:I
    .restart local v10       #j:I
    .restart local v12       #topListSize:I
    :cond_118
    const/4 v1, 0x0

    :goto_119
    if-ge v1, v7, :cond_15f

    const/4 v0, 0x2

    if-ge v1, v0, :cond_15f

    .line 346
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v9

    .line 348
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    rem-int/lit8 v0, v1, 0x2

    mul-int/lit8 v0, v0, 0x1d

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x74

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x6

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x6

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x74

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    sub-int/2addr v2, v3

    invoke-virtual {v9, v0, v2}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 353
    const/16 v0, 0x74

    const/16 v2, 0x74

    invoke-virtual {v9, v0, v2}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 354
    const/16 v0, 0xef

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 356
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v0, v2, :cond_15c

    .line 357
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 358
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 345
    :cond_15c
    add-int/lit8 v1, v1, 0x1

    goto :goto_119

    .line 362
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_15f
    const/4 v1, 0x0

    :goto_160
    if-ge v1, v8, :cond_1ba

    .line 363
    rem-int/lit8 v0, v1, 0x2

    mul-int/lit8 v0, v0, 0x1d

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit8 v2, v1, 0x2

    mul-int/lit8 v2, v2, 0x74

    add-int/2addr v2, v0

    div-int/lit8 v0, v1, 0x2

    mul-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v3, v1, 0x2

    mul-int/lit8 v3, v3, 0x74

    add-int/2addr v0, v3

    iget v3, p0, Lcom/lge/render/GridRenderer;->m_iCurMovingDist:I

    sub-int v3, v0, v3

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, 0xef

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->setPhotoPosition(IIIIII)V

    .line 368
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v0, v2, :cond_19b

    .line 369
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v9

    .line 370
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 371
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 362
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_198
    :goto_198
    add-int/lit8 v1, v1, 0x1

    goto :goto_160

    .line 372
    :cond_19b
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v2, 0x2

    and-int/2addr v0, v2

    const/high16 v2, 0x2

    if-ne v0, v2, :cond_198

    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v2, 0x1

    and-int/2addr v0, v2

    const/high16 v2, 0x1

    if-ne v0, v2, :cond_198

    .line 374
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v9

    .line 375
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    goto :goto_198

    .line 381
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1ba
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_200

    .end local v1           #i:I
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_200

    .line 383
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v11

    .line 384
    .local v11, sparePhoto:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1d1
    if-ge v1, v11, :cond_1e2

    .line 385
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v9

    .line 386
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 387
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d1

    .line 390
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1e2
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v11

    .line 391
    const/4 v1, 0x0

    :goto_1e7
    if-ge v1, v11, :cond_1f8

    .line 392
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v9

    .line 393
    .restart local v9       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 394
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e7

    .line 396
    .end local v9           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1f8
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    .line 406
    .end local v1           #i:I
    .end local v11           #sparePhoto:I
    :cond_200
    const/4 v0, 0x1

    return v0
.end method

.method public setRenderMode(II)V
    .registers 4
    .parameter "mode"
    .parameter "flag"

    .prologue
    .line 433
    const/high16 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 434
    iput p1, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    .line 437
    :goto_6
    return-void

    .line 436
    :cond_7
    iget v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lge/render/GridRenderer;->m_iMode:I

    goto :goto_6
.end method
