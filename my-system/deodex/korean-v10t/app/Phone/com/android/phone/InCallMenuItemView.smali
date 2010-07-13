.class Lcom/android/phone/InCallMenuItemView;
.super Landroid/widget/TextView;
.source "InCallMenuItemView.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/InCallMenuItemView"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorState:Z

.field private mIndicatorVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuItemView;->setGravity(I)V

    .line 53
    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 59
    .local v1, textAppearance:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallMenuItemView;->setClickable(Z)V

    .line 63
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuItemView;->setFocusable(Z)V

    .line 65
    invoke-virtual {p0, p1, v1}, Lcom/android/phone/InCallMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 68
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuItemView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallMenuItemView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallMenuItemView;->setSingleLine(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v4, v2, v4, v3}, Lcom/android/phone/InCallMenuItemView;->setPadding(IIII)V

    .line 74
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 199
    const-string v0, "PHONE/InCallMenuItemView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private updateCompoundDrawables()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    .line 159
    const/16 v2, -0xa

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuItemView;->setCompoundDrawablePadding(I)V

    .line 166
    :cond_c
    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_21

    move v1, v4

    .line 167
    .local v1, topPadding:I
    :goto_11
    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_23

    move v0, v4

    .line 168
    .local v0, bottomPadding:I
    :goto_16
    invoke-virtual {p0, v3, v1, v3, v0}, Lcom/android/phone/InCallMenuItemView;->setPadding(IIII)V

    .line 177
    iget-object v2, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v5, v3}, Lcom/android/phone/InCallMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void

    .end local v0           #bottomPadding:I
    .end local v1           #topPadding:I
    :cond_21
    move v1, v3

    .line 166
    goto :goto_11

    .restart local v1       #topPadding:I
    :cond_23
    move v0, v3

    .line 167
    goto :goto_16
.end method

.method private updateIndicator()V
    .registers 3

    .prologue
    .line 137
    iget-boolean v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorVisible:Z

    if-eqz v1, :cond_1c

    .line 138
    iget-boolean v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorState:Z

    if-eqz v1, :cond_17

    const v1, 0x108000d

    move v0, v1

    .line 140
    .local v0, resId:I
    :goto_c
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    .end local v0           #resId:I
    :goto_16
    return-void

    .line 138
    :cond_17
    const v1, 0x108000e

    move v0, v1

    goto :goto_c

    .line 142
    :cond_1c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_16
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/InCallMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 115
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    .line 122
    return-void
.end method

.method public setIconResource(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, iconDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public setIndicatorState(Z)V
    .registers 2
    .parameter "onoff"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorState:Z

    .line 105
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateIndicator()V

    .line 106
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    .line 107
    return-void
.end method

.method public setIndicatorVisible(Z)V
    .registers 2
    .parameter "isVisible"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/phone/InCallMenuItemView;->mIndicatorVisible:Z

    .line 95
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateIndicator()V

    .line 96
    invoke-direct {p0}, Lcom/android/phone/InCallMenuItemView;->updateCompoundDrawables()V

    .line 97
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .parameter "isVisible"

    .prologue
    .line 81
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallMenuItemView;->setVisibility(I)V

    .line 82
    return-void

    .line 81
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
