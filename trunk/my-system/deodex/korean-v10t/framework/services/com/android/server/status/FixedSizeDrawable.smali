.class Lcom/android/server/status/FixedSizeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FixedSizeDrawable.java"


# instance fields
.field mBottom:I

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mLeft:I

.field mRight:I

.field mTop:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "that"

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 18
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .parameter "alpha"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 45
    return-void
.end method

.method public setBounds(IIII)V
    .registers 10
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/status/FixedSizeDrawable;->mLeft:I

    iget v2, p0, Lcom/android/server/status/FixedSizeDrawable;->mTop:I

    iget v3, p0, Lcom/android/server/status/FixedSizeDrawable;->mRight:I

    iget v4, p0, Lcom/android/server/status/FixedSizeDrawable;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 7
    .parameter "bounds"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/status/FixedSizeDrawable;->mLeft:I

    iget v2, p0, Lcom/android/server/status/FixedSizeDrawable;->mTop:I

    iget v3, p0, Lcom/android/server/status/FixedSizeDrawable;->mRight:I

    iget v4, p0, Lcom/android/server/status/FixedSizeDrawable;->mBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .parameter "cf"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/server/status/FixedSizeDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 49
    return-void
.end method

.method public setFixedBounds(IIII)V
    .registers 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/server/status/FixedSizeDrawable;->mLeft:I

    .line 22
    iput p2, p0, Lcom/android/server/status/FixedSizeDrawable;->mTop:I

    .line 23
    iput p3, p0, Lcom/android/server/status/FixedSizeDrawable;->mRight:I

    .line 24
    iput p4, p0, Lcom/android/server/status/FixedSizeDrawable;->mBottom:I

    .line 25
    return-void
.end method
