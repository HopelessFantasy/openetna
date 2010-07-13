.class public Lcom/android/camera/GalleryPickerItem;
.super Landroid/widget/ImageView;
.source "GalleryPickerItem.java"


# instance fields
.field private mFrame:Landroid/graphics/drawable/Drawable;

.field private mFrameBounds:Landroid/graphics/Rect;

.field private mOverlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/GalleryPickerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/GalleryPickerItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/GalleryPickerItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    .line 44
    iget-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 55
    iget-object v1, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/GalleryPickerItem;->getDrawableState()[I

    move-result-object v0

    .line 57
    .local v0, drawableState:[I
    iget-object v1, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 59
    .end local v0           #drawableState:[I
    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    .line 65
    .local v0, frameBounds:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/GalleryPickerItem;->getWidth()I

    move-result v2

    .line 67
    .local v2, w:I
    invoke-virtual {p0}, Lcom/android/camera/GalleryPickerItem;->getHeight()I

    move-result v1

    .line 69
    .local v1, h:I
    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    iget-object v3, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 71
    iget-object v3, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_35

    .line 72
    iget-object v3, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    .end local v1           #h:I
    .end local v2           #w:I
    :cond_35
    iget-object v3, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v3, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_43

    .line 79
    iget-object v3, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    :cond_43
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 89
    return-void
.end method

.method public setOverlay(I)V
    .registers 3
    .parameter "overlayId"

    .prologue
    .line 92
    if-ltz p1, :cond_12

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/GalleryPickerItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrameBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 98
    :goto_11
    return-void

    .line 96
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    goto :goto_11
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mFrame:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/GalleryPickerItem;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
