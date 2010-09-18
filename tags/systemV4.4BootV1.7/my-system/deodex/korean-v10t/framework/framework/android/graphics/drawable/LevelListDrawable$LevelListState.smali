.class final Landroid/graphics/drawable/LevelListDrawable$LevelListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "LevelListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LevelListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LevelListState"
.end annotation


# instance fields
.field private mHighs:[I

.field private mLows:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable;)V
    .registers 4
    .parameter "orig"
    .parameter "owner"

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;)V

    .line 160
    if-eqz p1, :cond_e

    .line 161
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 162
    iget-object v0, p1, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 167
    :goto_d
    return-void

    .line 164
    :cond_e
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    goto :goto_d
.end method

.method static synthetic access$000(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/LevelListDrawable$LevelListState;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    return-object p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/LevelListDrawable$LevelListState;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/LevelListDrawable$LevelListState;[I)[I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    return-object p1
.end method


# virtual methods
.method public addLevel(IILandroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter "low"
    .parameter "high"
    .parameter "drawable"

    .prologue
    .line 170
    invoke-virtual {p0, p3}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 171
    .local v0, pos:I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    aput p1, v1, v0

    .line 172
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    aput p2, v1, v0

    .line 173
    return-void
.end method

.method public growArray(II)V
    .registers 6
    .parameter "oldSize"
    .parameter "newSize"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 195
    new-array v0, p2, [I

    .line 196
    .local v0, newInts:[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 198
    new-array v0, p2, [I

    .line 199
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iput-object v0, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 201
    return-void
.end method

.method public indexOfLevel(I)I
    .registers 7
    .parameter "level"

    .prologue
    .line 176
    iget-object v3, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mLows:[I

    .line 177
    .local v3, lows:[I
    iget-object v1, p0, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->mHighs:[I

    .line 178
    .local v1, highs:[I
    invoke-virtual {p0}, Landroid/graphics/drawable/LevelListDrawable$LevelListState;->getChildCount()I

    move-result v0

    .line 179
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v0, :cond_18

    .line 180
    aget v4, v3, v2

    if-lt p1, v4, :cond_15

    aget v4, v1, v2

    if-gt p1, v4, :cond_15

    move v4, v2

    .line 184
    :goto_14
    return v4

    .line 179
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 184
    :cond_18
    const/4 v4, -0x1

    goto :goto_14
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 189
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>(Landroid/graphics/drawable/LevelListDrawable$LevelListState;Landroid/graphics/drawable/LevelListDrawable$1;)V

    return-object v0
.end method
