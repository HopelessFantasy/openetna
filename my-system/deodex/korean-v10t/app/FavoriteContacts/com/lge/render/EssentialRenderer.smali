.class public Lcom/lge/render/EssentialRenderer;
.super Ljava/lang/Object;
.source "EssentialRenderer.java"

# interfaces
.implements Lcom/lge/favoritecontacts/FavoriteContactsView$FCRenderer;
.implements Lcom/lge/render/RenderAttListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/render/EssentialRenderer$RenderBackground;
    }
.end annotation


# static fields
.field private static CENTER_PIXEL_X:I = 0x0

.field private static CENTER_PIXEL_Y:I = 0x0

.field public static final MODE_CHANGE_RENDERER:I = 0x8

.field public static final MODE_CREATE:I = 0x4

.field public static final MODE_CREATE_GRID:I = 0x6

.field public static final MODE_CREATE_LAND:I = 0x5

.field public static final MODE_CREATE_WHEEL:I = 0x4

.field public static final MODE_DEFAULT:I = 0x20000

.field public static final MODE_DIS_SELECTED_ITEM:I = 0x102

.field public static final MODE_EDIT:I = 0x10000

.field public static final MODE_EREASE_CONTACT:I = 0x10200

.field public static final MODE_GRID_TO_WHEEL:I = 0x9

.field public static final MODE_MOVE:I = 0x40000

.field public static final MODE_NOTHING:I = 0x0

.field public static final MODE_SELECT:I = 0x100

.field public static final MODE_SELECTED_ITEM:I = 0x101

.field public static final MODE_WHEEL_TO_GRID:I = 0xa

.field private static POPUP_RECT:Landroid/graphics/Rect; = null

.field public static final RENDERING_CHANGEORDERRENDER:I = 0x10

.field public static final RENDERING_EFFECTRENDER:I = 0x8

.field public static final RENDERING_GRIDRENDER:I = 0x1

.field public static final RENDERING_LANDRENDER:I = 0x4

.field public static final RENDERING_NORENDER:I = 0x0

.field public static final RENDERING_WHEELRENDER:I = 0x2

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDHT:I


# instance fields
.field private m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

.field private m_ChangeOrderRenderer:Lcom/lge/render/RendererAttribute;

.field private m_EffectRenderer:Lcom/lge/render/RendererAttribute;

.field private m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

.field private m_GridRenderer:Lcom/lge/render/RendererAttribute;

.field private m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

.field private m_NoRenderer:Lcom/lge/render/RendererAttribute;

.field private m_NowRenderer:Lcom/lge/render/RendererAttribute;

.field private m_PressedPhotoBtn:Lcom/lge/render/FCBtnItem;

.field private m_WheelRenderer:Lcom/lge/render/RendererAttribute;

.field private m_bRunAssignFavorite:Z

