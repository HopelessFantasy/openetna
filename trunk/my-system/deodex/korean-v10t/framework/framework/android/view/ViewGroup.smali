.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field private static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mCachePaint:Landroid/graphics/Paint;

.field private mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mMotionTarget:Landroid/view/View;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 217
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 278
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 283
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 284
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 288
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    .line 274
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 289
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 290
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 3096
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3098
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_b

    .line 3099
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3102
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3103
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .registers 9
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 1908
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1909
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1910
    .local v1, count:I
    array-length v2, v0

    .line 1911
    .local v2, size:I
    if-ne p2, v1, :cond_20

    .line 1912
    if-ne v2, v1, :cond_17

    .line 1913
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1914
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1915
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1917
    :cond_17
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 1932
    :goto_1f
    return-void

    .line 1918
    :cond_20
    if-ge p2, v1, :cond_4b

    .line 1919
    if-ne v2, v1, :cond_43

    .line 1920
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1921
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1922
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1923
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1927
    :goto_3a
    aput-object p1, v0, p2

    .line 1928
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_1f

    .line 1925
    :cond_43
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 1930
    :cond_4b
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 10
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 1855
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1856
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1860
    :cond_10
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1861
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1864
    :cond_1a
    if-eqz p4, :cond_69

    .line 1865
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 1870
    :goto_1e
    if-gez p2, :cond_22

    .line 1871
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1874
    :cond_22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 1877
    if-eqz p4, :cond_6d

    .line 1878
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 1883
    :goto_2a
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1884
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1887
    :cond_37
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 1888
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_53

    .line 1889
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1890
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1891
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1892
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_51

    .line 1893
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 1895
    :cond_51
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1898
    .end local v1           #lastKeepOn:Z
    :cond_53
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_5c

    .line 1899
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 1902
    :cond_5c
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_68

    .line 1903
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1905
    :cond_68
    return-void

    .line 1867
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_69
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1e

    .line 1880
    :cond_6d
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_2a
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1984
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1985
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1986
    return-void
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 3113
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 3114
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1f

    .line 3115
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3116
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3118
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_16

    .line 3119
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3122
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3123
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3127
    :cond_1f
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 3128
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3131
    :cond_2a
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 3132
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 3135
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3137
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3139
    :cond_40
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .registers 12
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 3012
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3013
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 3015
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3017
    .local v2, size:I
    const/4 v1, 0x0

    .line 3018
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 3020
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_50

    .line 3076
    :cond_16
    :goto_16
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 3023
    :sswitch_1b
    if-ltz p2, :cond_21

    .line 3024
    move v1, p2

    .line 3025
    const/high16 v0, 0x4000

    goto :goto_16

    .line 3026
    :cond_21
    if-ne p2, v8, :cond_27

    .line 3028
    move v1, v2

    .line 3029
    const/high16 v0, 0x4000

    goto :goto_16

    .line 3030
    :cond_27
    if-ne p2, v7, :cond_16

    .line 3033
    move v1, v2

    .line 3034
    const/high16 v0, -0x8000

    goto :goto_16

    .line 3040
    :sswitch_2d
    if-ltz p2, :cond_33

    .line 3042
    move v1, p2

    .line 3043
    const/high16 v0, 0x4000

    goto :goto_16

    .line 3044
    :cond_33
    if-ne p2, v8, :cond_39

    .line 3047
    move v1, v2

    .line 3048
    const/high16 v0, -0x8000

    goto :goto_16

    .line 3049
    :cond_39
    if-ne p2, v7, :cond_16

    .line 3052
    move v1, v2

    .line 3053
    const/high16 v0, -0x8000

    goto :goto_16

    .line 3059
    :sswitch_3f
    if-ltz p2, :cond_45

    .line 3061
    move v1, p2

    .line 3062
    const/high16 v0, 0x4000

    goto :goto_16

    .line 3063
    :cond_45
    if-ne p2, v8, :cond_4a

    .line 3066
    const/4 v1, 0x0

    .line 3067
    const/4 v0, 0x0

    goto :goto_16

    .line 3068
    :cond_4a
    if-ne p2, v7, :cond_16

    .line 3071
    const/4 v1, 0x0

    .line 3072
    const/4 v0, 0x0

    goto :goto_16

    .line 3020
    nop

    :sswitch_data_50
    .sparse-switch
        -0x80000000 -> :sswitch_2d
        0x0 -> :sswitch_3f
        0x40000000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 313
    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 316
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 317
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_d
    if-ge v3, v0, :cond_67

    .line 318
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 319
    .local v2, attr:I
    packed-switch v2, :pswitch_data_6c

    .line 317
    :cond_16
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 321
    :pswitch_19
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_16

    .line 324
    :pswitch_21
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_16

    .line 327
    :pswitch_29
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_16

    .line 330
    :pswitch_31
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_16

    .line 333
    :pswitch_3a
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_16

    .line 336
    :pswitch_42
    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_16

    .line 339
    :pswitch_4a
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 340
    .local v4, id:I
    if-lez v4, :cond_16

    .line 341
    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_16

    .line 345
    .end local v4           #id:I
    :pswitch_5b
    sget-object v5, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_16

    .line 350
    .end local v2           #attr:I
    :cond_67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 351
    return-void

    .line 319
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_19
        :pswitch_21
        :pswitch_4a
        :pswitch_29
        :pswitch_31
        :pswitch_42
        :pswitch_3a
        :pswitch_5b
    .end packed-switch
.end method

.method private initViewGroup()V
    .registers 3

    .prologue
    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 296
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 297
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 298
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 299
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 300
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 302
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 304
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 305
    iput v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 307
    iget-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 309
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 310
    return-void
.end method

.method private notifyAnimationListener()V
    .registers 4

    .prologue
    .line 1321
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1322
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1324
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_18

    .line 1325
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 1330
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1333
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_18
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_32

    .line 1334
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1335
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_32

    .line 1336
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1340
    :cond_32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1341
    return-void
.end method

