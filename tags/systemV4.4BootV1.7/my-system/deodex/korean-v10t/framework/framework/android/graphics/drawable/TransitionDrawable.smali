.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "TransitionDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$1;,
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "state"
    .parameter "layers"

    .prologue
    .line 93
    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 94
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "layers"

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 3
    .parameter "state"

    .prologue
    .line 98
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    .end local p1
    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f80

    const/16 v11, 0xff

    const/4 v10, 0x1

    .line 164
    const/4 v4, 0x1

    .line 166
    .local v4, done:Z
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    packed-switch v6, :pswitch_data_76

    .line 184
    :cond_c
    :goto_c
    iget v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 185
    .local v0, alpha:I
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 186
    .local v2, crossFade:Z
    iget-object v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v6, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 189
    .local v1, array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    aget-object v6, v1, v13

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1f

    .line 191
    sub-int v6, v11, v0

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 193
    :cond_1f
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 194
    if-eqz v2, :cond_27

    .line 195
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 198
    :cond_27
    if-lez v0, :cond_36

    .line 199
    aget-object v6, v1, v10

    iget-object v3, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 201
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 205
    :cond_36
    if-nez v4, :cond_3b

    .line 206
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 208
    :cond_3b
    return-void

    .line 168
    .end local v0           #alpha:I
    .end local v1           #array:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2           #crossFade:Z
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    :pswitch_3c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    .line 169
    const/4 v4, 0x0

    .line 170
    iput v10, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_c

    .line 174
    :pswitch_46
    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_c

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 177
    .local v5, normalized:F
    cmpl-float v6, v5, v12

    if-ltz v6, :cond_73

    move v4, v10

    .line 178
    :goto_60
    invoke-static {v5, v12}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 179
    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v6, v6

    iget v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iget v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_c

    :cond_73
    move v4, v13

    .line 177
    goto :goto_60

    .line 166
    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_46
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 122
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 123
    return-void
.end method

.method public reverseTransition(I)V
    .registers 11
    .parameter "duration"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, time:J
    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_32

    .line 137
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    if-nez v2, :cond_29

    .line 138
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 139
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 140
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 141
    iput-boolean v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 148
    :goto_1f
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 149
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 150
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 160
    :goto_28
    return-void

    .line 143
    :cond_29
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 144
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 145
    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 146
    iput-boolean v8, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_1f

    .line 154
    :cond_32
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-nez v2, :cond_52

    move v2, v8

    :goto_37
    iput-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 155
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 156
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_54

    move v2, v6

    :goto_42
    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 157
    iget-boolean v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    if-eqz v2, :cond_56

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v2, v0, v2

    :goto_4c
    long-to-int v2, v2

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 159
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    goto :goto_28

    :cond_52
    move v2, v6

    .line 154
    goto :goto_37

    :cond_54
    move v2, v7

    .line 156
    goto :goto_42

    .line 157
    :cond_56
    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v2, v2

    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v4

    sub-long/2addr v2, v4

    goto :goto_4c
.end method

.method public setCrossFadeEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 219
    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    .line 220
    return-void
.end method

.method public startTransition(I)V
    .registers 4
    .parameter "durationMillis"

    .prologue
    const/4 v1, 0x0

    .line 107
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    .line 108
    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    .line 109
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    .line 110
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    .line 111
    iput-boolean v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    .line 112
    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    .line 114
    return-void
.end method
