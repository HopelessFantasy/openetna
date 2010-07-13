.class public Lcom/android/launcher/DeleteZone;
.super Landroid/widget/ImageView;
.source "DeleteZone.java"

# interfaces
.implements Lcom/android/launcher/DropTarget;
.implements Lcom/android/launcher/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/DeleteZone$FastAnimationSet;,
        Lcom/android/launcher/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final TRANSITION_DURATION:I = 0xfa


# instance fields
.field private mDragLayer:Lcom/android/launcher/DragLayer;

.field private mHandle:Landroid/view/View;

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private mLauncher:Lcom/android/launcher/Launcher;

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
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mLocation:[I

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher/DeleteZone;->mLocation:[I

    .line 51
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 66
    sget-object v1, Lcom/android/launcher/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/DeleteZone;->mOrientation:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private createAnimations()V
    .registers 11

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_3b

    .line 162
    new-instance v0, Lcom/android/launcher/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/android/launcher/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 163
    iget-object v9, p0, Lcom/android/launcher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 164
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 165
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 166
    iget v0, p0, Lcom/android/launcher/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bd

    .line 167
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

    .line 175
    :goto_36
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 177
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_3b
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5b

    .line 178
    iget v0, p0, Lcom/android/launcher/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d0

    .line 179
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

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 187
    :goto_54
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    :cond_5b
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_96

    .line 190
    new-instance v0, Lcom/android/launcher/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/android/launcher/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 191
    iget-object v9, p0, Lcom/android/launcher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 192
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 193
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 194
    iget v0, p0, Lcom/android/launcher/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e2

    .line 195
    new-instance v0, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    :goto_91
    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 205
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_96
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_bc

    .line 206
    iget v0, p0, Lcom/android/launcher/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f4

    .line 207
    new-instance v0, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 215
    :goto_af
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 218
    :cond_bc
    return-void

    .line 171
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

    .line 183
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

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_54

    .line 199
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_e2
    new-instance v0, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_91

    .line 211
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_f4
    new-instance v0, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    goto :goto_af
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)Z
    .registers 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public estimateDropLocation(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"
    .parameter "recycle"

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDragEnd()V
    .registers 3

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/launcher/DeleteZone;->mTrashMode:Z

    if-eqz v0, :cond_1e

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/DeleteZone;->mTrashMode:Z

    .line 153
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mDragLayer:Lcom/android/launcher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 154
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/android/launcher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher/DeleteZone;->setVisibility(I)V

    .line 158
    :cond_1e
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 122
    return-void
.end method

.method public onDragExit(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 131
    return-void
.end method

.method public onDragOver(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 126
    return-void
.end method

.method public onDragStart(Landroid/view/View;Lcom/android/launcher/DragSource;Ljava/lang/Object;I)V
    .registers 15
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 134
    move-object v0, p3

    check-cast v0, Lcom/android/launcher/ItemInfo;

    move-object v1, v0

    .line 135
    .local v1, item:Lcom/android/launcher/ItemInfo;
    if-eqz v1, :cond_4a

    .line 136
    iput-boolean v8, p0, Lcom/android/launcher/DeleteZone;->mTrashMode:Z

    .line 137
    invoke-direct {p0}, Lcom/android/launcher/DeleteZone;->createAnimations()V

    .line 138
    iget-object v2, p0, Lcom/android/launcher/DeleteZone;->mLocation:[I

    .line 139
    .local v2, location:[I
    invoke-virtual {p0, v2}, Lcom/android/launcher/DeleteZone;->getLocationOnScreen([I)V

    .line 140
    iget-object v3, p0, Lcom/android/launcher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    aget v4, v2, v9

    int-to-float v4, v4

    aget v5, v2, v8

    int-to-float v5, v5

    aget v6, v2, v9

    iget v7, p0, Lcom/android/launcher/DeleteZone;->mRight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/launcher/DeleteZone;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aget v7, v2, v8

    iget v8, p0, Lcom/android/launcher/DeleteZone;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/launcher/DeleteZone;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 142
    iget-object v3, p0, Lcom/android/launcher/DeleteZone;->mDragLayer:Lcom/android/launcher/DragLayer;

    iget-object v4, p0, Lcom/android/launcher/DeleteZone;->mRegion:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Lcom/android/launcher/DragLayer;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 143
    iget-object v3, p0, Lcom/android/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 144
    iget-object v3, p0, Lcom/android/launcher/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Lcom/android/launcher/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 145
    iget-object v3, p0, Lcom/android/launcher/DeleteZone;->mHandle:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    invoke-virtual {p0, v9}, Lcom/android/launcher/DeleteZone;->setVisibility(I)V

    .line 148
    .end local v2           #location:[I
    :cond_4a
    return-void
.end method

.method public onDrop(Lcom/android/launcher/DragSource;IIIILjava/lang/Object;)V
    .registers 18
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 87
    move-object/from16 v0, p6

    check-cast v0, Lcom/android/launcher/ItemInfo;

    move-object v2, v0

    .line 89
    .local v2, item:Lcom/android/launcher/ItemInfo;
    iget-wide v7, v2, Lcom/android/launcher/ItemInfo;->container:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_e

    .line 117
    :goto_d
    return-void

    .line 91
    :cond_e
    invoke-static {}, Lcom/android/launcher/Launcher;->getModel()Lcom/android/launcher/LauncherModel;

    move-result-object v4

    .line 92
    .local v4, model:Lcom/android/launcher/LauncherModel;
    iget-wide v7, v2, Lcom/android/launcher/ItemInfo;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-nez v7, :cond_3f

    .line 93
    instance-of v7, v2, Lcom/android/launcher/LauncherAppWidgetInfo;

    if-eqz v7, :cond_3b

    .line 94
    move-object v0, v2

    check-cast v0, Lcom/android/launcher/LauncherAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/android/launcher/LauncherModel;->removeDesktopAppWidget(Lcom/android/launcher/LauncherAppWidgetInfo;)V

    .line 105
    :cond_25
    :goto_25
    instance-of v7, v2, Lcom/android/launcher/UserFolderInfo;

    if-eqz v7, :cond_51

    .line 106
    move-object v0, v2

    check-cast v0, Lcom/android/launcher/UserFolderInfo;

    move-object v6, v0

    .line 107
    .local v6, userFolderInfo:Lcom/android/launcher/UserFolderInfo;
    iget-object v7, p0, Lcom/android/launcher/DeleteZone;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7, v6}, Lcom/android/launcher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher/UserFolderInfo;)V

    .line 108
    invoke-virtual {v4, v6}, Lcom/android/launcher/LauncherModel;->removeUserFolder(Lcom/android/launcher/UserFolderInfo;)V

    .line 116
    .end local v6           #userFolderInfo:Lcom/android/launcher/UserFolderInfo;
    :cond_35
    :goto_35
    iget-object v7, p0, Lcom/android/launcher/DeleteZone;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7, v2}, Lcom/android/launcher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher/ItemInfo;)V

    goto :goto_d

    .line 96
    :cond_3b
    invoke-virtual {v4, v2}, Lcom/android/launcher/LauncherModel;->removeDesktopItem(Lcom/android/launcher/ItemInfo;)V

    goto :goto_25

    .line 99
    :cond_3f
    instance-of v7, p1, Lcom/android/launcher/UserFolder;

    if-eqz v7, :cond_25

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/android/launcher/UserFolder;

    move-object v5, v0

    .line 101
    .local v5, userFolder:Lcom/android/launcher/UserFolder;
    invoke-virtual {v5}, Lcom/android/launcher/UserFolder;->getInfo()Lcom/android/launcher/FolderInfo;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/UserFolderInfo;

    .line 102
    .restart local v6       #userFolderInfo:Lcom/android/launcher/UserFolderInfo;
    invoke-virtual {v4, v6, v2}, Lcom/android/launcher/LauncherModel;->removeUserFolderItem(Lcom/android/launcher/UserFolderInfo;Lcom/android/launcher/ItemInfo;)V

    goto :goto_25

    .line 109
    .end local v5           #userFolder:Lcom/android/launcher/UserFolder;
    .end local v6           #userFolderInfo:Lcom/android/launcher/UserFolderInfo;
    :cond_51
    instance-of v7, v2, Lcom/android/launcher/LauncherAppWidgetInfo;

    if-eqz v7, :cond_35

    .line 110
    move-object v0, v2

    check-cast v0, Lcom/android/launcher/LauncherAppWidgetInfo;

    move-object v3, v0

    .line 111
    .local v3, launcherAppWidgetInfo:Lcom/android/launcher/LauncherAppWidgetInfo;
    iget-object v7, p0, Lcom/android/launcher/DeleteZone;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher/Launcher;->getAppWidgetHost()Lcom/android/launcher/LauncherAppWidgetHost;

    move-result-object v1

    .line 112
    .local v1, appWidgetHost:Lcom/android/launcher/LauncherAppWidgetHost;
    if-eqz v1, :cond_35

    .line 113
    iget v7, v3, Lcom/android/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v7}, Lcom/android/launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_35
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher/DeleteZone;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 75
    return-void
.end method

.method setDragController(Lcom/android/launcher/DragLayer;)V
    .registers 2
    .parameter "dragLayer"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/launcher/DeleteZone;->mDragLayer:Lcom/android/launcher/DragLayer;

    .line 226
    return-void
.end method

.method setHandle(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/launcher/DeleteZone;->mHandle:Landroid/view/View;

    .line 230
    return-void
.end method

.method setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/launcher/DeleteZone;->mLauncher:Lcom/android/launcher/Launcher;

    .line 222
    return-void
.end method