.method private removeFromArray(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1936
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1937
    .local v0, children:[Landroid/view/View;
    aget-object v2, v0, p1

    iput-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1938
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1939
    .local v1, count:I
    sub-int v2, v1, v4

    if-ne p1, v2, :cond_16

    .line 1940
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    .line 1947
    :goto_15
    return-void

    .line 1941
    :cond_16
    if-ltz p1, :cond_2a

    if-ge p1, v1, :cond_2a

    .line 1942
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1943
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    goto :goto_15

    .line 1945
    :cond_2a
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method private removeFromArray(II)V
    .registers 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 1951
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1952
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1954
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1955
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1957
    .local v2, end:I
    if-ne p1, v2, :cond_13

    .line 1981
    :goto_12
    return-void

    .line 1961
    :cond_13
    if-ne v2, v1, :cond_21

    .line 1962
    move v3, p1

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_3b

    .line 1963
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1964
    aput-object v5, v0, v3

    .line 1962
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1967
    .end local v3           #i:I
    :cond_21
    move v3, p1

    .restart local v3       #i:I
    :goto_22
    if-ge v3, v2, :cond_2b

    .line 1968
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1967
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1973
    :cond_2b
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1975
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_34
    if-ge v3, v1, :cond_3b

    .line 1976
    aput-object v5, v0, v3

    .line 1975
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 1980
    :cond_3b
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_12
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .registers 5
    .parameter "index"
    .parameter "view"

    .prologue
    .line 2072
    const/4 v0, 0x0

    .line 2073
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_9

    .line 2074
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2075
    const/4 v0, 0x1

    .line 2078
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 2079
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2084
    :cond_12
    :goto_12
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_1b

    .line 2085
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p0, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2088
    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2090
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2092
    if-eqz v0, :cond_27

    .line 2093
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2095
    :cond_27
    return-void

    .line 2080
    :cond_28
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_12

    .line 2081
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_12
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 2065
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2066
    .local v0, index:I
    if-ltz v0, :cond_9

    .line 2067
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2069
    :cond_9
    return-void
.end method

.method private removeViewsInternal(II)V
    .registers 15
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2098
    iget-object v7, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2099
    .local v7, onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v7, :cond_32

    move v6, v11

    .line 2100
    .local v6, notifyListener:Z
    :goto_7
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2101
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_34

    move v2, v11

    .line 2102
    .local v2, detach:Z
    :goto_e
    const/4 v1, 0x0

    .line 2104
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2105
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 2107
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_14
    if-ge v5, v3, :cond_3c

    .line 2108
    aget-object v8, v0, v5

    .line 2110
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_1e

    .line 2111
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2112
    move-object v1, v8

    .line 2115
    :cond_1e
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_36

    .line 2116
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2121
    :cond_27
    :goto_27
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2123
    if-eqz v6, :cond_2f

    .line 2124
    invoke-interface {v7, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2107
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #notifyListener:Z
    .end local v8           #view:Landroid/view/View;
    :cond_32
    move v6, v10

    .line 2099
    goto :goto_7

    .restart local v4       #focused:Landroid/view/View;
    .restart local v6       #notifyListener:Z
    :cond_34
    move v2, v10

    .line 2101
    goto :goto_e

    .line 2117
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_36
    if-eqz v2, :cond_27

    .line 2118
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_27

    .line 2128
    .end local v8           #view:Landroid/view/View;
    :cond_3c
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2130
    if-eqz v1, :cond_44

    .line 2131
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 2133
    :cond_44
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .registers 5
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 2710
    if-eqz p2, :cond_8

    .line 2711
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2715
    :goto_7
    return-void

    .line 2713
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_7
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 615
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 624
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 626
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_21

    .line 627
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 628
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 630
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    if-ge v5, v2, :cond_21

    .line 631
    aget-object v0, v1, v5

    .line 632
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1e

    .line 633
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 630
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 642
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_21
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_2e

    .line 646
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 648
    :cond_2e
    return-void
.end method

.method public addStatesFromChildren()Z
    .registers 2

    .prologue
    .line 3280
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 670
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 671
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 673
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_18

    .line 674
    aget-object v0, v1, v3

    .line 675
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 676
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 673
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 679
    .end local v0           #child:Landroid/view/View;
    :cond_18
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 1688
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1689
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 6
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1701
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1702
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_14

    .line 1703
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1704
    if-nez v0, :cond_14

    .line 1705
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1708
    :cond_14
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1718
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1719
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1720
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1721
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1749
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1750
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1751
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1752
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "child"
    .parameter "params"

    .prologue
    .line 1731
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1732
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1819
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 1837
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 1838
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1839
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1840
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 6
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 2000
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2002
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_b

    .line 2003
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 2004
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 2007
    :cond_b
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 2008
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 2009
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2244
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 2246
    if-gez p2, :cond_6

    .line 2247
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2250
    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 2252
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2253
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2255
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2256
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2258
    :cond_22
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 718
    .local v0, index:I
    if-ltz v0, :cond_10

    .line 719
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 720
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 721
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 723
    :cond_10
    return-void
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 2564
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 1771
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3288
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 3289
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3291
    :cond_9
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 1849
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1850
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 504
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 505
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 507
    :cond_c
    return-void
.end method

.method public clearDisappearingChildren()V
    .registers 2

    .prologue
    .line 3085
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 3086
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3088
    :cond_9
    return-void
.end method

.method public clearFocus()V
    .registers 2

    .prologue
    .line 514
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 517
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 518
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 520
    :cond_c
    return-void
.end method

.method protected debug(I)V
    .registers 9
    .parameter "depth"

    .prologue
    const-string v6, "View"

    .line 2853
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 2856
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_25

    .line 2857
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 2858
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2859
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    .end local v3           #output:Ljava/lang/String;
    :cond_25
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_45

    .line 2862
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 2863
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2864
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    .end local v3           #output:Ljava/lang/String;
    :cond_45
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2867
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    if-ge v2, v1, :cond_56

    .line 2868
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 2869
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 2867
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 2872
    .end local v0           #child:Landroid/view/View;
    :cond_56
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_76

    .line 2873
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 2874
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2875
    const-string v4, "View"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    .end local v3           #output:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2328
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2329
    .local v1, count:I
    if-gtz v1, :cond_6

    .line 2340
    :cond_5
    return-void

    .line 2333
    :cond_6
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2334
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2336
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, i:I
    :goto_e
    if-ltz v2, :cond_5

    .line 2337
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2338
    aput-object v4, v0, v2

    .line 2336
    add-int/lit8 v2, v2, -0x1

    goto :goto_e
.end method

.method protected detachViewFromParent(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 2293
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2294
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 2275
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 2276
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2312
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 2313
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 7
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 1032
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1033
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 1034
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1035
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1036
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 1037
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1036
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1039
    :cond_17
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 704
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 705
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 706
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 707
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 708
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 709
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 711
    :cond_17
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 7
    .parameter "consistency"

    .prologue
    .line 2798
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 2800
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2801
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2802
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 2803
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v3, 0x0

    .line 2802
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2806
    :cond_17
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .registers 13

    .prologue
    const/4 v5, 0x0

    .line 1060
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    if-eqz v2, :cond_1c

    .line 1061
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1062
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 1064
    .local v10, event:Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1065
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 1066
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 1069
    .end local v0           #now:J
    .end local v10           #event:Landroid/view/MotionEvent;
    :cond_1c
    iget v9, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1070
    .local v9, count:I
    iget-object v8, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1071
    .local v8, children:[Landroid/view/View;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_21
    if-ge v11, v9, :cond_2b

    .line 1072
    aget-object v2, v8, v11

    invoke-virtual {v2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1071
    add-int/lit8 v11, v11, 0x1

    goto :goto_21

    .line 1074
    :cond_2b
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1075
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 28
    .parameter "canvas"

    .prologue
    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v10, v0

    .line 1197
    .local v10, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v7, v0

    .line 1198
    .local v7, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v16, v0

    .line 1200
    .local v16, flags:I
    and-int/lit8 v21, v16, 0x8

    if-eqz v21, :cond_d3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v21

    if-eqz v21, :cond_d3

    .line 1201
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x40

    const/16 v22, 0x40

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6a

    const/16 v21, 0x1

    move/from16 v5, v21

    .line 1203
    .local v5, cache:Z
    :goto_2e
    const/16 v17, 0x0

    .local v17, i:I
    :goto_30
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_6f

    .line 1204
    aget-object v6, v7, v17

    .line 1205
    .local v6, child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xc

    if-nez v21, :cond_67

    .line 1206
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .line 1207
    .local v19, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    move/from16 v3, v17

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 1208
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 1209
    if-eqz v5, :cond_67

    .line 1210
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1211
    const/16 v21, 0x1

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1203
    .end local v19           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_67
    add-int/lit8 v17, v17, 0x1

    goto :goto_30

    .line 1201
    .end local v5           #cache:Z
    .end local v6           #child:Landroid/view/View;
    .end local v17           #i:I
    :cond_6a
    const/16 v21, 0x0

    move/from16 v5, v21

    goto :goto_2e

    .line 1216
    .restart local v5       #cache:Z
    .restart local v17       #i:I
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object v9, v0

    .line 1217
    .local v9, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v21

    if-eqz v21, :cond_8c

    .line 1218
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1221
    :cond_8c
    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 1223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x9

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1224
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x11

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1226
    if-eqz v5, :cond_be

    .line 1227
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    const v22, 0x8000

    or-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1230
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d3

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1235
    .end local v5           #cache:Z
    .end local v9           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v17           #i:I
    :cond_d3
    const/16 v20, 0x0

    .line 1236
    .local v20, saveCount:I
    and-int/lit8 v21, v16, 0x22

    const/16 v22, 0x22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19f

    const/16 v21, 0x1

    move/from16 v8, v21

    .line 1237
    .local v8, clipToPadding:Z
    :goto_e3
    if-eqz v8, :cond_14e

    .line 1238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v20

    .line 1239
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1246
    :cond_14e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x41

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1247
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, -0x5

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1249
    const/16 v18, 0x0

    .line 1250
    .local v18, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v13

    .line 1252
    .local v13, drawingTime:J
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    if-nez v21, :cond_1a5

    .line 1253
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_17a
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_1d5

    .line 1254
    aget-object v6, v7, v17

    .line 1255
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xc

    if-eqz v21, :cond_190

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v21

    if-eqz v21, :cond_19c

    .line 1256
    :cond_190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v21

    or-int v18, v18, v21

    .line 1253
    :cond_19c
    add-int/lit8 v17, v17, 0x1

    goto :goto_17a

    .line 1236
    .end local v6           #child:Landroid/view/View;
    .end local v8           #clipToPadding:Z
    .end local v13           #drawingTime:J
    .end local v17           #i:I
    .end local v18           #more:Z
    :cond_19f
    const/16 v21, 0x0

    move/from16 v8, v21

    goto/16 :goto_e3

    .line 1260
    .restart local v8       #clipToPadding:Z
    .restart local v13       #drawingTime:J
    .restart local v18       #more:Z
    :cond_1a5
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1a7
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_1d5

    .line 1261
    move-object/from16 v0, p0

    move v1, v10

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v21

    aget-object v6, v7, v21

    .line 1262
    .restart local v6       #child:Landroid/view/View;
    move-object v0, v6

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0xc

    if-eqz v21, :cond_1c6

    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v21

    if-eqz v21, :cond_1d2

    .line 1263
    :cond_1c6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v21

    or-int v18, v18, v21

    .line 1260
    :cond_1d2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1a7

    .line 1269
    .end local v6           #child:Landroid/view/View;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_206

    .line 1270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v11, v0

    .line 1271
    .local v11, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    sub-int v12, v21, v22

    .line 1273
    .local v12, disappearingCount:I
    move/from16 v17, v12

    :goto_1ec
    if-ltz v17, :cond_206

    .line 1274
    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1275
    .restart local v6       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v21

    or-int v18, v18, v21

    .line 1273
    add-int/lit8 v17, v17, -0x1

    goto :goto_1ec

    .line 1279
    .end local v6           #child:Landroid/view/View;
    .end local v11           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12           #disappearingCount:I
    :cond_206
    if-eqz v8, :cond_20f

    .line 1280
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1284
    :cond_20f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v16, v0

    .line 1286
    and-int/lit8 v21, v16, 0x4

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_222

    .line 1287
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1290
    :cond_222
    and-int/lit8 v21, v16, 0x10

    if-nez v21, :cond_25c

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x200

    move/from16 v21, v0

    if-nez v21, :cond_25c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v21

    if-eqz v21, :cond_25c

    if-nez v18, :cond_25c

    .line 1295
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v21, v0

    move/from16 v0, v21

    or-int/lit16 v0, v0, 0x200

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1296
    new-instance v15, Landroid/view/ViewGroup$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 1301
    .local v15, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1303
    .end local v15           #end:Ljava/lang/Runnable;
    :cond_25c
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1114
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 743
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 744
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 748
    :goto_c
    return v0

    .line 745
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 746
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 748
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 730
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 731
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 735
    :goto_c
    return v0

    .line 732
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 733
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 735
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 756
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 757
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 761
    :goto_c
    return v0

    .line 758
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 759
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 761
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 1043
    const/4 v2, 0x0

    .line 1044
    .local v2, populated:Z
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_6
    if-ge v1, v0, :cond_14

    .line 1045
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1044
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1047
    :cond_14
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1122
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1123
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1124
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1125
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1124
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1127
    :cond_12
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1096
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1097
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1098
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1099
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1100
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1102
    :cond_12
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 6
    .parameter "pressed"

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1592
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1593
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 1594
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1593
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1596
    :cond_f
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 6
    .parameter "selected"

    .prologue
    .line 1582
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1583
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1584
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 1585
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 1584
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1587
    :cond_f
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1138
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 1139
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .parameter "ev"

    .prologue
    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 783
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 784
    .local v17, xf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 785
    .local v19, yf:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v11, v17, v20

    .line 786
    .local v11, scrolledXFloat:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v13, v19, v20

    .line 787
    .local v13, scrolledYFloat:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTempRect:Landroid/graphics/Rect;

    move-object v8, v0

    .line 789
    .local v8, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const/high16 v21, 0x8

    and-int v20, v20, v21

    if-eqz v20, :cond_bc

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 791
    .local v7, disallowIntercept:Z
    :goto_3b
    if-nez v3, :cond_c5

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4d

    .line 797
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 801
    :cond_4d
    if-nez v7, :cond_55

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_c5

    .line 803
    :cond_55
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 806
    float-to-int v12, v11

    .line 807
    .local v12, scrolledXInt:I
    float-to-int v14, v13

    .line 808
    .local v14, scrolledYInt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v5, v0

    .line 809
    .local v5, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v6, v0

    .line 810
    .local v6, count:I
    const/16 v20, 0x1

    sub-int v9, v6, v20

    .local v9, i:I
    :goto_6e
    if-ltz v9, :cond_c5

    .line 811
    aget-object v4, v5, v9

    .line 812
    .local v4, child:Landroid/view/View;
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0xc

    if-eqz v20, :cond_81

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v20

    if-eqz v20, :cond_c2

    .line 814
    :cond_81
    invoke-virtual {v4, v8}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 815
    invoke-virtual {v8, v12, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    if-eqz v20, :cond_c2

    .line 817
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 818
    .local v16, xc:F
    move-object v0, v4

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 819
    .local v18, yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 820
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_c2

    .line 822
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 823
    const/16 v20, 0x1

    .line 882
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    .end local v16           #xc:F
    .end local v18           #yc:F
    :goto_bb
    return v20

    .line 789
    .end local v7           #disallowIntercept:Z
    :cond_bc
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_3b

    .line 810
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #children:[Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #disallowIntercept:Z
    .restart local v9       #i:I
    .restart local v12       #scrolledXInt:I
    .restart local v14       #scrolledYInt:I
    :cond_c2
    add-int/lit8 v9, v9, -0x1

    goto :goto_6e

    .line 834
    .end local v4           #child:Landroid/view/View;
    .end local v5           #children:[Landroid/view/View;
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v12           #scrolledXInt:I
    .end local v14           #scrolledYInt:I
    :cond_c5
    const/16 v20, 0x1

    move v0, v3

    move/from16 v1, v20

    if-eq v0, v1, :cond_d3

    const/16 v20, 0x3

    move v0, v3

    move/from16 v1, v20

    if-ne v0, v1, :cond_ff

    :cond_d3
    const/16 v20, 0x1

    move/from16 v10, v20

    .line 837
    .local v10, isUpOrCancel:Z
    :goto_d7
    if-eqz v10, :cond_ea

    .line 840
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v20, v0

    const v21, -0x80001

    and-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 845
    :cond_ea
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    move-object v15, v0

    .line 846
    .local v15, target:Landroid/view/View;
    if-nez v15, :cond_104

    .line 849
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 850
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto :goto_bb

    .line 834
    .end local v10           #isUpOrCancel:Z
    .end local v15           #target:Landroid/view/View;
    :cond_ff
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_d7

    .line 855
    .restart local v10       #isUpOrCancel:Z
    .restart local v15       #target:Landroid/view/View;
    :cond_104
    if-nez v7, :cond_14b

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_14b

    .line 856
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 857
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 858
    .restart local v18       #yc:F
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 859
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 860
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-nez v20, :cond_13f

    .line 865
    :cond_13f
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 869
    const/16 v20, 0x1

    goto/16 :goto_bb

    .line 872
    .end local v16           #xc:F
    .end local v18           #yc:F
    :cond_14b
    if-eqz v10, :cond_155

    .line 873
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mMotionTarget:Landroid/view/View;

    .line 878
    :cond_155
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v16, v11, v20

    .line 879
    .restart local v16       #xc:F
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v18, v13, v20

    .line 880
    .restart local v18       #yc:F
    move-object/from16 v0, p1

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 882
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    goto/16 :goto_bb
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 769
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 770
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 774
    :goto_c
    return v0

    .line 771
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 772
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 774
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 491
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasFocus"

    .prologue
    .line 655
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 656
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 657
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 658
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 659
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 658
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 661
    :cond_12
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 686
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 687
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 688
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 689
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 690
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 692
    :cond_12
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 47
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 1355
    const/16 v32, 0x0

    .line 1357
    .local v32, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v23, v0

    .line 1358
    .local v23, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    .line 1359
    .local v26, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    .line 1360
    .local v25, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v22, v0

    .line 1362
    .local v22, cb:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    .line 1364
    .local v27, flags:I
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x100

    move v6, v0

    const/16 v7, 0x100

    if-ne v6, v7, :cond_44

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-eqz v6, :cond_38

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 1368
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x101

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1371
    :cond_44
    const/4 v11, 0x0

    .line 1372
    .local v11, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 1373
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v24, 0x0

    .line 1375
    .local v24, concatMatrix:Z
    if-eqz v5, :cond_153

    .line 1376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-nez v6, :cond_5e

    .line 1377
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 1379
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v10, v0

    .line 1381
    .local v10, region:Landroid/graphics/RectF;
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v30

    .line 1382
    .local v30, initialized:Z
    if-nez v30, :cond_84

    .line 1383
    sub-int v6, v25, v23

    sub-int v7, v22, v26

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1384
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 1388
    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_95

    .line 1389
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1391
    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v32

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v11, v0

    .line 1394
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v24

    .line 1396
    if-eqz v32, :cond_c8

    .line 1397
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_119

    .line 1398
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x90

    move v6, v0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_fb

    .line 1400
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x4

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1435
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    :cond_c8
    :goto_c8
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x20

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1437
    if-nez v24, :cond_1a5

    move/from16 v0, v23

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move v15, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_1a5

    .line 1550
    :cond_fa
    :goto_fa
    return v32

    .line 1401
    .restart local v10       #region:Landroid/graphics/RectF;
    .restart local v30       #initialized:Z
    :cond_fb
    and-int/lit8 v6, v27, 0x4

    if-nez v6, :cond_c8

    .line 1404
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1405
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_c8

    .line 1408
    :cond_119
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 1412
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 1414
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v31, v23, v6

    .line 1415
    .local v31, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v38, v26, v6

    .line 1416
    .local v38, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    add-int v6, v6, v31

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int v7, v7, v38

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v38

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_c8

    .line 1419
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v30           #initialized:Z
    .end local v31           #left:I
    .end local v38           #top:I
    :cond_153
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x800

    move v6, v0

    const/16 v7, 0x800

    if-ne v6, v7, :cond_c8

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_16d

    .line 1422
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 1424
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v29

    .line 1425
    .local v29, hasTransform:Z
    if-eqz v29, :cond_c8

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v41

    .line 1427
    .local v41, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v41

    move v1, v6

    if-eq v0, v1, :cond_19e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object v11, v6

    .line 1429
    :goto_193
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v41

    if-eqz v6, :cond_1a1

    const/4 v6, 0x1

    move/from16 v24, v6

    :goto_19c
    goto/16 :goto_c8

    .line 1427
    :cond_19e
    const/4 v6, 0x0

    move-object v11, v6

    goto :goto_193

    .line 1429
    :cond_1a1
    const/4 v6, 0x0

    move/from16 v24, v6

    goto :goto_19c

    .line 1442
    .end local v29           #hasTransform:Z
    .end local v41           #transformType:I
    :cond_1a5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 1444
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v36, v0

    .line 1445
    .local v36, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v37, v0

    .line 1447
    .local v37, sy:I
    const/16 v35, 0x0

    .line 1448
    .local v35, scalingRequired:Z
    const/16 v20, 0x0

    .line 1449
    .local v20, cache:Landroid/graphics/Bitmap;
    const v6, 0x8000

    and-int v6, v6, v27

    const v7, 0x8000

    if-eq v6, v7, :cond_1cb

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x4000

    move v6, v0

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_1e4

    .line 1451
    :cond_1cb
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    if-eqz v6, :cond_1e4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object v0, v6

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v35, v0

    .line 1455
    :cond_1e4
    if-nez v20, :cond_2ed

    const/4 v6, 0x1

    move/from16 v28, v6

    .line 1457
    .local v28, hasNoCache:Z
    :goto_1e9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v33

    .line 1458
    .local v33, restoreTo:I
    if-eqz v28, :cond_2f2

    .line 1459
    sub-int v6, v23, v36

    int-to-float v6, v6

    sub-int v7, v26, v37

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1469
    :cond_1fc
    :goto_1fc
    const/high16 v19, 0x3f80

    .line 1471
    .local v19, alpha:F
    if-eqz v11, :cond_328

    .line 1472
    if-eqz v24, :cond_248

    .line 1473
    const/16 v39, 0x0

    .line 1474
    .local v39, transX:I
    const/16 v40, 0x0

    .line 1475
    .local v40, transY:I
    if-eqz v28, :cond_212

    .line 1476
    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    .line 1477
    move/from16 v0, v37

    neg-int v0, v0

    move/from16 v40, v0

    .line 1481
    :cond_212
    move/from16 v0, v39

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v40

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1482
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1483
    move/from16 v0, v39

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1484
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1487
    .end local v39           #transX:I
    .end local v40           #transY:I
    :cond_248
    invoke-virtual {v11}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v19

    .line 1488
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_25e

    .line 1489
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1492
    :cond_25e
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_294

    if-eqz v28, :cond_294

    .line 1493
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1494
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_319

    .line 1495
    move/from16 v0, v36

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v14, v0

    add-int v6, v36, v25

    sub-int v6, v6, v23

    int-to-float v15, v6

    add-int v6, v37, v22

    sub-int v6, v6, v26

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1505
    .end local v17           #multipliedAlpha:I
    :cond_294
    :goto_294
    and-int/lit8 v6, v27, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2ae

    .line 1506
    if-eqz v28, :cond_33e

    .line 1507
    sub-int v6, v25, v23

    add-int v6, v6, v36

    sub-int v7, v22, v26

    add-int v7, v7, v37

    move-object/from16 v0, p1

    move/from16 v1, v36

    move/from16 v2, v37

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1517
    :cond_2ae
    :goto_2ae
    if-eqz v28, :cond_36f

    .line 1519
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_366

    .line 1523
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 1524
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1543
    :goto_2d0
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1545
    if-eqz v5, :cond_fa

    if-nez v32, :cond_fa

    .line 1546
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto/16 :goto_fa

    .line 1455
    .end local v19           #alpha:F
    .end local v28           #hasNoCache:Z
    .end local v33           #restoreTo:I
    :cond_2ed
    const/4 v6, 0x0

    move/from16 v28, v6

    goto/16 :goto_1e9

    .line 1461
    .restart local v28       #hasNoCache:Z
    .restart local v33       #restoreTo:I
    :cond_2f2
    move/from16 v0, v23

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1462
    if-eqz v35, :cond_1fc

    .line 1464
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v34, v6, v7

    .line 1465
    .local v34, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_1fc

    .line 1498
    .end local v34           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v19       #alpha:F
    :cond_319
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_294

    .line 1501
    .end local v17           #multipliedAlpha:I
    :cond_328
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_294

    .line 1502
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    goto/16 :goto_294

    .line 1509
    :cond_33e
    if-nez v35, :cond_351

    .line 1510
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v25, v23

    sub-int v9, v22, v26

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2ae

    .line 1512
    :cond_351
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_2ae

    .line 1526
    :cond_366
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2d0

    .line 1529
    :cond_36f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1530
    .local v21, cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x3f80

    cmpg-float v6, v19, v6

    if-gez v6, :cond_3a1

    .line 1531
    const/high16 v6, 0x437f

    mul-float v6, v6, v19

    float-to-int v6, v6

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1532
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x1000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1540
    :cond_392
    :goto_392
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2d0

    .line 1533
    :cond_3a1
    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x1000

    move v6, v0

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_392

    .line 1534
    const/16 v6, 0xff

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x1001

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_392
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    .line 3208
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 3210
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e

    .line 3211
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_18

    .line 3212
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3216
    :cond_18
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3217
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3219
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v2, :cond_2e

    .line 3220
    aget-object v0, v1, v3

    .line 3221
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    .line 3222
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 3219
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 3226
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2e
    return-void
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 577
    :goto_7
    return-object v0

    .line 574
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 575
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 577
    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 7
    .parameter "id"

    .prologue
    .line 1630
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_6

    move-object v4, p0

    .line 1649
    :goto_5
    return-object v4

    .line 1634
    :cond_6
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1635
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1637
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_20

    .line 1638
    aget-object v2, v3, v0

    .line 1640
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1d

    .line 1641
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1643
    if-eqz v2, :cond_1d

    move-object v4, v2

    .line 1644
    goto :goto_5

    .line 1637
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1649
    .end local v2           #v:Landroid/view/View;
    :cond_20
    const/4 v4, 0x0

    goto :goto_5
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter "tag"

    .prologue
    .line 1657
    if-eqz p1, :cond_c

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, p0

    .line 1676
    :goto_b
    return-object v4

    .line 1661
    :cond_c
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1662
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1664
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_26

    .line 1665
    aget-object v2, v3, v0

    .line 1667
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_23

    .line 1668
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 1670
    if-eqz v2, :cond_23

    move-object v4, v2

    .line 1671
    goto :goto_b

    .line 1664
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1676
    .end local v2           #v:Landroid/view/View;
    :cond_26
    const/4 v4, 0x0

    goto :goto_b
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 7
    .parameter "insets"

    .prologue
    .line 3182
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3183
    .local v2, done:Z
    if-nez v2, :cond_15

    .line 3184
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3185
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3186
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v1, :cond_15

    .line 3187
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 3188
    if-eqz v2, :cond_16

    .line 3193
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_15
    return v2

    .line 3186
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 472
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 476
    :goto_e
    return-object v0

    .line 473
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 474
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 476
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 436
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 448
    :cond_1a
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 450
    :cond_1f
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 12
    .parameter "region"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3147
    iget v6, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_f

    move v4, v8

    .line 3148
    .local v4, meOpaque:Z
    :goto_9
    if-eqz v4, :cond_11

    if-nez p1, :cond_11

    move v6, v8

    .line 3164
    :goto_e
    return v6

    .end local v4           #meOpaque:Z
    :cond_f
    move v4, v9

    .line 3147
    goto :goto_9

    .line 3152
    .restart local v4       #meOpaque:Z
    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 3153
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3154
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3155
    .local v2, count:I
    const/4 v5, 0x1

    .line 3156
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v2, :cond_36

    .line 3157
    aget-object v0, v1, v3

    .line 3158
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 3159
    :cond_2c
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 3160
    const/4 v5, 0x0

    .line 3156
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 3164
    .end local v0           #child:Landroid/view/View;
    :cond_36
    if-nez v4, :cond_3a

    if-eqz v5, :cond_3c

    :cond_3a
    move v6, v8

    goto :goto_e

    :cond_3c
    move v6, v9

    goto :goto_e
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 2790
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 2761
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .parameter "p"

    .prologue
    .line 2779
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 4
    .parameter "index"

    .prologue
    .line 2916
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v1, v1, p1
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 2918
    :goto_4
    return-object v1

    .line 2917
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 2918
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 2904
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1317
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 1622
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 10
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 2539
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, v2, v3

    .line 2540
    .local v0, dx:I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, v2, v3

    .line 2541
    .local v1, dy:I
    if-eqz p3, :cond_19

    .line 2542
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 2543
    iget v2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 2545
    :cond_19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2546
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_38
    const/4 v2, 0x1

    :goto_39
    return v2

    :cond_3a
    move v2, v5

    goto :goto_39
.end method

.method public getDescendantFocusability()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 368
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .prologue
    .line 2608
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .prologue
    .line 3203
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 2734
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 398
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 399
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 402
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 403
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 555
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasFocusable()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 585
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_a

    move v5, v6

    .line 606
    :goto_9
    return v5

    .line 589
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v7

    .line 590
    goto :goto_9

    .line 593
    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 594
    .local v3, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v3, v5, :cond_2e

    .line 595
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 596
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 598
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    if-ge v4, v2, :cond_2e

    .line 599
    aget-object v0, v1, v4

    .line 600
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2b

    move v5, v7

    .line 601
    goto :goto_9

    .line 598
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_2e
    move v5, v6

    .line 606
    goto :goto_9
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 6
    .parameter "child"

    .prologue
    .line 2887
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2888
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2889
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_10

    .line 2890
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_d

    move v3, v2

    .line 2894
    :goto_c
    return v3

    .line 2889
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2894
    :cond_10
    const/4 v3, -0x1

    goto :goto_c
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 16
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/high16 v12, 0x20

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2351
    move-object v6, p0

    .line 2353
    .local v6, parent:Landroid/view/ViewParent;
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2354
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_5b

    .line 2355
    iget-object v4, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 2356
    .local v4, location:[I
    iget v8, p1, Landroid/view/View;->mLeft:I

    aput v8, v4, v11

    .line 2357
    iget v8, p1, Landroid/view/View;->mTop:I

    aput v8, v4, v10

    .line 2362
    iget v8, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v8, v8, 0x40

    const/16 v9, 0x40

    if-ne v8, v9, :cond_5c

    move v2, v10

    .line 2365
    .local v2, drawAnimation:Z
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_5e

    if-nez v2, :cond_5e

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_5e

    move v3, v10

    .line 2369
    .local v3, isOpaque:Z
    :goto_2b
    if-eqz v3, :cond_60

    const/high16 v8, 0x40

    move v5, v8

    .line 2372
    .local v5, opaqueFlag:I
    :cond_30
    :goto_30
    const/4 v7, 0x0

    .line 2373
    .local v7, view:Landroid/view/View;
    instance-of v8, v6, Landroid/view/View;

    if-eqz v8, :cond_39

    .line 2374
    move-object v0, v6

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .line 2377
    :cond_39
    if-eqz v2, :cond_43

    .line 2378
    if-eqz v7, :cond_62

    .line 2379
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2387
    :cond_43
    :goto_43
    if-eqz v7, :cond_55

    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const/high16 v9, 0x60

    and-int/2addr v8, v9

    if-eq v8, v12, :cond_55

    .line 2388
    iget v8, v7, Landroid/view/View;->mPrivateFlags:I

    const v9, -0x600001

    and-int/2addr v8, v9

    or-int/2addr v8, v5

    iput v8, v7, Landroid/view/View;->mPrivateFlags:I

    .line 2391
    :cond_55
    invoke-interface {v6, v4, p2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v6

    .line 2392
    if-nez v6, :cond_30

    .line 2394
    .end local v2           #drawAnimation:Z
    .end local v3           #isOpaque:Z
    .end local v4           #location:[I
    .end local v5           #opaqueFlag:I
    .end local v7           #view:Landroid/view/View;
    :cond_5b
    return-void

    .restart local v4       #location:[I
    :cond_5c
    move v2, v11

    .line 2362
    goto :goto_1c

    .restart local v2       #drawAnimation:Z
    :cond_5e
    move v3, v11

    .line 2365
    goto :goto_2b

    .restart local v3       #isOpaque:Z
    :cond_60
    move v5, v12

    .line 2369
    goto :goto_30

    .line 2380
    .restart local v5       #opaqueFlag:I
    .restart local v7       #view:Landroid/view/View;
    :cond_62
    instance-of v8, v6, Landroid/view/ViewRoot;

    if-eqz v8, :cond_43

    .line 2381
    move-object v0, v6

    check-cast v0, Landroid/view/ViewRoot;

    move-object v8, v0

    iput-boolean v10, v8, Landroid/view/ViewRoot;->mIsAnimating:Z

    goto :goto_43
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 10
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2409
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 2410
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_46

    .line 2412
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2415
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 2416
    .local v0, left:I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 2418
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_37

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_66

    .line 2420
    :cond_37
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2422
    aput v0, p1, v5

    .line 2423
    aput v1, p1, v6

    .line 2425
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 2440
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_45
    return-object v2

    .line 2428
    :cond_46
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2430
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 2431
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 2433
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    aget v3, p1, v5

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    aget v4, p1, v6

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2436
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    goto :goto_45

    .line 2440
    :cond_66
    const/4 v2, 0x0

    goto :goto_45
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2654
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAnimationCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2624
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const v1, 0x8000

    .line 2689
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 9
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 2953
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2955
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2957
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2960
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2961
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 2980
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2982
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2985
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 2989
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2990
    return-void
.end method

.method protected measureChildren(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2932
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2933
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2934
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v3, :cond_17

    .line 2935
    aget-object v0, v1, v2

    .line 2936
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 2937
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 2934
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2940
    .end local v0           #child:Landroid/view/View;
    :cond_17
    return-void
.end method

.method public offsetChildrenTopAndBottom(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 2525
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2526
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2528
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_16

    .line 2529
    aget-object v3, v0, v2

    .line 2530
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 2531
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 2528
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2533
    .end local v3           #v:Landroid/view/View;
    :cond_16
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 2450
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2451
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 12
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v6, 0x0

    .line 2471
    if-ne p1, p0, :cond_4

    .line 2515
    :goto_3
    return-void

    .line 2475
    :cond_4
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2480
    .local v2, theParent:Landroid/view/ViewParent;
    :goto_6
    if-eqz v2, :cond_58

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_58

    if-eq v2, p0, :cond_58

    .line 2482
    if-eqz p3, :cond_37

    .line 2483
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2485
    if-eqz p4, :cond_30

    .line 2486
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2487
    .local v1, p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2498
    .end local v1           #p:Landroid/view/View;
    :cond_30
    :goto_30
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 2499
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 2490
    :cond_37
    if-eqz p4, :cond_4a

    .line 2491
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 2492
    .restart local v1       #p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 2494
    .end local v1           #p:Landroid/view/View;
    :cond_4a
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_30

    .line 2504
    :cond_58
    if-ne v2, p0, :cond_78

    .line 2505
    if-eqz p3, :cond_6a

    .line 2506
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 2509
    :cond_6a
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 2513
    :cond_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 2460
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 2461
    return-void
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 1179
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 1182
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1d

    .line 1183
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1185
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1d

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 1189
    :cond_1d
    return-void
.end method

.method protected onAnimationStart()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1158
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 1161
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2c

    .line 1162
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1163
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1165
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    if-ge v3, v2, :cond_24

    .line 1166
    aget-object v0, v1, v3

    .line 1167
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_21

    .line 1168
    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1169
    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 1165
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1173
    .end local v0           #child:Landroid/view/View;
    :cond_24
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1175
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2c
    return-void
.end method

.method protected onConsistencyCheck(I)Z
    .registers 14
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "ViewConsistency"

    .line 2814
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 2816
    .local v6, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_4d

    move v1, v9

    .line 2817
    .local v1, checkLayout:Z
    :goto_f
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_4f

    move v0, v9

    .line 2819
    .local v0, checkDrawing:Z
    :goto_14
    if-eqz v1, :cond_51

    .line 2820
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2821
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2822
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1b
    if-ge v4, v3, :cond_51

    .line 2823
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_4a

    .line 2824
    const/4 v6, 0x0

    .line 2825
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no parent/a parent that is not "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_4d
    move v1, v8

    .line 2816
    goto :goto_f

    .restart local v1       #checkLayout:Z
    :cond_4f
    move v0, v8

    .line 2817
    goto :goto_14

    .line 2831
    .restart local v0       #checkDrawing:Z
    :cond_51
    if-eqz v0, :cond_8c

    .line 2833
    iget v7, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_8c

    .line 2834
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 2835
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_8c

    instance-of v7, v5, Landroid/view/ViewRoot;

    if-nez v7, :cond_8c

    .line 2836
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_8c

    .line 2837
    const/4 v6, 0x0

    .line 2838
    const-string v7, "ViewConsistency"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ViewGroup "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is dirty but its parent is not: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :cond_8c
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .parameter "extraSpace"

    .prologue
    .line 3230
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_b

    .line 3231
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 3254
    :goto_a
    return-object v5

    .line 3234
    :cond_b
    const/4 v3, 0x0

    .line 3235
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3236
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_22

    .line 3237
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3239
    .local v0, childState:[I
    if-eqz v0, :cond_1f

    .line 3240
    array-length v5, v0

    add-int/2addr v3, v5

    .line 3236
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3244
    .end local v0           #childState:[I
    :cond_22
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 3246
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_3c

    .line 3247
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 3249
    .restart local v0       #childState:[I
    if-eqz v0, :cond_39

    .line 3250
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 3246
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .end local v0           #childState:[I
    :cond_3c
    move-object v5, v4

    .line 3254
    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 945
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v8, 0x1

    .line 1005
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1006
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1f

    .line 1007
    const/4 v6, 0x0

    .line 1008
    .local v6, index:I
    const/4 v5, 0x1

    .line 1009
    .local v5, increment:I
    move v3, v2

    .line 1015
    .local v3, end:I
    :goto_a
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1016
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_d
    if-eq v4, v3, :cond_26

    .line 1017
    aget-object v0, v1, v4

    .line 1018
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_24

    .line 1019
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v7, v8

    .line 1024
    .end local v0           #child:Landroid/view/View;
    :goto_1e
    return v7

    .line 1011
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_1f
    sub-int v6, v2, v8

    .line 1012
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1013
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_a

    .line 1016
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_24
    add-int/2addr v4, v5

    goto :goto_d

    .line 1024
    .end local v0           #child:Landroid/view/View;
    :cond_26
    const/4 v7, 0x0

    goto :goto_1e
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 698
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 699
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 700
    :cond_7
    return-void
.end method

.method public removeAllViews()V
    .registers 1

    .prologue
    .line 2140
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2141
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2142
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2143
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2155
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2156
    .local v2, count:I
    if-gtz v2, :cond_8

    .line 2196
    :cond_7
    :goto_7
    return-void

    .line 2160
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2161
    .local v0, children:[Landroid/view/View;
    iput v10, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2163
    iget-object v6, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2164
    .local v6, listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v6, :cond_3d

    move v7, v11

    .line 2165
    .local v7, notify:Z
    :goto_11
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 2166
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_3f

    move v3, v11

    .line 2167
    .local v3, detach:Z
    :goto_18
    const/4 v1, 0x0

    .line 2169
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 2171
    sub-int v5, v2, v11

    .local v5, i:I
    :goto_1e
    if-ltz v5, :cond_47

    .line 2172
    aget-object v8, v0, v5

    .line 2174
    .local v8, view:Landroid/view/View;
    if-ne v8, v4, :cond_28

    .line 2175
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 2176
    move-object v1, v8

    .line 2179
    :cond_28
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_41

    .line 2180
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2185
    :cond_31
    :goto_31
    if-eqz v7, :cond_36

    .line 2186
    invoke-interface {v6, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2189
    :cond_36
    iput-object v12, v8, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2190
    aput-object v12, v0, v5

    .line 2171
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v7           #notify:Z
    .end local v8           #view:Landroid/view/View;
    :cond_3d
    move v7, v10

    .line 2164
    goto :goto_11

    .restart local v4       #focused:Landroid/view/View;
    .restart local v7       #notify:Z
    :cond_3f
    move v3, v10

    .line 2166
    goto :goto_18

    .line 2181
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_41
    if-eqz v3, :cond_31

    .line 2182
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_31

    .line 2193
    .end local v8           #view:Landroid/view/View;
    :cond_47
    if-eqz v1, :cond_7

    .line 2194
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_7
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 2212
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 2213
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 2216
    :cond_7
    if-eqz p2, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2217
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 2222
    :cond_12
    :goto_12
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1b

    .line 2223
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 2225
    :cond_1b
    return-void

    .line 2218
    :cond_1c
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_12

    .line 2219
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_12
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2016
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2018
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 2047
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 2048
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2049
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2050
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 2027
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 2028
    return-void
.end method

.method public removeViews(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2059
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2060
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2061
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2062
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 2038
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 2039
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 430
    :cond_8
    :goto_8
    return-void

    .line 417
    :cond_9
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 420
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_1b

    .line 421
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 422
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 425
    :cond_19
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 427
    :cond_1b
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_8

    .line 428
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_8
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 483
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 890
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    if-ne p1, v0, :cond_d

    .line 905
    :cond_a
    :goto_a
    return-void

    .line 890
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 895
    :cond_d
    if-eqz p1, :cond_1e

    .line 896
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 902
    :goto_14
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 903
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_a

    .line 898
    :cond_1e
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_14
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 970
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_40

    .line 982
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 979
    :goto_24
    return v2

    .line 974
    :sswitch_25
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 975
    .local v1, took:Z
    if-eqz v1, :cond_2d

    move v2, v1

    goto :goto_24

    :cond_2d
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_24

    .line 978
    .end local v1           #took:Z
    :sswitch_32
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 979
    .restart local v1       #took:Z
    if-eqz v1, :cond_3a

    move v2, v1

    goto :goto_24

    :cond_3a
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_24

    .line 970
    nop

    :sswitch_data_40
    .sparse-switch
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_32
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3171
    if-eqz p1, :cond_11

    .line 3172
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3173
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 3174
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 3177
    :cond_11
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .registers 2

    .prologue
    .line 2585
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2586
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .registers 3
    .parameter "addsStates"

    .prologue
    .line 3264
    if-eqz p1, :cond_c

    .line 3265
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3270
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 3271
    return-void

    .line 3267
    :cond_c
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_8
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "always"

    .prologue
    .line 2675
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2676
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2639
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2640
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    .line 1147
    if-nez p1, :cond_9

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    .line 1148
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1149
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1150
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v1, :cond_18

    .line 1151
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1154
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_18
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2706
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2707
    return-void
.end method

.method public setClipChildren(Z)V
    .registers 3
    .parameter "clipChildren"

    .prologue
    .line 1562
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1563
    return-void
.end method

.method public setClipToPadding(Z)V
    .registers 3
    .parameter "clipToPadding"

    .prologue
    .line 1574
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1575
    return-void
.end method

.method public setDescendantFocusability(I)V
    .registers 4
    .parameter "focusability"

    .prologue
    .line 380
    sparse-switch p1, :sswitch_data_1c

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :sswitch_b
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 390
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 391
    return-void

    .line 380
    :sswitch_data_1c
    .sparse-switch
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_b
        0x60000 -> :sswitch_b
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 3
    .parameter "controller"

    .prologue
    .line 2595
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2596
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_c

    .line 2597
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2599
    :cond_c
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "animationListener"

    .prologue
    .line 3304
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3305
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1804
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1805
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1082
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1084
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 1085
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1089
    :goto_16
    return-void

    .line 1087
    :cond_17
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_16
.end method

.method public setPersistentDrawingCache(I)V
    .registers 3
    .parameter "drawingCacheToKeep"

    .prologue
    .line 2749
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 2750
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1613
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 1614
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 456
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public startLayoutAnimation()V
    .registers 2

    .prologue
    .line 2572
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 2573
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2574
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2576
    :cond_d
    return-void
.end method

.method unFocus()V
    .registers 2

    .prologue
    .line 531
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 532
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 533
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 535
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 536
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "view"
    .parameter "params"

    .prologue
    .line 1758
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1761
    :cond_1f
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_3c

    .line 1762
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1764
    :cond_3c
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1765
    return-void
.end method