.field protected pm_PhotoMgr:Lcom/lge/render/PhotoMgr;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 51
    const/16 v0, 0xa0

    sput v0, Lcom/lge/render/EssentialRenderer;->CENTER_PIXEL_X:I

    .line 53
    const/16 v0, 0xc8

    sput v0, Lcom/lge/render/EssentialRenderer;->CENTER_PIXEL_Y:I

    .line 56
    sput v1, Lcom/lge/render/EssentialRenderer;->SCREEN_WIDHT:I

    .line 57
    sput v1, Lcom/lge/render/EssentialRenderer;->SCREEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/favoritecontacts/FavoriteContacts;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    .line 79
    new-instance v0, Lcom/lge/render/GridRenderer;

    invoke-direct {v0, p0}, Lcom/lge/render/GridRenderer;-><init>(Lcom/lge/render/RenderAttListener;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    .line 80
    new-instance v0, Lcom/lge/render/WheelRenderer;

    invoke-direct {v0, p0}, Lcom/lge/render/WheelRenderer;-><init>(Lcom/lge/render/RenderAttListener;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    .line 81
    new-instance v0, Lcom/lge/render/EffectRenderer;

    invoke-direct {v0, p0}, Lcom/lge/render/EffectRenderer;-><init>(Lcom/lge/render/RenderAttListener;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    .line 82
    new-instance v0, Lcom/lge/render/LandScapeRenderer;

    invoke-direct {v0, p0}, Lcom/lge/render/LandScapeRenderer;-><init>(Lcom/lge/render/RenderAttListener;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

    .line 83
    new-instance v0, Lcom/lge/render/ChangeOrderRenderer;

    invoke-direct {v0, p0}, Lcom/lge/render/ChangeOrderRenderer;-><init>(Lcom/lge/render/RenderAttListener;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_ChangeOrderRenderer:Lcom/lge/render/RendererAttribute;

    .line 84
    new-instance v0, Lcom/lge/render/NoRender;

    invoke-direct {v0}, Lcom/lge/render/NoRender;-><init>()V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NoRenderer:Lcom/lge/render/RendererAttribute;

    .line 85
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NoRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/lge/render/EssentialRenderer;->POPUP_RECT:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-direct {v0, p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;-><init>(Lcom/lge/render/EssentialRenderer;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    .line 90
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->setBackGroundDefault()V

    .line 91
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setVisible(Z)V

    .line 92
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v0, v2}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setEnable(Z)V

    .line 93
    iput-boolean v2, p0, Lcom/lge/render/EssentialRenderer;->m_bRunAssignFavorite:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/lge/render/EssentialRenderer;)Lcom/lge/favoritecontacts/FavoriteContacts;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/render/EssentialRenderer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/lge/render/EssentialRenderer;->m_bRunAssignFavorite:Z

    return p1
.end method

.method public static getCenterX()I
    .registers 1

    .prologue
    .line 101
    sget v0, Lcom/lge/render/EssentialRenderer;->CENTER_PIXEL_X:I

    return v0
.end method

.method public static getCenterY()I
    .registers 1

    .prologue
    .line 105
    sget v0, Lcom/lge/render/EssentialRenderer;->CENTER_PIXEL_Y:I

    return v0
.end method

.method public static final getPopupRect()Landroid/graphics/Rect;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/lge/render/EssentialRenderer;->POPUP_RECT:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public ChangeMode(Lcom/lge/render/RendererAttribute;I)V
    .registers 4
    .parameter "nowRender"
    .parameter "ChangedMode"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    .line 318
    return-void
.end method

.method public ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;)V
    .registers 4
    .parameter "nowRender"
    .parameter "newRender"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    .line 326
    invoke-virtual {p0, p2}, Lcom/lge/render/EssentialRenderer;->setRendererAtt(Lcom/lge/render/RendererAttribute;)V

    .line 327
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->init()V

    .line 329
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->isNoFave()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 330
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v0}, Lcom/lge/favoritecontacts/FavoriteContacts;->popupNoFaveContactState()V

    .line 333
    :cond_18
    return-void
.end method

.method public ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V
    .registers 6
    .parameter "nowRender"
    .parameter "newRender"
    .parameter "Mode"
    .parameter "flag"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v0}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    .line 341
    invoke-virtual {p0, p2}, Lcom/lge/render/EssentialRenderer;->setRendererAtt(Lcom/lge/render/RendererAttribute;)V

    .line 342
    invoke-interface {p2, p3, p4}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 344
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->init()V

    .line 346
    return-void
.end method

.method public changedOrientation(I)V
    .registers 7
    .parameter "ORI_FLAG"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v0, p1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setBtnSize(I)V

    .line 231
    packed-switch p1, :pswitch_data_36

    .line 241
    :goto_8
    return-void

    .line 233
    :pswitch_9
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getBottomPortShadeImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setShade(Landroid/graphics/Bitmap;)V

    .line 234
    sget-object v0, Lcom/lge/render/EssentialRenderer;->POPUP_RECT:Landroid/graphics/Rect;

    const/4 v1, 0x3

    const/16 v2, 0x6c

    const/16 v3, 0x135

    const/16 v4, 0x1ac

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    .line 237
    :pswitch_1f
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getBottomLandShadeImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setShade(Landroid/graphics/Bitmap;)V

    .line 238
    sget-object v0, Lcom/lge/render/EssentialRenderer;->POPUP_RECT:Landroid/graphics/Rect;

    const/16 v1, 0x74

    const/4 v2, 0x0

    const/16 v3, 0x16c

    const/16 v4, 0x101

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_8

    .line 231
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1f
    .end packed-switch
.end method

.method public completeRenderAtt(Lcom/lge/render/PhotoMgr;)V
    .registers 3
    .parameter "mgr"

    .prologue
    .line 282
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    .line 283
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 284
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->init()V

    .line 285
    return-void
.end method

.method public finishedRender(Lcom/lge/render/RendererAttribute;II)V
    .registers 11
    .parameter "nowRender"
    .parameter "renderMode"
    .parameter "flag"

    .prologue
    const/16 v6, 0x102

    .line 352
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v3}, Lcom/lge/render/PhotoMgr;->onDrawInit()V

    .line 354
    invoke-interface {p1}, Lcom/lge/render/RendererAttribute;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, tag:Ljava/lang/String;
    const-string v3, "EFFECT_RENDERER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 357
    const/16 v3, 0x101

    if-ne p2, v3, :cond_5a

    .line 359
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    const-class v4, Lcom/lge/favoritecontacts/FavoritePopup;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v3}, Lcom/lge/render/PhotoMgr;->getSelectedItem()Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 362
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    const-string v3, "people_id"

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getUID()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    const-string v3, "people_name"

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v3, "photo"

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 365
    const-string v3, "loaded"

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->isLoaded()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->setDetailpopup_startActivity_status()V

    .line 368
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v0, v4}, Lcom/lge/favoritecontacts/FavoriteContacts;->prepareStartApp(Landroid/content/Intent;I)V

    .line 370
    invoke-interface {p1, v6, p3}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 384
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_59
    :goto_59
    return-void

    .line 375
    :cond_5a
    if-eq p2, v6, :cond_59

    .line 378
    and-int/lit8 v3, p2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_59

    .line 379
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v3, p3}, Lcom/lge/render/PhotoMgr;->ChangedRender(I)V

    goto :goto_59
