.class Lcom/android/calculator2/ColorButton;
.super Landroid/widget/Button;
.source "ColorButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final CLICK_FEEDBACK_DURATION:I = 0x15e

.field static final CLICK_FEEDBACK_INTERVAL:I = 0xa


# instance fields
.field CLICK_FEEDBACK_COLOR:I

.field mAnimStart:J

.field mButton:Landroid/graphics/drawable/Drawable;

.field mButtonBackground:Landroid/graphics/drawable/Drawable;

.field mListener:Landroid/view/View$OnClickListener;

.field mTextX:F

.field mTextY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->init()V

    .line 52
    check-cast p1, Lcom/android/calculator2/Calculator;

    .end local p1
    iget-object v0, p1, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iput-object v0, p0, Lcom/android/calculator2/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/calculator2/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private drawMagicFlame(ILandroid/graphics/Canvas;)V
    .registers 11
    .parameter "duration"
    .parameter "canvas"

    .prologue
    .line 98
    const/16 v5, 0xff

    mul-int/lit16 v6, p1, 0xff

    div-int/lit16 v6, v6, 0x15e

    sub-int v0, v5, v6

    .line 99
    .local v0, alpha:I
    iget v5, p0, Lcom/android/calculator2/ColorButton;->CLICK_FEEDBACK_COLOR:I

    shl-int/lit8 v6, v0, 0x18

    or-int v2, v5, v6

    .line 100
    .local v2, color:I
    iget-object v5, p0, Lcom/android/calculator2/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 103
    .local v3, cx:I
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 104
    .local v4, cy:I
    const/high16 v5, 0x437a

    int-to-float v6, p1

    mul-float/2addr v5, v6

    const/high16 v6, 0x43af

    div-float v1, v5, v6

    .line 105
    .local v1, angle:F
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p2, v1, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 106
    iget-object v5, p0, Lcom/android/calculator2/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    neg-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p2, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 108
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 62
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/calculator2/ColorButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/ColorButton;->mButton:Landroid/graphics/drawable/Drawable;

    .line 68
    const/high16 v1, 0x7f04

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calculator2/ColorButton;->CLICK_FEEDBACK_COLOR:I

    .line 69
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const v2, 0x7f040001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 71
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 72
    return-void
.end method

.method private measureText()V
    .registers 5

    .prologue
    const/high16 v3, 0x4000

    .line 87
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 88
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/calculator2/ColorButton;->mTextX:F

    .line 89
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/calculator2/ColorButton;->mTextY:F

    .line 90
    return-void
.end method


# virtual methods
.method public animateClickFeedback()V
    .registers 3

    .prologue
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 134
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->invalidate()V

    .line 135
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->animateClickFeedback()V

    .line 58
    iget-object v0, p0, Lcom/android/calculator2/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, 0x0

    .line 112
    iget-wide v3, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3f

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    sub-long/2addr v3, v5

    long-to-int v7, v3

    .line 115
    .local v7, animDuration:I
    const/16 v0, 0x15e

    if-lt v7, v0, :cond_36

    .line 116
    iget-object v0, p0, Lcom/android/calculator2/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 117
    iput-wide v8, p0, Lcom/android/calculator2/ColorButton;->mAnimStart:J

    .line 126
    .end local v7           #animDuration:I
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/calculator2/ColorButton;->mButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 129
    .local v1, text:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/android/calculator2/ColorButton;->mTextX:F

    iget v5, p0, Lcom/android/calculator2/ColorButton;->mTextY:F

    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 130
    return-void

    .line 119
    .end local v1           #text:Ljava/lang/CharSequence;
    .restart local v7       #animDuration:I
    :cond_36
    invoke-direct {p0, v7, p1}, Lcom/android/calculator2/ColorButton;->drawMagicFlame(ILandroid/graphics/Canvas;)V

    .line 120
    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/android/calculator2/ColorButton;->postInvalidateDelayed(J)V

    goto :goto_1c

    .line 122
    .end local v7           #animDuration:I
    :cond_3f
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 123
    invoke-direct {p0, v2, p1}, Lcom/android/calculator2/ColorButton;->drawMagicFlame(ILandroid/graphics/Canvas;)V

    goto :goto_1c
.end method

.method public onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 77
    iget-object v4, p0, Lcom/android/calculator2/ColorButton;->mButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 78
    .local v3, selfW:I
    iget-object v4, p0, Lcom/android/calculator2/ColorButton;->mButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 79
    .local v2, selfH:I
    sub-int v4, p1, v3

    div-int/lit8 v0, v4, 0x2

    .line 80
    .local v0, marginX:I
    sub-int v4, p2, v2

    div-int/lit8 v1, v4, 0x2

    .line 81
    .local v1, marginY:I
    iget-object v4, p0, Lcom/android/calculator2/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v3

    add-int v6, v1, v2

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object v4, p0, Lcom/android/calculator2/ColorButton;->mButton:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v3

    add-int v6, v1, v2

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->measureText()V

    .line 84
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->measureText()V

    .line 95
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 140
    .local v0, a:I
    if-eqz v0, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 143
    :cond_c
    invoke-virtual {p0}, Lcom/android/calculator2/ColorButton;->invalidate()V

    .line 145
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
