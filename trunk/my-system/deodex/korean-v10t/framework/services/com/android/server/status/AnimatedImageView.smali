.class public Lcom/android/server/status/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private updateAnim()V
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/android/server/status/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 25
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/server/status/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_11

    .line 26
    iget-object v1, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 28
    :cond_11
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_23

    .line 29
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 30
    iget-boolean v1, p0, Lcom/android/server/status/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_22

    .line 31
    iget-object v1, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 36
    :cond_22
    :goto_22
    return-void

    .line 34
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_23
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_22
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 54
    iget-object v0, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 57
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/status/AnimatedImageView;->mAttached:Z

    .line 58
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 63
    iget-object v0, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/android/server/status/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 66
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/status/AnimatedImageView;->mAttached:Z

    .line 67
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "drawable"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-direct {p0}, Lcom/android/server/status/AnimatedImageView;->updateAnim()V

    .line 42
    return-void
.end method

.method public setImageResource(I)V
    .registers 2
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/server/status/AnimatedImageView;->updateAnim()V

    .line 49
    return-void
.end method
