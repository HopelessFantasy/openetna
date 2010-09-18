.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x96000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0xfa0

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final PRESSED_STATE_DURATION:I = 0x55

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static SCROLL_FRICTION:F = 0.0f

.field private static final TAP_TIMEOUT:I = 0x64

.field private static final TOUCH_SLOP:I = 0x19

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field private static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDoubleTapSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 125
    const v0, 0x3c75c28f

    sput v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v0, 0xc

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 146
    iput v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 147
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 148
    const/16 v0, 0xfa0

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 149
    const/16 v0, 0xa

    iput v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 150
    const/16 v0, 0x19

    iput v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 151
    const/16 v0, 0x64

    iput v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 152
    const/16 v0, 0x10

    iput v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 154
    const v0, 0x96000

    iput v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 155
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/high16 v4, 0x4140

    const/high16 v3, 0x3f00

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 169
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 171
    .local v0, density:F
    mul-float v2, v0, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    .line 172
    mul-float v2, v0, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    .line 173
    const/high16 v2, 0x4248

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    .line 174
    const/high16 v2, 0x457a

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    .line 175
    const/high16 v2, 0x4120

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    .line 176
    const/high16 v2, 0x41c8

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    .line 177
    const/high16 v2, 0x42c8

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    .line 178
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    .line 181
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    .line 182
    return-void
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 6
    .parameter "context"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 193
    .local v2, metrics:Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c8

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 195
    .local v1, density:I
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 196
    .local v0, configuration:Landroid/view/ViewConfiguration;
    if-nez v0, :cond_22

    .line 197
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, Landroid/view/ViewConfiguration;-><init>(Landroid/content/Context;)V

    .line 198
    .restart local v0       #configuration:Landroid/view/ViewConfiguration;
    sget-object v3, Landroid/view/ViewConfiguration;->sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    :cond_22
    return-object v0
.end method

.method public static getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .registers 1

    .prologue
    .line 280
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 230
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .registers 2

    .prologue
    .line 435
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getJumpTapTimeout()I
    .registers 1

    .prologue
    .line 271
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getLongPressTimeout()I
    .registers 1

    .prologue
    .line 253
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    const v0, 0x96000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    const/16 v0, 0xfa0

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .registers 1

    .prologue
    .line 245
    const/16 v0, 0x55

    return v0
.end method

.method public static getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollFriction()F
    .registers 1

    .prologue
    .line 445
    sget v0, Landroid/view/ViewConfiguration;->SCROLL_FRICTION:F

    return v0
.end method

.method public static getTapTimeout()I
    .registers 1

    .prologue
    .line 262
    const/16 v0, 0x64

    return v0
.end method

.method public static getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    const/16 v0, 0x19

    return v0
.end method

.method public static getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 348
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .registers 2

    .prologue
    .line 424
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getScaledDoubleTapSlop()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Landroid/view/ViewConfiguration;->mDoubleTapSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Landroid/view/ViewConfiguration;->mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .registers 2

    .prologue
    .line 237
    iget v0, p0, Landroid/view/ViewConfiguration;->mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .registers 2

    .prologue
    .line 413
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .registers 2

    .prologue
    .line 391
    iget v0, p0, Landroid/view/ViewConfiguration;->mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .registers 2

    .prologue
    .line 374
    iget v0, p0, Landroid/view/ViewConfiguration;->mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Landroid/view/ViewConfiguration;->mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .registers 2

    .prologue
    .line 316
    iget v0, p0, Landroid/view/ViewConfiguration;->mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, Landroid/view/ViewConfiguration;->mWindowTouchSlop:I

    return v0
.end method
