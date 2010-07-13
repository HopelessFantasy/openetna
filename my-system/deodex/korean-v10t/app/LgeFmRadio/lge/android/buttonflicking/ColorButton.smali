.class public Llge/android/buttonflicking/ColorButton;
.super Landroid/widget/Button;
.source "ColorButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final BUTTON_STATE_CHANNEL_FREQ:I = 0x1e

.field static final BUTTON_STATE_CHANNEL_NORMAL:I = 0xa

.field static final BUTTON_STATE_CHANNEL_NUM:I = 0x14

.field static final CLICK_FEEDBACK_DURATION:I = 0x15e

.field static final CLICK_FEEDBACK_INTERVAL:I = 0xa

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"


# instance fields
.field CLICK_FEEDBACK_COLOR:I

.field private final INDEX_CHANNEL_X:I

.field private final INDEX_CHANNEL_Y:I

.field private final INDEX_FREQ_LARGE_NUM_X:I

.field private final INDEX_FREQ_LARGE_NUM_Y:I

.field private final INDEX_FREQ_X:I

.field private final INDEX_FREQ_Y:I

.field private final INDEX_SUB_CHANNEL_X:I

.field private final INDEX_SUB_CHANNEL_Y:I

.field mAnimStart:J

.field mButtonBackground:Landroid/graphics/drawable/Drawable;

.field mButtonClicked:Landroid/graphics/drawable/Drawable;

.field private mChannelTextPaint:Landroid/graphics/Paint;

.field private mFrequencyTextPaint:Landroid/graphics/Paint;

.field mListener:Landroid/view/View$OnClickListener;

.field mTextX:F

.field mTextY:F

.field mnChannelNum:I

.field mnCurrentButtonState:I

.field mstrChannelFreq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v2, 0x12

    const/16 v1, 0xa

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/16 v0, 0x29

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->INDEX_CHANNEL_X:I

    .line 60
    const/16 v0, 0x28

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->INDEX_CHANNEL_Y:I

    .line 62
    iput v1, p0, Llge/android/buttonflicking/ColorButton;->INDEX_SUB_CHANNEL_X:I

    .line 63
    iput v2, p0, Llge/android/buttonflicking/ColorButton;->INDEX_SUB_CHANNEL_Y:I

    .line 65
    iput v2, p0, Llge/android/buttonflicking/ColorButton;->INDEX_FREQ_X:I

    .line 66
    const/16 v0, 0x22

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->INDEX_FREQ_Y:I

    .line 67
    const/16 v0, 0x16

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->INDEX_FREQ_LARGE_NUM_X:I

    .line 68
    const/16 v0, 0x24

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->INDEX_FREQ_LARGE_NUM_Y:I

    .line 79
    iput v1, p0, Llge/android/buttonflicking/ColorButton;->mnCurrentButtonState:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->mnChannelNum:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Llge/android/buttonflicking/ColorButton;->mstrChannelFreq:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Llge/android/buttonflicking/ColorButton;->init()V

    .line 89
    check-cast p1, Llge/android/fmradio/FmRadioView;

    .end local p1
    iget-object v0, p1, Llge/android/fmradio/FmRadioView;->mListener:Llge/android/buttonflicking/EventListener;

    iput-object v0, p0, Llge/android/buttonflicking/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    .line 90
    invoke-virtual {p0, p0}, Llge/android/buttonflicking/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private drawButtonString(Landroid/graphics/Canvas;Z)V
    .registers 9
    .parameter "canvas"
    .parameter "bPressed"

    .prologue
    const/high16 v5, 0x4210

    const/high16 v3, 0x41b0

    const/high16 v4, 0x4190

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, mText:Ljava/lang/String;
    iget v1, p0, Llge/android/buttonflicking/ColorButton;->mnCurrentButtonState:I

    sparse-switch v1, :sswitch_data_92

    .line 215
    :goto_c
    return-void

    .line 181
    :sswitch_d
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 182
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    const v2, -0x909091

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    iget v1, p0, Llge/android/buttonflicking/ColorButton;->mnChannelNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4224

    const/high16 v3, 0x4220

    iget-object v4, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 190
    :sswitch_31
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 193
    const/4 v1, 0x1

    if-ne p2, v1, :cond_73

    .line 195
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    const v2, -0xb0b0b1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 196
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    :goto_50
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mstrChannelFreq:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_83

    .line 205
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 206
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mstrChannelFreq:Ljava/lang/String;

    iget-object v2, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 211
    :goto_65
    iget v1, p0, Llge/android/buttonflicking/ColorButton;->mnChannelNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x4120

    iget-object v3, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_c

    .line 200
    :cond_73
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    const v2, -0x79797a

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_50

    .line 208
    :cond_83
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mstrChannelFreq:Ljava/lang/String;

    const/high16 v2, 0x4208

    iget-object v3, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_65

    .line 177
    :sswitch_data_92
    .sparse-switch
        0x14 -> :sswitch_d
        0x1e -> :sswitch_31
    .end sparse-switch
.end method

