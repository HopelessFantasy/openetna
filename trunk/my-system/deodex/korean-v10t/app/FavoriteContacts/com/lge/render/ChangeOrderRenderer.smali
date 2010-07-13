.class public Lcom/lge/render/ChangeOrderRenderer;
.super Ljava/lang/Object;
.source "ChangeOrderRenderer.java"

# interfaces
.implements Lcom/lge/render/RendererAttribute;


# static fields
.field public static final TAG:Ljava/lang/String; = "changeorder"

.field private static m_iRunningRender:I


# instance fields
.field private m_OverlapItem:Lcom/lge/render/FCPhotoItem;

.field private m_PositionX:I

.field private m_PositionY:I

.field private m_RenderListener:Lcom/lge/render/RenderAttListener;

.field private m_SelectItem:Lcom/lge/render/FCPhotoItem;

.field private m_iDispCnt:I

.field private m_iLeftCnt:I

.field private m_iOriHeiht:I

.field private m_iOriWidth:I

.field private m_iRemainL:I

.field private m_iRemainR:I

.field private m_iRightCnt:I

.field private m_overlapImage:Landroid/graphics/Bitmap;

.field private m_overlapPaint:Landroid/graphics/Paint;

.field private m_overlayRect:Landroid/graphics/Rect;

.field private m_szTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lge/render/RenderAttListener;)V
    .registers 7
    .parameter "elRender"

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "changeorder"

    iput-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_szTag:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapPaint:Landroid/graphics/Paint;

    const/16 v1, 0x9f

    const/16 v2, 0xff

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 42
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getColorOverlay()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlayRect:Landroid/graphics/Rect;

    .line 44
    iget-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlayRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    return-void
.end method

.method public static getRenderFlag()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    return v0
.end method


