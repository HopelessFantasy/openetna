.class public Lcom/lge/render/FCDrawItem;
.super Ljava/lang/Object;
.source "FCDrawItem.java"


# instance fields
.field protected mAlpha:I

.field protected mColorBlue:I

.field protected mColorGreen:I

.field protected mColorRed:I

.field protected mHeight:I

.field protected mLeft:I

.field protected mTop:I

.field protected mWidth:I

.field private m_bIsDisp:Z

.field private m_bIsEnable:Z

.field private m_bIsToudchDown:Z

.field private m_thisImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/lge/render/FCDrawItem;-><init>(IIII)V

    .line 27
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xff

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/lge/render/FCDrawItem;->mAlpha:I

    .line 16
    iput v0, p0, Lcom/lge/render/FCDrawItem;->mColorRed:I

    .line 17
    iput v0, p0, Lcom/lge/render/FCDrawItem;->mColorGreen:I

    .line 18
    iput v0, p0, Lcom/lge/render/FCDrawItem;->mColorBlue:I

    .line 31
    iput-boolean v1, p0, Lcom/lge/render/FCDrawItem;->m_bIsDisp:Z

    .line 32
    iput-boolean v1, p0, Lcom/lge/render/FCDrawItem;->m_bIsEnable:Z

    .line 33
    iput-boolean v1, p0, Lcom/lge/render/FCDrawItem;->m_bIsToudchDown:Z

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/lge/render/FCDrawItem;->setPosition(II)V

    .line 36
    invoke-virtual {p0, p3, p4}, Lcom/lge/render/FCDrawItem;->setSize(II)V

    .line 37
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/lge/render/FCDrawItem;->mAlpha:I

    return v0
.end method

.method public getColors()I
    .registers 3

    .prologue
    .line 82
    iget v0, p0, Lcom/lge/render/FCDrawItem;->mAlpha:I

    .line 83
    .local v0, color:I
    shl-int/lit8 v0, v0, 0x8

    .line 84
    iget v1, p0, Lcom/lge/render/FCDrawItem;->mColorRed:I

    or-int/2addr v0, v1

    .line 85
    shl-int/lit8 v0, v0, 0x8

    .line 86
    iget v1, p0, Lcom/lge/render/FCDrawItem;->mColorGreen:I

    or-int/2addr v0, v1

    .line 87
    shl-int/lit8 v0, v0, 0x8

    .line 88
    iget v1, p0, Lcom/lge/render/FCDrawItem;->mColorBlue:I

    or-int/2addr v0, v1

    .line 90
    return v0
.end method

.method public getEnable()Z
    .registers 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/lge/render/FCDrawItem;->m_bIsEnable:Z

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/lge/render/FCDrawItem;->mHeight:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/render/FCDrawItem;->m_thisImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/lge/render/FCDrawItem;->mLeft:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 94
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/render/FCDrawItem;->mLeft:I

    iget v2, p0, Lcom/lge/render/FCDrawItem;->mTop:I

    iget v3, p0, Lcom/lge/render/FCDrawItem;->mLeft:I

    iget v4, p0, Lcom/lge/render/FCDrawItem;->mWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/render/FCDrawItem;->mTop:I

    iget v5, p0, Lcom/lge/render/FCDrawItem;->mHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/render/FCDrawItem;->mTop:I

    return v0
.end method

.method public getTouchDown()Z
    .registers 2

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/lge/render/FCDrawItem;->m_bIsToudchDown:Z

    return v0
.end method

.method public getVisible()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/lge/render/FCDrawItem;->m_bIsDisp:Z

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/lge/render/FCDrawItem;->mWidth:I

    return v0
.end method

.method public onDrawFrame(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/lge/render/FCDrawItem;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 50
    .local v2, srcRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/lge/render/FCDrawItem;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 51
    .local v0, dstRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/lge/render/FCDrawItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/render/FCDrawItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    iget v3, p0, Lcom/lge/render/FCDrawItem;->mAlpha:I

    iget v4, p0, Lcom/lge/render/FCDrawItem;->mColorRed:I

    iget v5, p0, Lcom/lge/render/FCDrawItem;->mColorGreen:I

    iget v6, p0, Lcom/lge/render/FCDrawItem;->mColorBlue:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/render/FCDrawItem;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 59
    .end local v0           #dstRect:Landroid/graphics/Rect;
    .end local v1           #paint:Landroid/graphics/Paint;
    .end local v2           #srcRect:Landroid/graphics/Rect;
    :cond_3a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "a"

    .prologue
    .line 108
    iput p1, p0, Lcom/lge/render/FCDrawItem;->mAlpha:I

    .line 109
    return-void
.end method

.method public setBackgroundColor(III)V
    .registers 4
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 112
    iput p1, p0, Lcom/lge/render/FCDrawItem;->mColorRed:I

    .line 113
    iput p2, p0, Lcom/lge/render/FCDrawItem;->mColorGreen:I

    .line 114
    iput p3, p0, Lcom/lge/render/FCDrawItem;->mColorBlue:I

    .line 115
    return-void
.end method

.method public setEnable(Z)V
    .registers 2
    .parameter "en"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/lge/render/FCDrawItem;->m_bIsEnable:Z

    .line 145
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "b"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/render/FCDrawItem;->m_thisImage:Landroid/graphics/Bitmap;

    .line 128
    return-void
.end method

.method public setPosition(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 98
    iput p1, p0, Lcom/lge/render/FCDrawItem;->mLeft:I

    .line 99
    iput p2, p0, Lcom/lge/render/FCDrawItem;->mTop:I

    .line 100
    return-void
.end method

.method public setSize(II)V
    .registers 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 103
    iput p1, p0, Lcom/lge/render/FCDrawItem;->mWidth:I

    .line 104
    iput p2, p0, Lcom/lge/render/FCDrawItem;->mHeight:I

    .line 105
    return-void
.end method

.method public setTouchDown(Z)V
    .registers 2
    .parameter "isdown"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/lge/render/FCDrawItem;->m_bIsToudchDown:Z

    .line 137
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/lge/render/FCDrawItem;->m_bIsDisp:Z

    .line 119
    return-void
.end method
