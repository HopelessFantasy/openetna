.class Lcom/lge/render/EssentialRenderer$RenderBackground;
.super Lcom/lge/render/FCDrawItem;
.source "EssentialRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/render/EssentialRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderBackground"
.end annotation


# instance fields
.field m_BtnRect:Landroid/graphics/Rect;

.field m_bottom:Landroid/graphics/Bitmap;

.field m_iBottomHeight:I

.field m_iBottomWidth:I

.field m_setFavorteBtn:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/lge/render/EssentialRenderer;


# direct methods
.method public constructor <init>(Lcom/lge/render/EssentialRenderer;)V
    .registers 3
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->this$0:Lcom/lge/render/EssentialRenderer;

    .line 542
    invoke-direct {p0}, Lcom/lge/render/FCDrawItem;-><init>()V

    .line 543
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getSetFavoriteN()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_setFavorteBtn:Landroid/graphics/Bitmap;

    .line 544
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    .line 545
    return-void
.end method


# virtual methods
.method public checkInSetFavorite(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public onDrawSetFavoriteBtn(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xff

    .line 573
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 574
    .local v1, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 576
    .local v0, paint:Landroid/graphics/Paint;
    iget v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->mColorRed:I

    iget v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->mColorGreen:I

    iget v5, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->mColorBlue:I

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 578
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_setFavorteBtn:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_28

    .line 579
    iget v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomWidth:I

    iget v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomHeight:I

    invoke-virtual {v1, v7, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 580
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_setFavorteBtn:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v1, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 583
    :cond_28
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 585
    .local v2, writePaint:Landroid/graphics/Paint;
    const/high16 v3, 0x41c0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 586
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 587
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 588
    const/16 v3, 0xdf

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 589
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->this$0:Lcom/lge/render/EssentialRenderer;

    invoke-static {v3}, Lcom/lge/render/EssentialRenderer;->access$000(Lcom/lge/render/EssentialRenderer;)Lcom/lge/favoritecontacts/FavoriteContacts;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/favoritecontacts/FavoriteContacts;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x7

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 593
    return-void
.end method

.method public onDrawShade(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 556
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 557
    .local v2, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 558
    .local v0, dstRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 560
    .local v1, paint:Landroid/graphics/Paint;
    const/16 v3, 0xff

    iget v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->mColorRed:I

    iget v5, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->mColorGreen:I

    iget v6, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->mColorBlue:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 562
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_bottom:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4d

    .line 563
    iget v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomWidth:I

    iget v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomHeight:I

    invoke-virtual {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 564
    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomHeight:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/render/EssentialRenderer$RenderBackground;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v7, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 567
    iget-object v3, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_bottom:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 570
    .end local v0           #dstRect:Landroid/graphics/Rect;
    .end local v1           #paint:Landroid/graphics/Paint;
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :cond_4d
    return-void
.end method

.method public setBtnSize(I)V
    .registers 7
    .parameter "ori"

    .prologue
    .line 596
    packed-switch p1, :pswitch_data_20

    .line 604
    :goto_3
    return-void

    .line 598
    :pswitch_4
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    const/16 v1, 0x1b

    const/16 v2, 0x16f

    const/16 v3, 0x125

    const/16 v4, 0x19f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 601
    :pswitch_12
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_BtnRect:Landroid/graphics/Rect;

    const/16 v1, 0x28

    const/16 v2, 0xd2

    const/16 v3, 0x1b8

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 596
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_4
        :pswitch_12
    .end packed-switch
.end method

.method public setShade(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bottom"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_bottom:Landroid/graphics/Bitmap;

    .line 550
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_bottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomWidth:I

    .line 551
    iget-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_bottom:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_iBottomHeight:I

    .line 552
    return-void
.end method

.method public setTouchDown(Z)V
    .registers 3
    .parameter "isdown"

    .prologue
    .line 608
    invoke-super {p0, p1}, Lcom/lge/render/FCDrawItem;->setTouchDown(Z)V

    .line 610
    if-eqz p1, :cond_c

    .line 611
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getSetFavoriteP()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_setFavorteBtn:Landroid/graphics/Bitmap;

    .line 614
    :goto_b
    return-void

    .line 613
    :cond_c
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getSetFavoriteN()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/EssentialRenderer$RenderBackground;->m_setFavorteBtn:Landroid/graphics/Bitmap;

    goto :goto_b
.end method
