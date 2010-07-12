.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePaddingRight:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    .line 67
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_14
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 71
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 251
    .local v0, populated:Z
    if-nez v0, :cond_b

    .line 252
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 254
    :cond_b
    return v0
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 238
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 239
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 242
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 244
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    .line 246
    .end local v0           #myDrawableState:[I
    :cond_13
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 227
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 228
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 229
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 231
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 177
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    .local v0, checkMarkDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2e

    .line 179
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v5

    and-int/lit8 v3, v5, 0x70

    .line 180
    .local v3, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 182
    .local v1, height:I
    const/4 v4, 0x0

    .line 184
    .local v4, y:I
    sparse-switch v3, :sswitch_data_54

    .line 202
    :goto_15
    const/4 v2, 0x0

    .line 203
    .local v2, offset:I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isCurrentRTLanguage()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 204
    iget v5, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v6, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    add-int v2, v5, v6

    .line 205
    iget v5, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v5, v2, v5

    add-int v6, v4, v1

    invoke-virtual {v0, v5, v4, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 221
    :goto_2b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 223
    .end local v1           #height:I
    .end local v2           #offset:I
    .end local v3           #verticalGravity:I
    .end local v4           #y:I
    :cond_2e
    return-void

    .line 186
    .restart local v1       #height:I
    .restart local v3       #verticalGravity:I
    .restart local v4       #y:I
    :sswitch_2f
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v5

    sub-int v4, v5, v1

    .line 187
    goto :goto_15

    .line 189
    :sswitch_36
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v1

    div-int/lit8 v4, v5, 0x2

    goto :goto_15

    .line 211
    .restart local v2       #offset:I
    :cond_3e
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v2

    .line 212
    iget v5, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v5, v2, v5

    iget v6, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    sub-int v6, v2, v6

    add-int v7, v4, v1

    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2b

    .line 184
    nop

    :sswitch_data_54
    .sparse-switch
        0x10 -> :sswitch_36
        0x50 -> :sswitch_2f
    .end sparse-switch
.end method

.method public setCheckMarkDrawable(I)V
    .registers 5
    .parameter "resid"

    .prologue
    .line 104
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_7

    .line 115
    :goto_6
    return-void

    .line 108
    :cond_7
    iput p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_18

    .line 112
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    :cond_18
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 123
    if-eqz p1, :cond_55

    .line 124
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 125
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 126
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p1, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 130
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 131
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 141
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isCurrentRTLanguage()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 142
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    .line 149
    :goto_3e
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 150
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    :goto_47
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 165
    return-void

    :cond_4b
    move v0, v2

    .line 129
    goto :goto_1c

    .line 144
    :cond_4d
    iget v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v1, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    goto :goto_3e

    .line 155
    :cond_55
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isCurrentRTLanguage()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 156
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    goto :goto_47

    .line 158
    :cond_60
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    goto :goto_47
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 91
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 92
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 94
    :cond_9
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePaddingRight:I

    .line 171
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 78
    return-void

    .line 77
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
