.class public Lcom/lge/render/LandScapeRenderer;
.super Ljava/lang/Object;
.source "LandScapeRenderer.java"

# interfaces
.implements Lcom/lge/render/RendererAttribute;


# static fields
.field public static final LAND_ALPHA:I = 0xef

.field public static final PHOTO_HEIGHT:I = 0x74

.field public static final PHOTO_WIDTH:I = 0x74

.field public static final POSITION_Y:I = 0x31

.field public static final SIDE_PADDING:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LAND_RENDERER"


# instance fields
.field private m_RenderListener:Lcom/lge/render/RenderAttListener;

.field private m_bMoveAction:Z

.field private m_iCurMovingDist:I

.field private m_iDrageMoveDistance:I

.field private final m_iMaxSpeed:I

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x41

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMaxSpeed:I

    .line 19
    const/16 v0, 0x3a

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iStandardPx:I

    .line 33
    const/high16 v0, 0x2

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    .line 36
    iput-object p1, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    .line 37
    iput v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    .line 38
    iput v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 39
    iput-boolean v1, p0, Lcom/lge/render/LandScapeRenderer;->m_bMoveAction:Z

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/lge/render/LandScapeRenderer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-boolean p1, p0, Lcom/lge/render/LandScapeRenderer;->m_bMoveAction:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/render/LandScapeRenderer;)Lcom/lge/render/RenderAttListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6
    iget-object v0, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

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

    .line 51
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_15

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 54
    .local v0, dis:F
    const/high16 v2, 0x442f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_15

    move v2, v4

    .line 75
    .end local v0           #dis:F
    :goto_14
    return v2

    .line 57
    :cond_15
    :goto_15
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    .line 58
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    if-nez v2, :cond_15

    .line 59
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    goto :goto_15

    .line 62
    :cond_27
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_4d

    .line 63
    iput v4, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    .line 67
    :goto_2e
    float-to-int v2, p1

    div-int/lit8 v1, v2, 0x5

    .line 68
    .local v1, movingnum:I
    mul-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    .line 70
    const/16 v2, 0x41

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 72
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 73
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 74
    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 75
    const/4 v2, 0x0

    goto :goto_14

    .line 65
    .end local v1           #movingnum:I
    :cond_4d
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    goto :goto_2e
.end method