# virtual methods
.method public FlingTouch(FFLcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "mgr"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public LongTouch(Landroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 4
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public ScrollTouch(FFLandroid/view/MotionEvent;Lcom/lge/render/PhotoMgr;)Z
    .registers 8
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "e"
    .parameter "mgr"

    .prologue
    .line 71
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_PositionX:I

    .line 72
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_PositionY:I

    .line 74
    iget v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_PositionX:I

    iget v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_PositionY:I

    sget v2, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    invoke-virtual {p4, v0, v1, v2}, Lcom/lge/render/PhotoMgr;->getInnerPxItem(III)Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public SingleTagup(FFLcom/lge/render/PhotoMgr;)Z
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "mgr"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public TouchDown(FFLcom/lge/render/PhotoMgr;Z)Z
    .registers 10
    .parameter "x"
    .parameter "y"
    .parameter "mgr"
    .parameter "PressOrUp"

    .prologue
    const/4 v4, 0x1

    .line 89
    if-nez p4, :cond_3b

    .line 90
    iget-object v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    if-eqz v1, :cond_10

    .line 91
    iget-object v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    iget-object v2, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    sget v3, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    invoke-virtual {p3, v1, v2, v3}, Lcom/lge/render/PhotoMgr;->changeOrder(Lcom/lge/render/FCPhotoItem;Lcom/lge/render/FCPhotoItem;I)V

    .line 93
    :cond_10
    sget v1, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    .line 94
    iget-object v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v1, v4}, Lcom/lge/render/FCPhotoItem;->setDrawShadow(Z)V

    .line 97
    :cond_1a
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->setSelectedItemDisSel()V

    .line 98
    sget v1, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    shl-int/lit8 v1, v1, 0x8

    sget v2, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    or-int v0, v1, v2

    .line 101
    .local v0, flag:I
    iget-object v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    iget-object v2, p0, Lcom/lge/render/ChangeOrderRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v2

    const/high16 v3, 0x4

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/lge/render/RenderAttListener;->ChangeRender(Lcom/lge/render/RendererAttribute;Lcom/lge/render/RendererAttribute;II)V

    .line 105
    iget-object v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    if-eqz v1, :cond_3b

    .line 106
    invoke-virtual {p3}, Lcom/lge/render/PhotoMgr;->completeChangeOrder()V

    .line 108
    .end local v0           #flag:I
    :cond_3b
    return v4
.end method

.method public getFlag()I
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 122
    const/high16 v0, 0x4

    return v0
.end method

.method public getMovingDistance()F
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_szTag:Ljava/lang/String;

    return-object v0
.end method

.method public initMovingDistance()V
    .registers 1

    .prologue
    .line 143
    return-void
.end method

.method public initailRender(Lcom/lge/render/PhotoMgr;)V
    .registers 8
    .parameter "mgr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getSelectedItem()Lcom/lge/render/FCPhotoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    .line 149
    iget-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iOriHeiht:I

    .line 150
    iget-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v0}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iOriWidth:I

    .line 151
    iget-object v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    iget v1, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iOriWidth:I

    mul-int/lit8 v1, v1, 0xb

    div-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iOriHeiht:I

    mul-int/lit8 v2, v2, 0xb

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/lge/render/FCPhotoItem;->setSize(II)V

    .line 153
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getDispListCnt()I

    move-result v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iDispCnt:I

    .line 154
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getRightListCnt()I

    move-result v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRightCnt:I

    .line 155
    invoke-virtual {p1}, Lcom/lge/render/PhotoMgr;->getLeftListCnt()I

    move-result v0

    iput v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iLeftCnt:I

    .line 157
    sget v0, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    packed-switch v0, :pswitch_data_50

    .line 167
    :pswitch_41
    iput v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainR:I

    .line 168
    iput v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainL:I

    .line 171
    :goto_45
    return-void

    .line 159
    :pswitch_46
    iput v5, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainR:I

    .line 160
    iput v5, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainL:I

    goto :goto_45

    .line 163
    :pswitch_4b
    iput v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainR:I

    .line 164
    iput v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainL:I

    goto :goto_45

    .line 157
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_46
        :pswitch_41
        :pswitch_41
        :pswitch_4b
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/lge/render/PhotoMgr;)Z
    .registers 11
    .parameter "canvas"
    .parameter "mgr"

    .prologue
    const/4 v7, 0x0

    .line 176
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    if-nez v3, :cond_15

    .line 177
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_RenderListener:Lcom/lge/render/RenderAttListener;

    sget v4, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    invoke-interface {v3, v4}, Lcom/lge/render/RenderAttListener;->getRenderAtt(I)Lcom/lge/render/RendererAttribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/render/RendererAttribute;->getTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_szTag:Ljava/lang/String;

    .line 178
    const/4 v3, 0x1

    .line 228
    :goto_14
    return v3

    .line 181
    :cond_15
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    iget v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_PositionX:I

    iget-object v5, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v5}, Lcom/lge/render/FCPhotoItem;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/render/ChangeOrderRenderer;->m_PositionY:I

    iget-object v6, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v6}, Lcom/lge/render/FCPhotoItem;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lge/render/FCPhotoItem;->setPosition(II)V

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    iget v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iDispCnt:I

    if-ge v0, v3, :cond_54

    .line 185
    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getDispPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 187
    .local v1, item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v3

    if-nez v3, :cond_42

    .line 188
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 190
    :cond_42
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    if-ne v1, v3, :cond_51

    .line 192
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 184
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 197
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRightCnt:I

    if-ge v0, v3, :cond_7c

    iget v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainR:I

    if-ge v0, v3, :cond_7c

    .line 198
    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getRightPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 200
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 201
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 203
    :cond_6a
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    if-ne v1, v3, :cond_79

    .line 205
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 197
    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 210
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_7c
    iget v0, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iLeftCnt:I

    const/4 v2, 0x0

    .local v2, j:I
    :goto_7f
    if-lez v0, :cond_a6

    iget v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_iRemainL:I

    if-ge v2, v3, :cond_a6

    .line 211
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/lge/render/PhotoMgr;->getLeftPhotoItem(I)Lcom/lge/render/FCPhotoItem;

    move-result-object v1

    .line 213
    .restart local v1       #item:Lcom/lge/render/FCPhotoItem;
    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getSelected()Z

    move-result v3

    if-nez v3, :cond_94

    .line 214
    invoke-virtual {v1, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 216
    :cond_94
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_OverlapItem:Lcom/lge/render/FCPhotoItem;

    if-ne v1, v3, :cond_a3

    .line 218
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 210
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    .line 223
    .end local v1           #item:Lcom/lge/render/FCPhotoItem;
    :cond_a6
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v3, p1}, Lcom/lge/render/FCPhotoItem;->onDrawFrame(Landroid/graphics/Canvas;)V

    .line 225
    iget-object v3, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlapImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/render/ChangeOrderRenderer;->m_overlayRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/lge/render/ChangeOrderRenderer;->m_SelectItem:Lcom/lge/render/FCPhotoItem;

    invoke-virtual {v5}, Lcom/lge/render/FCPhotoItem;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 228
    const/4 v3, 0x0

    goto/16 :goto_14
.end method

.method public setRenderMode(II)V
    .registers 3
    .parameter "mode"
    .parameter "flag"

    .prologue
    .line 234
    sput p2, Lcom/lge/render/ChangeOrderRenderer;->m_iRunningRender:I

    .line 236
    return-void
.end method
