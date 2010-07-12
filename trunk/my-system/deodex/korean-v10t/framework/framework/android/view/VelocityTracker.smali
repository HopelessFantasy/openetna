.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0xa

.field static final TAG:Ljava/lang/String; = "VelocityTracker"

.field static final localLOGV:Z

.field static final mPool:[Landroid/view/VelocityTracker;

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNext:Landroid/view/VelocityTracker;

.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/VelocityTracker;

    sput-object v0, Landroid/view/VelocityTracker;->mPool:[Landroid/view/VelocityTracker;

    .line 44
    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPastX:[F

    .line 59
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPastY:[F

    .line 60
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPastTime:[J

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 131
    const/4 v1, -0x1

    .line 134
    .local v1, drop:I
    iget-object v3, p0, Landroid/view/VelocityTracker;->mPastTime:[J

    .line 135
    .local v3, pastTime:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    const/16 v7, 0xa

    if-ge v2, v7, :cond_10

    .line 136
    aget-wide v7, v3, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_49

    .line 145
    :cond_10
    const/16 v7, 0xa

    if-ne v2, v7, :cond_17

    if-gez v1, :cond_17

    .line 146
    const/4 v1, 0x0

    .line 148
    :cond_17
    if-ne v1, v2, :cond_1b

    add-int/lit8 v1, v1, -0x1

    .line 149
    :cond_1b
    iget-object v4, p0, Landroid/view/VelocityTracker;->mPastX:[F

    .line 150
    .local v4, pastX:[F
    iget-object v5, p0, Landroid/view/VelocityTracker;->mPastY:[F

    .line 151
    .local v5, pastY:[F
    if-ltz v1, :cond_38

    .line 153
    add-int/lit8 v6, v1, 0x1

    .line 154
    .local v6, start:I
    const/16 v7, 0xa

    sub-int/2addr v7, v1

    const/4 v8, 0x1

    sub-int v0, v7, v8

    .line 155
    .local v0, count:I
    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    .line 160
    .end local v0           #count:I
    .end local v6           #start:I
    :cond_38
    aput p1, v4, v2

    .line 161
    aput p2, v5, v2

    .line 162
    aput-wide p3, v3, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    const/16 v7, 0xa

    if-ge v2, v7, :cond_48

    .line 165
    const-wide/16 v7, 0x0

    aput-wide v7, v3, v2

    .line 167
    :cond_48
    return-void

    .line 138
    .end local v4           #pastX:[F
    .end local v5           #pastY:[F
    :cond_49
    aget-wide v7, v3, v2

    const-wide/16 v9, 0xc8

    sub-long v9, p3, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_54

    .line 141
    move v1, v2

    .line 135
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 10
    .parameter "ev"

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 122
    .local v2, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 123
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/view/VelocityTracker;->addPoint(FFJ)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 127
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/view/VelocityTracker;->addPoint(FFJ)V

    .line 128
    return-void
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 108
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 109
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3
    .parameter "units"

    .prologue
    .line 176
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 177
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 23
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPastX:[F

    move-object v13, v0

    .line 194
    .local v13, pastX:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPastY:[F

    move-object v14, v0

    .line 195
    .local v14, pastY:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPastTime:[J

    move-object v12, v0

    .line 198
    .local v12, pastTime:[J
    const/16 v16, 0x0

    aget v10, v13, v16

    .line 199
    .local v10, oldestX:F
    const/16 v16, 0x0

    aget v11, v14, v16

    .line 200
    .local v11, oldestY:F
    const/16 v16, 0x0

    aget-wide v8, v12, v16

    .line 201
    .local v8, oldestTime:J
    const/4 v3, 0x0

    .line 202
    .local v3, accumX:F
    const/4 v4, 0x0

    .line 203
    .local v4, accumY:F
    const/4 v2, 0x0

    .line 204
    .local v2, N:I
    :goto_1e
    const/16 v16, 0xa

    move v0, v2

    move/from16 v1, v16

    if-ge v0, v1, :cond_2d

    .line 205
    aget-wide v16, v12, v2

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_46

    .line 211
    :cond_2d
    const/16 v16, 0x3

    move v0, v2

    move/from16 v1, v16

    if-le v0, v1, :cond_36

    add-int/lit8 v2, v2, -0x1

    .line 213
    :cond_36
    const/4 v7, 0x1

    .local v7, i:I
    :goto_37
    if-ge v7, v2, :cond_88

    .line 214
    aget-wide v16, v12, v7

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .line 215
    .local v6, dur:I
    if-nez v6, :cond_49

    .line 213
    :goto_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 208
    .end local v6           #dur:I
    .end local v7           #i:I
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 216
    .restart local v6       #dur:I
    .restart local v7       #i:I
    :cond_49
    aget v16, v13, v7

    sub-float v5, v16, v10

    .line 217
    .local v5, dist:F
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 218
    .local v15, vel:F
    const/16 v16, 0x0

    cmpl-float v16, v3, v16

    if-nez v16, :cond_7a

    move v3, v15

    .line 221
    :goto_61
    aget v16, v14, v7

    sub-float v5, v16, v11

    .line 222
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 223
    const/16 v16, 0x0

    cmpl-float v16, v4, v16

    if-nez v16, :cond_81

    move v4, v15

    goto :goto_43

    .line 219
    :cond_7a
    add-float v16, v3, v15

    const/high16 v17, 0x3f00

    mul-float v3, v16, v17

    goto :goto_61

    .line 224
    :cond_81
    add-float v16, v4, v15

    const/high16 v17, 0x3f00

    mul-float v4, v16, v17

    goto :goto_43

    .line 226
    .end local v5           #dist:F
    .end local v6           #dur:I
    .end local v15           #vel:F
    :cond_88
    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_b9

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move v0, v3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_9a
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mXVelocity:F

    .line 227
    const/16 v16, 0x0

    cmpg-float v16, v4, v16

    if-gez v16, :cond_c1

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move v0, v4

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_b2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mYVelocity:F

    .line 231
    return-void

    .line 226
    :cond_b9
    move v0, v3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_9a

    .line 227
    :cond_c1
    move v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_b2
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Landroid/view/VelocityTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Landroid/view/VelocityTracker;->mYVelocity:F

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 85
    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 91
    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    .line 92
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method
