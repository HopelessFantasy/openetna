.class public Lcom/lge/render/FCBtnItem;
.super Lcom/lge/render/FCDrawItem;
.source "FCBtnItem.java"


# instance fields
.field private m_NormalImage:Landroid/graphics/Bitmap;

.field private m_ParentItem:Lcom/lge/render/FCDrawItem;

.field private m_PressImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Lcom/lge/render/FCDrawItem;-><init>()V

    .line 14
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getNormalXBtnImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getPressXBtnImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/render/FCBtnItem;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 16
    invoke-virtual {p0, v2}, Lcom/lge/render/FCBtnItem;->setVisible(Z)V

    .line 17
    invoke-virtual {p0, v2}, Lcom/lge/render/FCBtnItem;->setEnable(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/render/FCDrawItem;-><init>(IIII)V

    .line 22
    invoke-static {}, Lcom/lge/render/FCImageFactory;->getNormalXBtnImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/lge/render/FCImageFactory;->getPressXBtnImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/render/FCBtnItem;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 24
    invoke-virtual {p0, v2}, Lcom/lge/render/FCBtnItem;->setVisible(Z)V

    .line 25
    invoke-virtual {p0, v2}, Lcom/lge/render/FCBtnItem;->setEnable(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public getParent()Lcom/lge/render/FCDrawItem;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/render/FCBtnItem;->m_ParentItem:Lcom/lge/render/FCDrawItem;

    return-object v0
.end method

.method public setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .registers 6
    .parameter "normal"
    .parameter "press"
    .parameter "isCopy"

    .prologue
    const/4 v1, 0x1

    .line 29
    if-nez p3, :cond_d

    .line 30
    iput-object p1, p0, Lcom/lge/render/FCBtnItem;->m_NormalImage:Landroid/graphics/Bitmap;

    .line 31
    iput-object p2, p0, Lcom/lge/render/FCBtnItem;->m_PressImage:Landroid/graphics/Bitmap;

    .line 36
    :goto_7
    iget-object v0, p0, Lcom/lge/render/FCBtnItem;->m_NormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/lge/render/FCBtnItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 37
    return-void

    .line 33
    :cond_d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/FCBtnItem;->m_NormalImage:Landroid/graphics/Bitmap;

    .line 34
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/render/FCBtnItem;->m_PressImage:Landroid/graphics/Bitmap;

    goto :goto_7
.end method

.method public setParent(Lcom/lge/render/FCDrawItem;)V
    .registers 2
    .parameter "item"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/render/FCBtnItem;->m_ParentItem:Lcom/lge/render/FCDrawItem;

    .line 41
    return-void
.end method

.method public setTouchDown(Z)V
    .registers 3
    .parameter "touchdown"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/lge/render/FCDrawItem;->setTouchDown(Z)V

    .line 51
    if-eqz p1, :cond_b

    .line 52
    iget-object v0, p0, Lcom/lge/render/FCBtnItem;->m_PressImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/lge/render/FCBtnItem;->setImage(Landroid/graphics/Bitmap;)V

    .line 55
    :goto_a
    return-void

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/lge/render/FCBtnItem;->m_NormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/lge/render/FCBtnItem;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_a
.end method