.end method

.method public getRenderAtt(I)Lcom/lge/render/RendererAttribute;
    .registers 3
    .parameter "flag"

    .prologue
    .line 389
    sparse-switch p1, :sswitch_data_16

    .line 401
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NoRenderer:Lcom/lge/render/RendererAttribute;

    :goto_5
    return-object v0

    .line 391
    :sswitch_6
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    goto :goto_5

    .line 393
    :sswitch_9
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    goto :goto_5

    .line 395
    :sswitch_c
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

    goto :goto_5

    .line 397
    :sswitch_f
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    goto :goto_5

    .line 399
    :sswitch_12
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_ChangeOrderRenderer:Lcom/lge/render/RendererAttribute;

    goto :goto_5

    .line 389
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_c
        0x8 -> :sswitch_f
        0x10 -> :sswitch_12
    .end sparse-switch
.end method

.method public getRenderFlag()I
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v0

    return v0
.end method

.method public getRenderMode()I
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->getMode()I

    move-result v0

    return v0
.end method

.method public getRendererTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    if-eqz v0, :cond_b

    .line 296
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v0, v1}, Lcom/lge/render/RendererAttribute;->initailRender(Lcom/lge/render/PhotoMgr;)V

    .line 298
    :cond_b
    return-void
.end method

.method public initRenderDistance(I)V
    .registers 3
    .parameter "renderFlag"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/lge/render/EssentialRenderer;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->initMovingDistance()V

    .line 190
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    const/high16 v1, 0x1

    const/4 v4, 0x1

    .line 431
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->getMode()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/EssentialRenderer$RenderBackground;->checkInSetFavorite(II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 434
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v0, v4}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setTouchDown(Z)V

    .line 438
    :goto_23
    return v4

    .line 436
    :cond_24
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/render/RendererAttribute;->TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z

    goto :goto_23
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/high16 v3, 0x1

    .line 111
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->isPreparedOtherActi()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 112
    invoke-static {}, Lcom/lge/render/FCImageFactory;->createLoadingImg()V

    .line 113
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    if-eqz v1, :cond_3c

    .line 114
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v1, p1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 116
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    if-eqz v1, :cond_29

    .line 117
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v2, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v1, p1, v2}, Lcom/lge/render/RendererAttribute;->onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 120
    .local v0, needDraw:Z
    if-eqz v0, :cond_29

    .line 121
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-virtual {v1, p1, p0}, Lcom/lge/render/PhotoMgr;->onDrawPhotos(Landroid/graphics/Canvas;Lcom/lge/render/EssentialRenderer;)V

    .line 124
    .end local v0           #needDraw:Z
    :cond_29
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v1, p1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->onDrawShade(Landroid/graphics/Canvas;)V

    .line 130
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getMode()I

    move-result v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3c

    .line 131
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v1, p1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->onDrawSetFavoriteBtn(Landroid/graphics/Canvas;)V

    .line 138
    :cond_3c
    :goto_3c
    return-void

    .line 135
    :cond_3d
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->init()V

    .line 136
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    invoke-virtual {v1}, Lcom/lge/favoritecontacts/FavoriteContacts;->startOtherActi()V

    goto :goto_3c
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v0, p3, p4, v1}, Lcom/lge/render/RendererAttribute;->FlingTouch(FFLcom/lge/render/PhotoMgr;)Z

    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6
    .parameter "e"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v2, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v1, p1, v2}, Lcom/lge/render/RendererAttribute;->LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    .line 453
    .local v0, ret:Z
    if-eqz v0, :cond_18

    .line 454
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_FC:Lcom/lge/favoritecontacts/FavoriteContacts;

    const v2, 0x7f05000e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 459
    :goto_17
    return-void

    .line 457
    :cond_18
    invoke-virtual {p0, p1}, Lcom/lge/render/EssentialRenderer;->onDown(Landroid/view/MotionEvent;)Z

    goto :goto_17
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v0, p3, p4, p2, v1}, Lcom/lge/render/RendererAttribute;->ScrollTouch(FFLandroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 465
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "e"

    .prologue
    const/high16 v1, 0x1

    const/4 v3, 0x1

    .line 470
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v0}, Lcom/lge/render/RendererAttribute;->getMode()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/EssentialRenderer$RenderBackground;->checkInSetFavorite(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 476
    iget-boolean v0, p0, Lcom/lge/render/EssentialRenderer;->m_bRunAssignFavorite:Z

    if-nez v0, :cond_2e

    .line 477
    iput-boolean v3, p0, Lcom/lge/render/EssentialRenderer;->m_bRunAssignFavorite:Z

    .line 478
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    new-instance v1, Lcom/lge/render/EssentialRenderer$1;

    invoke-direct {v1, p0}, Lcom/lge/render/EssentialRenderer$1;-><init>(Lcom/lge/render/EssentialRenderer;)V

    invoke-virtual {v0, v1}, Lcom/lge/render/PhotoMgr;->addPreOperation(Ljava/lang/Runnable;)V

    .line 506
    :cond_2e
    const/4 v0, 0x0

    .line 514
    :goto_2f
    return v0

    .line 508
    :cond_30
    iget-boolean v0, p0, Lcom/lge/render/EssentialRenderer;->m_bRunAssignFavorite:Z

    if-nez v0, :cond_45

    .line 509
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/render/RendererAttribute;->SingleTagup(FFLcom/lge/render/PhotoMgr;)Z

    move-result v0

    goto :goto_2f

    :cond_45
    move v0, v3

    .line 514
    goto :goto_2f
.end method

.method public onUp()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 442
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v0, v3}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setTouchDown(Z)V

    .line 443
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->pm_PhotoMgr:Lcom/lge/render/PhotoMgr;

    invoke-interface {v0, v2, v2, v1, v3}, Lcom/lge/render/RendererAttribute;->TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 446
    :cond_11
    return-void
