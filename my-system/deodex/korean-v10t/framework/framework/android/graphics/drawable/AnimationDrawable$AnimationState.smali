.class final Landroid/graphics/drawable/AnimationDrawable$AnimationState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "AnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimationState"
.end annotation


# instance fields
.field private mDurations:[I

.field private mOneShot:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 4
    .parameter "orig"
    .parameter "owner"

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;)V

    .line 303
    if-eqz p1, :cond_e

    .line 304
    iget-object v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 305
    iget-boolean v0, p1, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    .line 310
    :goto_d
    return-void

    .line 307
    :cond_e
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    goto :goto_d
.end method

.method static synthetic access$000(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/AnimationDrawable$AnimationState;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 296
    iput-object p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    return-object p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/AnimationDrawable$AnimationState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 296
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 296
    iput-boolean p1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mOneShot:Z

    return p1
.end method


# virtual methods
.method public addFrame(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .parameter "dr"
    .parameter "dur"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 321
    .local v0, pos:I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    aput p2, v1, v0

    .line 322
    return-void
.end method

.method public growArray(II)V
    .registers 6
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 327
    new-array v0, p2, [I

    .line 328
    .local v0, newDurations:[I
    iget-object v1, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iput-object v0, p0, Landroid/graphics/drawable/AnimationDrawable$AnimationState;->mDurations:[I

    .line 330
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 314
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>(Landroid/graphics/drawable/AnimationDrawable$AnimationState;Landroid/graphics/drawable/AnimationDrawable$1;)V

    return-object v0
.end method
