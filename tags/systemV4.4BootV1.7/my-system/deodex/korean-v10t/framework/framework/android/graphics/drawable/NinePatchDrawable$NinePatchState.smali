.class final Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/NinePatchDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NinePatchState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field final mDither:Z

.field final mNinePatch:Landroid/graphics/NinePatch;

.field final mPadding:Landroid/graphics/Rect;

.field mTargetDensity:I


# direct methods
.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "ninePatch"
    .parameter "padding"

    .prologue
    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Z)V

    .line 332
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Z)V
    .registers 5
    .parameter "ninePatch"
    .parameter "rect"
    .parameter "dither"

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 328
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 335
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 336
    iput-object p2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 337
    iput-boolean p3, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 338
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 340
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 328
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 341
    new-instance v0, Landroid/graphics/NinePatch;

    iget-object v1, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-direct {v0, v1}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/NinePatch;)V

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 343
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 344
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 345
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 346
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 347
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    .prologue
    .line 356
    iget v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 351
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/graphics/drawable/NinePatchDrawable$1;)V

    return-object v0
.end method