.method public LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 11
    .parameter "e"
    .parameter "mgr"

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 81
    iget v3, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_49

    .line 82
    iget-boolean v3, p0, Lcom/lge/render/LandScapeRenderer;->m_bMoveAction:Z

    if-nez v3, :cond_49

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/render/LandScapeRenderer;->m_bMoveAction:Z

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 86
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 88
    .local v2, y:I
    invoke-virtual {p2, v1, v2, v6}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 90
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-eqz v0, :cond_49

    .line 91
    invoke-virtual {v0, v5}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 92
    const/16 v3, 0x64

    invoke-virtual {p2, v0, v3, v6}, Lcom/lge/render/PhotoMgr;->setSelectedItem(Lcom/lge/render/FCPhotoItem;II)V

    .line 94
    iget-object v3, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-interface {v3, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v3

    invoke-interface {v3, v5, v6}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 97
    iget-object v3, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v4, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-interface {v4, v7}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V

    .line 101
    if-nez v0, :cond_41

    move v3, v5

    .line 118
    .end local v0           #item:Lcom/lge/render/FCPhotoItem;
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_40
    return v3

    .line 104
    .restart local v0       #item:Lcom/lge/render/FCPhotoItem;
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_41
    new-instance v3, Lcom/lge/render/LandScapeRenderer$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/lge/render/LandScapeRenderer$1;-><init>(Lcom/lge/render/LandScapeRenderer;Lcom/lge/render/PhotoMgr;Landroid/view/MotionEvent;)V

    invoke-virtual {p2, v3}, Lcom/lge/render/PhotoMgr;->addPreOperation(Ljava/lang/Runnable;)V

    .end local v0           #item:Lcom/lge/render/FCPhotoItem;
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_49
    move v3, v5

    .line 118
    goto :goto_40
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

    .line 125
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_10

    move v0, v2

    .line 152
    :goto_f
    return v0

    .line 130
    :cond_10
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3a

    .line 131
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    if-gez v0, :cond_1d

    .line 132
    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 133
    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    .line 136
    :cond_1d
    iput v3, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    .line 146
    :goto_1f
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    .line 148
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 149
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 150
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    move v0, v3

    .line 152
    goto :goto_f

    .line 138
    :cond_3a
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    if-lez v0, :cond_42

    .line 139
    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 140
    iput v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    .line 143
    :cond_42
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    goto :goto_1f
.end method

.method public SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
    .registers 14
    .parameter "x"
    .parameter "y"
    .parameter "mgr"

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x4

    const/4 v6, 0x1

    .line 158
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v6, :cond_10

    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    :cond_10
    move v0, v9

    .line 204
    :goto_11
    return v0

    .line 161
    :cond_12
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 162
    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {p3, v0, v3, v2}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 165
    .local v8, item:Lcom/lge/render/FCPhotoItem;
    if-nez v8, :cond_1f

    move v0, v6

    .line 166
    goto :goto_11

    .line 169
    :cond_1f
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v3, 0x1

    if-ne v0, v3, :cond_42

    .line 170
    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {v8, v0, v3}, Lcom/lge/render/FCPhotoItem;->getBtnClick(II)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 171
    invoke-virtual {p3, v8, v2}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v1

    .line 173
    .local v1, itemidx:I
    invoke-virtual {v8}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v3

    new-instance v5, Lcom/lge/render/LandScapeRenderer$2;

    invoke-direct {v5, p0}, Lcom/lge/render/LandScapeRenderer$2;-><init>(Lcom/lge/render/LandScapeRenderer;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->prepareErasePhoto(IIJLjava/lang/Runnable;Z)V

    move v0, v9

    .line 187
    goto :goto_11

    .end local v1           #itemidx:I
    :cond_40
    move v0, v6

    .line 190
    goto :goto_11

    .line 193
    :cond_42
    const/16 v0, 0x63

    invoke-virtual {p3, v8, v0, v2}, Lcom/lge/render/PhotoMgr;->setSelectedItem(Lcom/lge/render/FCPhotoItem;II)V

    .line 195
    const/4 v7, 0x4

    .line 196
    .local v7, flag:I
    shl-int/lit8 v7, v7, 0x8

    .line 197
    or-int/lit8 v7, v7, 0x4

    .line 199
    iget-object v0, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    const/16 v3, 0x101

    invoke-interface {v0, p0, v2, v3, v7}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    move v0, v9

    .line 204
    goto :goto_11
.end method

.method public TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "mgr"
    .parameter "PressOrUp"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    if-nez p4, :cond_a

    .line 212
    iget-object v1, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4}, Lcom/lge/render/RenderAttListener;->setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V

    .line 214
    :cond_a
    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_2e

    .line 215
    if-eqz p4, :cond_16

    .line 216
    iput v4, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    :cond_14
    :goto_14
    move v1, v4

    .line 242
    :goto_15
    return v1

    .line 218
    :cond_16
    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_14

    .line 220
    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 221
    iput v4, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    .line 222
    iput v4, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    .line 223
    iput v4, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 224
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->onMoveStop()V

    goto :goto_14

    .line 226
    :cond_2e
    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 227
    if-eqz p4, :cond_14

    .line 228
    float-to-int v1, p1

    float-to-int v2, p2

    const/4 v3, 0x4

    invoke-virtual {p3, v1, v2, v3}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 231
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-nez v0, :cond_41

    move v1, v5

    .line 232
    goto :goto_15

    .line 234
    :cond_41
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->getBtnClick(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 235
    iget-object v1, p0, Lcom/lge/render/LandScapeRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getButton()Lcom/lge/render/FCBtnItem;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/lge/render/RenderAttListener;->setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V

    move v1, v4

    .line 238
    goto :goto_15
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 394
    const/4 v0, 0x4

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 400
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    return v0
.end method

.method public getMovingDistance()F
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    int-to-float v0, v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    const-string v0, "LAND_RENDERER"

    return-object v0
.end method

.method public initMovingDistance()V
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    .line 422
    return-void
.end method

.method public initailRender(Lcom/lge/render/PhotoMgr;)V
    .registers 4
    .parameter "mgr"

    .prologue
    const/4 v1, 0x0

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lge/render/PhotoMgr;->setDrawShadow(Z)V

    .line 387
    iput v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 388
    iput-boolean v1, p0, Lcom/lge/render/LandScapeRenderer;->m_bMoveAction:Z

    .line 389
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 16
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 248
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1c

    .line 250
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    .line 251
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iDrageMoveDistance:I

    .line 253
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    const/16 v1, 0x5a

    if-le v0, v1, :cond_4b

    .line 254
    const/16 v0, 0x5a

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 260
    :cond_1c
    :goto_1c
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    .line 261
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    .line 263
    :goto_30
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    const/16 v1, 0x3a

    if-le v0, v1, :cond_72

    .line 265
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 277
    :cond_41
    :goto_41
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/lit8 v1, v1, 0x76

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    goto :goto_30

    .line 256
    :cond_4b
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    goto :goto_1c

    .line 268
    :cond_53
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lcom/lge/render/PhotoMgr;->onMovePhoto(II)Z

    move-result v0

    if-nez v0, :cond_41

    .line 270
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_6e

    .line 271
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    .line 272
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    goto :goto_41

    .line 274
    :cond_6e
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    goto :goto_41

    .line 281
    :cond_72
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/2addr v0, v1

    if-gtz v0, :cond_98

    .line 282
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_98

    .line 283
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    if-nez v0, :cond_134

    .line 284
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    if-eqz v0, :cond_8f

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 286
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->onMoveStop()V

    .line 288
    :cond_8f
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    .line 311
    :cond_98
    :goto_98
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v9

    .line 312
    .local v9, leftListSize:I
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v10

    .line 313
    .local v10, rightListSize:I
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v7

    .line 314
    .local v7, dispListSize:I
    const/16 v12, 0x76

    .line 316
    .local v12, term:I
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getContactsCnt()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_b3

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 321
    :cond_b3
    if-lez v9, :cond_df

    .line 322
    const/4 v0, 0x1

    sub-int v0, v9, v0

    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 324
    .local v8, item:Lcom/lge/render/FCPhotoItem;
    neg-int v0, v12

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    sub-int/2addr v0, v1

    const/16 v1, 0x31

    invoke-virtual {v8, v0, v1}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 325
    const/16 v0, 0x74

    const/16 v1, 0x74

    invoke-virtual {v8, v0, v1}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 326
    const/16 v0, 0xef

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 327
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_df

    .line 328
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 329
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 333
    .end local v8           #item:Lcom/lge/render/FCPhotoItem;
    :cond_df
    if-lez v10, :cond_10a

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 336
    .restart local v8       #item:Lcom/lge/render/FCPhotoItem;
    mul-int v0, v12, v7

    iget v1, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    sub-int/2addr v0, v1

    const/16 v1, 0x31

    invoke-virtual {v8, v0, v1}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 338
    const/16 v0, 0x74

    const/16 v1, 0x74

    invoke-virtual {v8, v0, v1}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 339
    const/16 v0, 0xef

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setAlpha(I)V

    .line 340
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_10a

    .line 341
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 342
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 346
    .end local v8           #item:Lcom/lge/render/FCPhotoItem;
    :cond_10a
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10b
    if-ge v1, v7, :cond_17b

    .line 347
    mul-int v0, v1, v12

    iget v2, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    sub-int v2, v0, v2

    const/16 v3, 0x31

    const/16 v4, 0x74

    const/16 v5, 0x74

    const/16 v6, 0xef

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->setPhotoPosition(IIIIII)V

    .line 350
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v0, v2, :cond_15c

    .line 351
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 352
    .restart local v8       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 353
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 346
    .end local v8           #item:Lcom/lge/render/FCPhotoItem;
    :cond_131
    :goto_131
    add-int/lit8 v1, v1, 0x1

    goto :goto_10b

    .line 292
    .end local v1           #i:I
    .end local v7           #dispListSize:I
    .end local v9           #leftListSize:I
    .end local v10           #rightListSize:I
    .end local v12           #term:I
    :cond_134
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_147

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    .line 296
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    goto/16 :goto_98

    .line 298
    :cond_147
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iNowState:I

    .line 299
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iCurMovingDist:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMoveDistance:I

    .line 300
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMovingVector:I

    .line 301
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iSpeed:I

    goto/16 :goto_98

    .line 354
    .restart local v1       #i:I
    .restart local v7       #dispListSize:I
    .restart local v9       #leftListSize:I
    .restart local v10       #rightListSize:I
    .restart local v12       #term:I
    :cond_15c
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v2, 0x2

    and-int/2addr v0, v2

    const/high16 v2, 0x2

    if-ne v0, v2, :cond_131

    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v2, 0x1

    and-int/2addr v0, v2

    const/high16 v2, 0x1

    if-ne v0, v2, :cond_131

    .line 356
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 357
    .restart local v8       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 358
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    goto :goto_131

    .line 362
    .end local v8           #item:Lcom/lge/render/FCPhotoItem;
    :cond_17b
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_1c1

    .end local v1           #i:I
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_1c1

    .line 364
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v11

    .line 365
    .local v11, sparePhoto:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_192
    if-ge v1, v11, :cond_1a3

    .line 366
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 367
    .restart local v8       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_192

    .line 371
    .end local v8           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1a3
    invoke-virtual {p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v11

    .line 372
    const/4 v1, 0x0

    :goto_1a8
    if-ge v1, v11, :cond_1b9

    .line 373
    invoke-virtual {p2, v1}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 374
    .restart local v8       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 375
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a8

    .line 377
    .end local v8           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1b9
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    .line 380
    .end local v1           #i:I
    .end local v11           #sparePhoto:I
    :cond_1c1
    const/4 v0, 0x1

    return v0
.end method

.method public setRenderMode(II)V
    .registers 4
    .parameter "mode"
    .parameter "flag"

    .prologue
    .line 406
    const/high16 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 407
    iput p1, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    .line 410
    :goto_6
    return-void

    .line 409
    :cond_7
    iget v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lge/render/LandScapeRenderer;->m_iMode:I

    goto :goto_6
.end method