.method private drawMagicFlame(ILandroid/graphics/Canvas;)V
    .registers 11
    .parameter "duration"
    .parameter "canvas"

    .prologue
    .line 161
    const/16 v5, 0xff

    mul-int/lit16 v6, p1, 0xff

    div-int/lit16 v6, v6, 0x15e

    sub-int v0, v5, v6

    .line 162
    .local v0, alpha:I
    iget v5, p0, Llge/android/buttonflicking/ColorButton;->CLICK_FEEDBACK_COLOR:I

    shl-int/lit8 v6, v0, 0x18

    or-int v2, v5, v6

    .line 163
    .local v2, color:I
    iget-object v5, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v2, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 165
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 166
    .local v3, cx:I
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getHeight()I

    move-result v5

    div-int/lit8 v4, v5, 0x2

    .line 167
    .local v4, cy:I
    const/high16 v5, 0x437a

    int-to-float v6, p1

    mul-float/2addr v5, v6

    const/high16 v6, 0x43af

    div-float v1, v5, v6

    .line 168
    .local v1, angle:F
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p2, v1, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 169
    iget-object v5, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    neg-float v5, v1

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {p2, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 171
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Llge/android/buttonflicking/ColorButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 104
    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Llge/android/buttonflicking/ColorButton;->mButtonClicked:Landroid/graphics/drawable/Drawable;

    .line 109
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Llge/android/buttonflicking/ColorButton;->CLICK_FEEDBACK_COLOR:I

    .line 110
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 112
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Llge/android/buttonflicking/ColorButton;->mAnimStart:J

    .line 116
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mChannelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v1, p0, Llge/android/buttonflicking/ColorButton;->mFrequencyTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    return-void
.end method

.method private measureText()V
    .registers 5

    .prologue
    const/high16 v3, 0x4000

    .line 150
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 151
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Llge/android/buttonflicking/ColorButton;->mTextX:F

    .line 152
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Llge/android/buttonflicking/ColorButton;->mTextY:F

    .line 153
    return-void
.end method


# virtual methods
.method public SetTextChannelNum(I)V
    .registers 3
    .parameter "nChannelNum"

    .prologue
    .line 124
    const/16 v0, 0x14

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->mnCurrentButtonState:I

    .line 126
    iput p1, p0, Llge/android/buttonflicking/ColorButton;->mnChannelNum:I

    .line 127
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->invalidate()V

    .line 128
    return-void
.end method

.method public SetTextFrequency(ILjava/lang/String;)V
    .registers 4
    .parameter "nChannelNum"
    .parameter "strFreq"

    .prologue
    .line 131
    const/16 v0, 0x1e

    iput v0, p0, Llge/android/buttonflicking/ColorButton;->mnCurrentButtonState:I

    .line 133
    iput p1, p0, Llge/android/buttonflicking/ColorButton;->mnChannelNum:I

    .line 134
    iput-object p2, p0, Llge/android/buttonflicking/ColorButton;->mstrChannelFreq:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->invalidate()V

    .line 136
    return-void
.end method

.method public animateClickFeedback()V
    .registers 3

    .prologue
    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llge/android/buttonflicking/ColorButton;->mAnimStart:J

    .line 287
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->invalidate()V

    .line 288
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 94
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->animateClickFeedback()V

    .line 95
    iget-object v0, p0, Llge/android/buttonflicking/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 219
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 222
    iget-object v0, p0, Llge/android/buttonflicking/ColorButton;->mButtonClicked:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 231
    :goto_b
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->isPressed()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Llge/android/buttonflicking/ColorButton;->drawButtonString(Landroid/graphics/Canvas;Z)V

    .line 283
    return-void

    .line 226
    :cond_13
    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Llge/android/buttonflicking/ColorButton;->postInvalidateDelayed(J)V

    .line 228
    iget-object v0, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method public onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 140
    iget-object v4, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 141
    .local v3, selfW:I
    iget-object v4, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 142
    .local v2, selfH:I
    sub-int v4, p1, v3

    div-int/lit8 v0, v4, 0x2

    .line 143
    .local v0, marginX:I
    sub-int v4, p2, v2

    div-int/lit8 v1, v4, 0x2

    .line 144
    .local v1, marginY:I
    iget-object v4, p0, Llge/android/buttonflicking/ColorButton;->mButtonBackground:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v3

    add-int v6, v1, v2

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v4, p0, Llge/android/buttonflicking/ColorButton;->mButtonClicked:Landroid/graphics/drawable/Drawable;

    add-int v5, v0, v3

    add-int v6, v1, v2

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 146
    invoke-direct {p0}, Llge/android/buttonflicking/ColorButton;->measureText()V

    .line 147
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 157
    invoke-direct {p0}, Llge/android/buttonflicking/ColorButton;->measureText()V

    .line 158
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 293
    .local v0, a:I
    if-eqz v0, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 297
    :cond_c
    const-string v1, "FM RADIO"

    const-string v2, "[ColorButton][onTouchEvent]MotionEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Llge/android/buttonflicking/ColorButton;->invalidate()V

    .line 300
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method
