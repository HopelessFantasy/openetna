.class public Lcom/lge/render/WheelRenderer;
.super Ljava/lang/Object;
.source "WheelRenderer.java"

# interfaces
.implements Lcom/lge/render/RendererAttribute;


# static fields
.field public static final CENTER_PHOTO_HEIGHT:I = 0x80

.field public static final CENTER_PHOTO_WIDTH:I = 0x80

.field public static final DRAW_SLANT:I = 0x19a1

.field private static SETTING_VERTEXES:[I = null

.field public static final TAG:Ljava/lang/String; = "WHEEL_RENDERER"

.field public static final WHEEL_RADIUS_S:F = 57600.0f

.field public static final WHEEL_VERTEX_RATE:I = 0x30


# instance fields
.field private m_CenterIdx:I

.field private m_DispCount:I

.field m_RenderListener:Lcom/lge/render/RenderAttListener;

.field private m_fCurMovingDist:F

.field private m_fMaxSpeed:F

.field private final m_fMinSpeed:F

.field private m_fMoveDistance:F

.field private m_fMovingWeight:F

.field private m_fSpeed:F

.field private m_fStandardWeight:F

.field private m_iMode:I

.field private m_iMovingVector:I

.field private m_iNowState:I


# direct methods
.method public constructor <init>(Lcom/lge/render/RenderAttListener;)V
    .registers 5
    .parameter "elRender"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fMaxSpeed:F

    .line 23
    const v0, 0x3e99999a

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fMinSpeed:F

    .line 34
    const/high16 v0, 0x2

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    .line 39
    iput-object p1, p0, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    .line 41
    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 42
    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 43
    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fMovingWeight:F

    .line 44
    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 45
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 47
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 48
    return-void
.end method

.method public static getSettingVertexes(II)[I
    .registers 5
    .parameter "dispcnt"
    .parameter "centeridx"

    .prologue
    .line 419
    new-array v1, p0, [I

    sput-object v1, Lcom/lge/render/WheelRenderer;->SETTING_VERTEXES:[I

    .line 421
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p0, :cond_10

    .line 422
    sget-object v1, Lcom/lge/render/WheelRenderer;->SETTING_VERTEXES:[I

    sub-int v2, p1, v0

    aput v2, v1, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 424
    :cond_10
    sget-object v1, Lcom/lge/render/WheelRenderer;->SETTING_VERTEXES:[I

    return-object v1
.end method


# virtual methods
.method public FlingTouch(FFLcom/lge/render/PhotoMgr;)Z
    .registers 10
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "mgr"

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x4120

    const/4 v4, 0x0

    .line 60
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 61
    .local v0, dis:F
    const/high16 v2, 0x4416

    cmpg-float v2, v0, v2

    if-gez v2, :cond_10

    move v2, v3

    .line 99
    :goto_f
    return v2

    .line 65
    :cond_10
    cmpg-float v2, p2, v4

    if-gtz v2, :cond_3f

    .line 66
    iput v3, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 71
    :goto_16
    const v2, 0x45034000

    cmpg-float v2, v0, v2

    if-gez v2, :cond_43

    .line 72
    const v2, 0x3e99999a

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 73
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    int-to-float v2, v2

    const v3, 0x3ba3d70a

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 95
    :goto_2b
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 96
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 97
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 99
    const/4 v2, 0x0

    goto :goto_f

    .line 68
    :cond_3f
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    goto :goto_16

    .line 75
    :cond_43
    :goto_43
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_57

    .line 76
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_43

    .line 77
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    goto :goto_43

    .line 81
    :cond_57
    float-to-int v2, p2

    div-int/lit16 v1, v2, 0x12c

    .line 82
    .local v1, movingnum:I
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    neg-int v2, v2

    mul-int/2addr v2, v1

    int-to-float v2, v2

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 84
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fMovingWeight:F

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fStandardWeight:F

    .line 86
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_72

    .line 87
    iput v5, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 90
    :cond_72
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    iget v3, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 92
    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_fMaxSpeed:F

    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    goto :goto_2b
.end method

.method public LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 105
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 106
    const/4 v0, 0x1

    .line 108
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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

    .line 115
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_10

    .line 117
    const/4 v0, 0x0

    .line 146
    :goto_f
    return v0

    .line 119
    :cond_10
    cmpl-float v0, p2, v2

    if-lez v0, :cond_52

    .line 120
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    if-gez v0, :cond_1c

    .line 121
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 122
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 125
    :cond_1c
    iput v3, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 135
    :goto_1e
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    const/high16 v1, 0x4240

    div-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 136
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 139
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_fMaxSpeed:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3e

    .line 140
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fMaxSpeed:F

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 142
    :cond_3e
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 143
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 144
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v0, v3

    .line 146
    goto :goto_f

    .line 127
    :cond_52
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    if-lez v0, :cond_5a

    .line 128
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 129
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 132
    :cond_5a
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    goto :goto_1e
.end method

.method public SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "mgr"

    .prologue
    const-wide v10, 0x3f747ae147ae147bL

    const/4 v9, 0x0

    const/4 v2, 0x2

    const/4 v6, 0x1

    .line 152
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v6, :cond_14

    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_16

    :cond_14
    move v0, v9

    .line 221
    :goto_15
    return v0

    .line 155
    :cond_16
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 156
    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {p3, v0, v3, v2}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v8

    .line 159
    .local v8, item:Lcom/lge/render/FCPhotoItem;
    if-nez v8, :cond_23

    move v0, v6

    .line 160
    goto :goto_15

    .line 163
    :cond_23
    invoke-virtual {p3, v8, v2}, Lcom/lge/render/PhotoMgr;->getItemIndex(Lcom/lge/render/FCPhotoItem;I)I

    move-result v1

    .line 166
    .local v1, itemidx:I
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v0

    if-ne v1, v0, :cond_67

    .line 167
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    const/high16 v3, 0x1

    if-ne v0, v3, :cond_4c

    .line 168
    float-to-int v0, p1

    float-to-int v3, p2

    invoke-virtual {v8, v0, v3}, Lcom/lge/render/FCPhotoItem;->getBtnClick(II)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 169
    invoke-virtual {v8}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v3

    new-instance v5, Lcom/lge/render/WheelRenderer$1;

    invoke-direct {v5, p0}, Lcom/lge/render/WheelRenderer$1;-><init>(Lcom/lge/render/WheelRenderer;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Lcom/lge/render/PhotoMgr;->prepareErasePhoto(IIJLjava/lang/Runnable;Z)V

    move v0, v9

    .line 184
    goto :goto_15

    :cond_4a
    move v0, v6

    .line 187
    goto :goto_15

    .line 189
    :cond_4c
    const/16 v0, 0x63

    invoke-virtual {p3, v8, v0, v2}, Lcom/lge/render/PhotoMgr;->setSelectedItem(Lcom/lge/render/FCPhotoItem;II)V

    .line 191
    const/4 v7, 0x2

    .line 192
    .local v7, flag:I
    shl-int/lit8 v7, v7, 0x8

    .line 193
    or-int/lit8 v7, v7, 0x2

    .line 195
    iget-object v0, p0, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    const/16 v3, 0x101

    invoke-interface {v0, p0, v2, v3, v7}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    move v0, v9

    .line 200
    goto :goto_15

    .line 204
    .end local v7           #flag:I
    :cond_67
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_6f

    move v0, v6

    .line 205
    goto :goto_15

    .line 209
    :cond_6f
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 210
    const v0, 0x3e99999a

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 211
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_92

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 213
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    float-to-double v3, v0

    sub-double/2addr v3, v10

    double-to-float v0, v3

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 219
    :goto_8e
    iput v2, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v0, v6

    .line 221
    goto :goto_15

    .line 215
    :cond_92
    iput v6, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 216
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    float-to-double v3, v0

    add-double/2addr v3, v10

    double-to-float v0, v3

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    goto :goto_8e
.end method

.method public TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "mgr"
    .parameter "PressOrUp"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    if-nez p4, :cond_b

    .line 228
    iget-object v1, p0, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4}, Lcom/lge/render/RenderAttListener;->setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V

    .line 231
    :cond_b
    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_3b

    .line 232
    if-eqz p4, :cond_18

    .line 233
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    :cond_16
    :goto_16
    move v1, v3

    .line 260
    :goto_17
    return v1

    .line 234
    :cond_18
    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_16

    .line 235
    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 236
    iput v5, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 238
    const/high16 v1, -0x4080

    iget v2, p0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 239
    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    mul-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 240
    const v1, 0x3e99999a

    iput v1, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    goto :goto_16

    .line 242
    :cond_3b
    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 243
    if-eqz p4, :cond_16

    .line 244
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {p3, v1, v2, v5}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    .line 246
    .local v0, item:Lcom/lge/render/FCPhotoItem;
    if-nez v0, :cond_4d

    move v1, v4

    .line 247
    goto :goto_17

    .line 250
    :cond_4d
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->getBtnClick(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 253
    iget-object v1, p0, Lcom/lge/render/WheelRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getButton()Lcom/lge/render/FCBtnItem;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/lge/render/RenderAttListener;->setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V

    move v1, v3

    .line 256
    goto :goto_17
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x2

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    return v0
.end method

.method public getMovingDistance()F
    .registers 2

    .prologue
    .line 456
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    const-string v0, "WHEEL_RENDERER"

    return-object v0
.end method

.method public initMovingDistance()V
    .registers 2

    .prologue
    .line 462
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 463
    return-void
.end method

.method public initailRender(Lcom/lge/render/PhotoMgr;)V
    .registers 4
    .parameter "mgr"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v0

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_DispCount:I

    .line 410
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v0

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_CenterIdx:I

    .line 412
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_DispCount:I

    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_CenterIdx:I

    invoke-static {v0, v1}, Lcom/lge/render/WheelRenderer;->getSettingVertexes(II)[I

    .line 414
    const v0, 0x3f19999a

    iget v1, p0, Lcom/lge/render/WheelRenderer;->m_DispCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4110

    div-float/2addr v0, v1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fMaxSpeed:F

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 416
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 23
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v3, v0

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_1ff

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    move v3, v0

    const v4, 0x3dcccccd

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4b

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 271
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 279
    :cond_4b
    :goto_4b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_DispCount:I

    move v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_65

    .line 280
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 281
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 282
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 285
    :cond_65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b5

    .line 287
    const-string v3, "WheelRenderer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  === Drag Point === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v3, v0

    const/4 v4, 0x2

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/PhotoMgr;->onMovePhoto(II)Z

    .line 290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v3, v0

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 293
    :cond_b5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_fd

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v3, v0

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-eq v3, v4, :cond_fd

    .line 295
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_22f

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v3, v0

    if-eqz v3, :cond_e5

    .line 297
    invoke-virtual/range {p2 .. p2}, Lcom/lge/render/PhotoMgr;->onMoveStop()V

    .line 299
    :cond_e5
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 300
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 301
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    .line 302
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 319
    :cond_fd
    :goto_fd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v3, v0

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_140

    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMaxSpeed:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMovingWeight:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fStandardWeight:F

    move v5, v0

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    const v4, 0x3e99999a

    cmpg-float v3, v3, v4

    if-gez v3, :cond_276

    const v3, 0x3e99999a

    :goto_128
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMovingWeight:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMovingWeight:F

    move v4, v0

    const/high16 v5, 0x41d0

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fMovingWeight:F

    .line 332
    :cond_140
    const/4 v4, 0x0

    .local v4, i:I
    :goto_141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_DispCount:I

    move v3, v0

    if-ge v4, v3, :cond_2bc

    .line 333
    sget-object v3, Lcom/lge/render/WheelRenderer;->SETTING_VERTEXES:[I

    aget v3, v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v5, v0

    add-float v11, v3, v5

    .line 334
    .local v11, checkpx:F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 335
    .local v18, settingpx:F
    const/high16 v3, 0x4300

    const/high16 v5, 0x4120

    sub-float v5, v5, v18

    mul-float/2addr v3, v5

    const/high16 v5, 0x4120

    div-float/2addr v3, v5

    float-to-int v7, v3

    .line 336
    .local v7, size:I
    div-int/lit8 v12, v7, 0x2

    .line 338
    .local v12, halfsize:I
    const/high16 v3, 0x40a0

    sub-float v13, v3, v18

    .line 339
    .local v13, inversepx:F
    const/4 v3, 0x0

    cmpg-float v3, v13, v3

    if-gez v3, :cond_16f

    .line 340
    const/4 v13, 0x0

    .line 343
    :cond_16f
    const v3, 0x45cd0800

    mul-float v5, v13, v18

    const/high16 v6, 0x40a0

    sub-float v6, v6, v18

    mul-float/2addr v5, v6

    const/high16 v6, 0x4218

    div-float/2addr v5, v6

    sub-float v5, v18, v5

    mul-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 345
    .local v16, positionY:D
    const/high16 v3, 0x4761

    mul-float v5, v18, v18

    const/high16 v6, 0x4240

    mul-float/2addr v5, v6

    const/high16 v6, 0x4240

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v3, v5

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    const/high16 v5, 0x41d8

    mul-float v5, v5, v18

    const/high16 v6, 0x40a0

    sub-float v6, v6, v18

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int v15, v3, v5

    .line 349
    .local v15, positionX:I
    const/4 v3, 0x0

    cmpg-float v3, v11, v3

    if-gez v3, :cond_27d

    .line 357
    :cond_1b2
    :goto_1b2
    sget-object v3, Lcom/lge/render/WheelRenderer;->SETTING_VERTEXES:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 358
    .local v10, alphaVaule:I
    mul-int v3, v10, v10

    div-int/lit8 v10, v3, 0x2

    .line 359
    const/16 v9, 0xff

    .line 360
    .local v9, alpha:I
    mul-int v3, v9, v10

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v9, v3

    .line 362
    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterX()I

    move-result v3

    add-int/2addr v3, v15

    sub-int v5, v3, v12

    invoke-static {}, Lcom/lge/render/EssentialRenderer;->getCenterY()I

    move-result v3

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v6, v0

    add-int/2addr v3, v6

    sub-int v6, v3, v12

    move-object/from16 v3, p2

    move v8, v7

    invoke-virtual/range {v3 .. v9}, Lcom/lge/render/PhotoMgr;->setPhotoPosition(IIIIII)V

    .line 366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    move v3, v0

    const/high16 v5, 0x1

    if-ne v3, v5, :cond_293

    .line 367
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v14

    .line 368
    .local v14, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual/range {p2 .. p2}, Lcom/lge/render/PhotoMgr;->getCenterIdx()I

    move-result v3

    if-ne v4, v3, :cond_289

    .line 369
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 370
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 332
    .end local v14           #item:Lcom/lge/render/FCPhotoItem;
    :cond_1fb
    :goto_1fb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_141

    .line 274
    .end local v4           #i:I
    .end local v7           #size:I
    .end local v9           #alpha:I
    .end local v10           #alphaVaule:I
    .end local v11           #checkpx:F
    .end local v12           #halfsize:I
    .end local v13           #inversepx:F
    .end local v15           #positionX:I
    .end local v16           #positionY:D
    .end local v18           #settingpx:F
    :cond_1ff
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    goto/16 :goto_4b

    .line 304
    :cond_22f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    move v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_24b

    .line 305
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    .line 306
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    .line 307
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    goto/16 :goto_fd

    .line 309
    :cond_24b
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_iNowState:I

    .line 310
    const/high16 v3, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fCurMovingDist:F

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMovingVector:I

    move v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fMoveDistance:F

    .line 312
    const v3, 0x3e99999a

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    goto/16 :goto_fd

    .line 320
    :cond_276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_fSpeed:F

    move v3, v0

    goto/16 :goto_128

    .line 351
    .restart local v4       #i:I
    .restart local v7       #size:I
    .restart local v11       #checkpx:F
    .restart local v12       #halfsize:I
    .restart local v13       #inversepx:F
    .restart local v15       #positionX:I
    .restart local v16       #positionY:D
    .restart local v18       #settingpx:F
    :cond_27d
    const/4 v3, 0x0

    cmpl-float v3, v11, v3

    if-lez v3, :cond_1b2

    .line 352
    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_1b2

    .line 372
    .restart local v9       #alpha:I
    .restart local v10       #alphaVaule:I
    .restart local v14       #item:Lcom/lge/render/FCPhotoItem;
    :cond_289
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 373
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    goto/16 :goto_1fb

    .line 375
    .end local v14           #item:Lcom/lge/render/FCPhotoItem;
    :cond_293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    move v3, v0

    const/high16 v5, 0x2

    and-int/2addr v3, v5

    const/high16 v5, 0x2

    if-ne v3, v5, :cond_1fb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    move v3, v0

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    const/high16 v5, 0x1

    if-ne v3, v5, :cond_1fb

    .line 377
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v14

    .line 378
    .restart local v14       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 379
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    goto/16 :goto_1fb

    .line 384
    .end local v7           #size:I
    .end local v9           #alpha:I
    .end local v10           #alphaVaule:I
    .end local v11           #checkpx:F
    .end local v12           #halfsize:I
    .end local v13           #inversepx:F
    .end local v14           #item:Lcom/lge/render/FCPhotoItem;
    .end local v15           #positionX:I
    .end local v16           #positionY:D
    .end local v18           #settingpx:F
    :cond_2bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    move v3, v0

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_31a

    .end local v4           #i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    move v3, v0

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    const/high16 v4, 0x1

    if-ne v3, v4, :cond_31a

    .line 386
    invoke-virtual/range {p2 .. p2}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v19

    .line 387
    .local v19, sparePhoto:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2d9
    move v0, v4

    move/from16 v1, v19

    if-ge v0, v1, :cond_2f0

    .line 388
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v14

    .line 389
    .restart local v14       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 390
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d9

    .line 393
    .end local v14           #item:Lcom/lge/render/FCPhotoItem;
    :cond_2f0
    invoke-virtual/range {p2 .. p2}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v19

    .line 394
    const/4 v4, 0x0

    :goto_2f5
    move v0, v4

    move/from16 v1, v19

    if-ge v0, v1, :cond_30c

    .line 395
    move-object/from16 v0, p2

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v14

    .line 396
    .restart local v14       #item:Lcom/lge/render/FCPhotoItem;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnEnable(Z)V

    .line 397
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Lcom/lge/render/FCPhotoItem;->setBtnVisible(Z)V

    .line 394
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f5

    .line 399
    .end local v14           #item:Lcom/lge/render/FCPhotoItem;
    :cond_30c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    move v3, v0

    const v4, -0x10001

    and-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/render/WheelRenderer;->m_iMode:I

    .line 402
    .end local v4           #i:I
    .end local v19           #sparePhoto:I
    :cond_31a
    const/4 v3, 0x1

    return v3
.end method

.method public setRenderMode(II)V
    .registers 4
    .parameter "mode"
    .parameter "flag"

    .prologue
    .line 442
    const/high16 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 443
    iput p1, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    .line 447
    :goto_6
    return-void

    .line 445
    :cond_7
    iget v0, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/lge/render/WheelRenderer;->m_iMode:I

    goto :goto_6
.end method
