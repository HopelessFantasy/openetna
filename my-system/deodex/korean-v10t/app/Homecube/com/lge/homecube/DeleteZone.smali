.class public Lcom/lge/homecube/DeleteZone;
.super Landroid/widget/ImageView;
.source "DeleteZone.java"

# interfaces
.implements Lcom/lge/homecube/DropTarget;
.implements Lcom/lge/homecube/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/DeleteZone$FastAnimationSet;,
        Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final TRANSITION_DURATION:I = 0xfa


# instance fields
.field private mDragLayer:Lcom/lge/homecube/DragLayer;

.field private mHandle:Landroid/view/View;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private mLauncher:Lcom/lge/homecube/Launcher;

.field private final mLocation:[I

.field private mOrientation:I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/RectF;

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mTrashMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mLocation:[I

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/homecube/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lge/homecube/DeleteZone;->mLocation:[I

    .line 52
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lge/homecube/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 68
    sget-object v1, Lcom/lge/homecube/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lge/homecube/DeleteZone;->mOrientation:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method private createAnimations()V
    .registers 11

    .prologue
    .line 171
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_3b

    .line 172
    new-instance v0, Lcom/lge/homecube/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/lge/homecube/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 173
    iget-object v9, p0, Lcom/lge/homecube/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 174
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 175
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 176
    iget v0, p0, Lcom/lge/homecube/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bd

    .line 177
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 185
    :goto_36
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 187
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_3b
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5b

    .line 188
    iget v0, p0, Lcom/lge/homecube/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d0

    .line 189
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 197
    :goto_54
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 199
    :cond_5b
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_96

    .line 200
    new-instance v0, Lcom/lge/homecube/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/lge/homecube/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 201
    iget-object v9, p0, Lcom/lge/homecube/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 202
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 203
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 204
    iget v0, p0, Lcom/lge/homecube/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e2

    .line 205
    new-instance v0, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :goto_91
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 215
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_96
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_bc

    .line 216
    iget v0, p0, Lcom/lge/homecube/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f4

    .line 217
    new-instance v0, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 225
    :goto_af
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 226
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 228
    :cond_bc
    return-void

    .line 181
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_bd
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_36

    .line 193
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_d0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_54

    .line 209
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_e2
    new-instance v0, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_91

    .line 221
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_f4
    new-instance v0, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/lge/homecube/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    goto :goto_af
.end method


# virtual methods
.method public acceptDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-boolean v0, p0, Lcom/lge/homecube/DeleteZone;->mTrashMode:Z

    if-eqz v0, :cond_2f

    .line 159
    iput-boolean v2, p0, Lcom/lge/homecube/DeleteZone;->mTrashMode:Z

    .line 160
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mDragLayer:Lcom/lge/homecube/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/homecube/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 161
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/lge/homecube/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/lge/homecube/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/homecube/DeleteZone;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mLauncherLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 166
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v0, v0, Lcom/lge/homecube/Launcher;->mLauncherLayout:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 168
    :cond_2f
    return-void
.end method

.method public onDragEnter(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 120
    return-void
.end method

.method public onDragExit(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/homecube/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 129
    return-void
.end method

.method public onDragOver(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 124
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/lge/homecube/DragSource;Ljava/lang/Object;I)V
    .registers 15
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 132
    move-object v0, p3

    check-cast v0, Lcom/lge/homecube/ItemInfo;

    move-object v1, v0

    .line 136
    .local v1, item:Lcom/lge/homecube/ItemInfo;
    iget-object v3, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    iget-object v3, v3, Lcom/lge/homecube/Launcher;->mDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v3}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v3

    if-nez v3, :cond_54

    .line 137
    if-eqz v1, :cond_54

    .line 138
    iput-boolean v8, p0, Lcom/lge/homecube/DeleteZone;->mTrashMode:Z

    .line 139
    invoke-direct {p0}, Lcom/lge/homecube/DeleteZone;->createAnimations()V

    .line 140
    iget-object v2, p0, Lcom/lge/homecube/DeleteZone;->mLocation:[I

    .line 141
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/lge/homecube/DeleteZone;->getLocationOnScreen([I)V

    .line 142
    iget-object v3, p0, Lcom/lge/homecube/DeleteZone;->mRegion:Landroid/graphics/RectF;

    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v8

    int-to-float v5, v5

    aget v6, v2, v9

    iget v7, p0, Lcom/lge/homecube/DeleteZone;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/homecube/DeleteZone;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v8

    iget v8, p0, Lcom/lge/homecube/DeleteZone;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/lge/homecube/DeleteZone;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    iget-object v3, p0, Lcom/lge/homecube/DeleteZone;->mDragLayer:Lcom/lge/homecube/DragLayer;

    iget-object v4, p0, Lcom/lge/homecube/DeleteZone;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/lge/homecube/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 145
    iget-object v3, p0, Lcom/lge/homecube/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 146
    iget-object v3, p0, Lcom/lge/homecube/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/lge/homecube/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    iget-object v3, p0, Lcom/lge/homecube/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/lge/homecube/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    invoke-virtual {p0, v9}, Lcom/lge/homecube/DeleteZone;->setVisibility(I)V

    .line 153
    .end local v2           #location:[I
    :cond_54
    return-void
.end method

.method public onDrop(Lcom/lge/homecube/DragSource;IIIILjava/lang/Object;)V
    .registers 18
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 85
    move-object/from16 v0, p6

    check-cast v0, Lcom/lge/homecube/ItemInfo;

    move-object v2, v0

    .line 87
    .local v2, item:Lcom/lge/homecube/ItemInfo;
    iget-wide v7, v2, Lcom/lge/homecube/ItemInfo;->container:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    .line 115
    :goto_d
    return-void

    .line 89
    :cond_e
    invoke-static {}, Lcom/lge/homecube/Launcher;->getModel()Lcom/lge/homecube/LauncherModel;

    move-result-object v4

    .line 90
    .local v4, model:Lcom/lge/homecube/LauncherModel;
    iget-wide v7, v2, Lcom/lge/homecube/ItemInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-nez v7, :cond_3f

    .line 91
    instance-of v7, v2, Lcom/lge/homecube/LauncherAppWidgetInfo;

    if-eqz v7, :cond_3b

    .line 92
    move-object v0, v2

    check-cast v0, Lcom/lge/homecube/LauncherAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/lge/homecube/LauncherModel;->removeDesktopAppWidget(Lcom/lge/homecube/LauncherAppWidgetInfo;)V

    .line 103
    :cond_25
    :goto_25
    instance-of v7, v2, Lcom/lge/homecube/UserFolderInfo;

    if-eqz v7, :cond_51

    .line 104
    move-object v0, v2

    check-cast v0, Lcom/lge/homecube/UserFolderInfo;

    move-object v6, v0

    .line 105
    .local v6, userFolderInfo:Lcom/lge/homecube/UserFolderInfo;
    iget-object v7, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-static {v7, v6}, Lcom/lge/homecube/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/lge/homecube/UserFolderInfo;)V

    .line 106
    invoke-virtual {v4, v6}, Lcom/lge/homecube/LauncherModel;->removeUserFolder(Lcom/lge/homecube/UserFolderInfo;)V

    .line 114
    .end local v6           #userFolderInfo:Lcom/lge/homecube/UserFolderInfo;
    :cond_35
    :goto_35
    iget-object v7, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-static {v7, v2}, Lcom/lge/homecube/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/lge/homecube/ItemInfo;)V

    goto :goto_d

    .line 94
    :cond_3b
    invoke-virtual {v4, v2}, Lcom/lge/homecube/LauncherModel;->removeDesktopItem(Lcom/lge/homecube/ItemInfo;)V

    goto :goto_25

    .line 97
    :cond_3f
    instance-of v7, p1, Lcom/lge/homecube/UserFolder;

    if-eqz v7, :cond_25

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/lge/homecube/UserFolder;

    move-object v5, v0

    .line 99
    .local v5, userFolder:Lcom/lge/homecube/UserFolder;
    invoke-virtual {v5}, Lcom/lge/homecube/UserFolder;->getInfo()Lcom/lge/homecube/FolderInfo;

    move-result-object v6

    check-cast v6, Lcom/lge/homecube/UserFolderInfo;

    .line 100
    .restart local v6       #userFolderInfo:Lcom/lge/homecube/UserFolderInfo;
    invoke-virtual {v4, v6, v2}, Lcom/lge/homecube/LauncherModel;->removeUserFolderItem(Lcom/lge/homecube/UserFolderInfo;Lcom/lge/homecube/ItemInfo;)V

    goto :goto_25

    .line 107
    .end local v5           #userFolder:Lcom/lge/homecube/UserFolder;
    .end local v6           #userFolderInfo:Lcom/lge/homecube/UserFolderInfo;
    :cond_51
    instance-of v7, v2, Lcom/lge/homecube/LauncherAppWidgetInfo;

    if-eqz v7, :cond_35

    .line 108
    move-object v0, v2

    check-cast v0, Lcom/lge/homecube/LauncherAppWidgetInfo;

    move-object v3, v0

    .line 109
    .local v3, launcherAppWidgetInfo:Lcom/lge/homecube/LauncherAppWidgetInfo;
    iget-object v7, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    invoke-virtual {v7}, Lcom/lge/homecube/Launcher;->getAppWidgetHost()Lcom/lge/homecube/LauncherAppWidgetHost;

    move-result-object v1

    .line 110
    .local v1, appWidgetHost:Lcom/lge/homecube/LauncherAppWidgetHost;
    if-eqz v1, :cond_35

    .line 111
    iget v7, v3, Lcom/lge/homecube/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v7}, Lcom/lge/homecube/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_35
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 76
    invoke-virtual {p0}, Lcom/lge/homecube/DeleteZone;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/lge/homecube/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 77
    return-void
.end method

.method setDragController(Lcom/lge/homecube/DragLayer;)V
    .registers 2
    .parameter "dragLayer"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/lge/homecube/DeleteZone;->mDragLayer:Lcom/lge/homecube/DragLayer;

    .line 236
    return-void
.end method

.method setHandle(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/lge/homecube/DeleteZone;->mHandle:Landroid/view/View;

    .line 240
    return-void
.end method

.method setLauncher(Lcom/lge/homecube/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/lge/homecube/DeleteZone;->mLauncher:Lcom/lge/homecube/Launcher;

    .line 232
    return-void
.end method
