.class Landroid/graphics/drawable/TransitionDrawable$TransitionState;
.super Landroid/graphics/drawable/LayerDrawable$LayerState;
.source "TransitionDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/TransitionDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionState"
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;)V
    .registers 3
    .parameter "orig"
    .parameter "owner"

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;)V

    .line 234
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable$1;)V

    return-object v0
.end method