.end method

.method public prepareRendererAtt(II)V
    .registers 6
    .parameter "flag"
    .parameter "mode"

    .prologue
    const/4 v2, 0x4

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, f:I
    and-int/lit8 v1, p2, 0x4

    if-ne v1, v2, :cond_15

    .line 257
    packed-switch p1, :pswitch_data_48

    .line 274
    :pswitch_9
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 279
    :cond_15
    :goto_15
    return-void

    .line 259
    :pswitch_16
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 260
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    goto :goto_15

    .line 264
    :pswitch_27
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 265
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1, v2, v0}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    goto :goto_15

    .line 269
    :pswitch_37
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 270
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v0

    .line 271
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    goto :goto_15

    .line 257
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_16
        :pswitch_27
        :pswitch_9
        :pswitch_37
    .end packed-switch
.end method

.method public requestchangedRender(I)V
    .registers 6
    .parameter "flag"

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v0

    .line 196
    .local v0, f:I
    packed-switch p1, :pswitch_data_78

    .line 227
    :goto_a
    :pswitch_a
    return-void

    .line 198
    :pswitch_b
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v1

    if-ne v0, v1, :cond_37

    .line 199
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->initMovingDistance()V

    .line 200
    shl-int/lit8 v0, v0, 0x8

    .line 201
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v1

    or-int/2addr v0, v1

    .line 202
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v2, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v2}, Lcom/lge/render/RendererAttribute;->getMode()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 204
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    const/16 v2, 0xa

    invoke-interface {v1, v2, v0}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 205
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 207
    :cond_37
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->init()V

    goto :goto_a

    .line 210
    :pswitch_3b
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v1

    if-ne v0, v1, :cond_67

    .line 211
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->initMovingDistance()V

    .line 212
    shl-int/lit8 v0, v0, 0x8

    .line 213
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v1

    or-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_WheelRenderer:Lcom/lge/render/RendererAttribute;

    iget-object v2, p0, Lcom/lge/render/EssentialRenderer;->m_GridRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v2}, Lcom/lge/render/RendererAttribute;->getMode()I

    move-result v2

    invoke-interface {v1, v2, v3}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 217
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v0}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 218
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_EffectRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 220
    :cond_67
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->init()V

    goto :goto_a

    .line 223
    :pswitch_6b
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

    invoke-interface {v1}, Lcom/lge/render/RendererAttribute;->getFlag()I

    move-result v1

    or-int/2addr v0, v1

    .line 224
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_LandScapeRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    goto :goto_a

    .line 196
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_b
        :pswitch_3b
        :pswitch_a
        :pswitch_6b
    .end packed-switch
.end method

.method public final setBackGround(Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p1, :cond_7

    .line 142
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer;->setBackGroundDefault()V

    .line 171
    :goto_6
    return-void

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    if-nez v0, :cond_12

    .line 147
    new-instance v0, Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-direct {v0, p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;-><init>(Lcom/lge/render/EssentialRenderer;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    .line 155
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 156
    .local v3, tBitmapWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 158
    .local v4, tBitmapHeight:I
    const/16 v8, 0x200

    .line 159
    .local v8, tToLength:I
    if-ne v8, v3, :cond_20

    if-eq v8, v4, :cond_3e

    .line 160
    :cond_20
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 161
    .local v5, tMatrix:Landroid/graphics/Matrix;
    int-to-float v0, v8

    int-to-float v2, v3

    div-float/2addr v0, v2

    int-to-float v2, v8

    int-to-float v6, v4

    div-float/2addr v2, v6

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 163
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 165
    .local v7, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    .end local v5           #tMatrix:Landroid/graphics/Matrix;
    :goto_38
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v0, v7}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 167
    .end local v7           #resizedBitmap:Landroid/graphics/Bitmap;
    :cond_3e
    move-object v7, p1

    .restart local v7       #resizedBitmap:Landroid/graphics/Bitmap;
    goto :goto_38
.end method

.method public final setBackGroundDefault()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    if-nez v0, :cond_b

    .line 175
    new-instance v0, Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-direct {v0, p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;-><init>(Lcom/lge/render/EssentialRenderer;)V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    .line 177
    :cond_b
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getBackgroundImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setImage(Landroid/graphics/Bitmap;)V

    .line 178
    return-void
.end method

.method public setDrawSize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 246
    sput p1, Lcom/lge/render/EssentialRenderer;->SCREEN_WIDHT:I

    .line 247
    sput p2, Lcom/lge/render/EssentialRenderer;->SCREEN_HEIGHT:I

    .line 248
    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/lge/render/EssentialRenderer;->CENTER_PIXEL_X:I

    .line 249
    div-int/lit8 v0, p2, 0x2

    rem-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/lge/render/EssentialRenderer;->CENTER_PIXEL_Y:I

    .line 250
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_BackGround:Lcom/lge/render/EssentialRenderer$RenderBackground;

    invoke-virtual {v0, p1, p2}, Lcom/lge/render/EssentialRenderer$RenderBackground;->setSize(II)V

    .line 251
    return-void
.end method

.method public setNoRender(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NoRenderer:Lcom/lge/render/RendererAttribute;

    check-cast v0, Lcom/lge/render/NoRender;

    .line 407
    .local v0, nr:Lcom/lge/render/NoRender;
    invoke-virtual {v0, p1}, Lcom/lge/render/NoRender;->setTag(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NoRenderer:Lcom/lge/render/RendererAttribute;

    iput-object v1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 409
    return-void
.end method

.method public setPressedBtn(Lcom/lge/render/FCBtnItem;Z)V
    .registers 4
    .parameter "item"
    .parameter "PressOrUp"

    .prologue
    .line 414
    if-eqz p1, :cond_4

    .line 415
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer;->m_PressedPhotoBtn:Lcom/lge/render/FCBtnItem;

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_PressedPhotoBtn:Lcom/lge/render/FCBtnItem;

    if-eqz v0, :cond_d

    .line 418
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_PressedPhotoBtn:Lcom/lge/render/FCBtnItem;

    invoke-virtual {v0, p2}, Lcom/lge/render/FCBtnItem;->setTouchDown(Z)V

    .line 420
    :cond_d
    if-nez p2, :cond_12

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_PressedPhotoBtn:Lcom/lge/render/FCBtnItem;

    .line 423
    :cond_12
    return-void
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/lge/render/RendererAttribute;->setRenderMode(II)V

    .line 306
    return-void
.end method

.method public setRendererAtt(Lcom/lge/render/RendererAttribute;)V
    .registers 2
    .parameter "renderatt"

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer;->m_NowRenderer:Lcom/lge/render/RendererAttribute;

    .line 289
    return-void
.end method
