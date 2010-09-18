.class public Lcom/android/camera/SlideShow$ImageViewTouch;
.super Landroid/widget/ImageView;
.source "SlideShow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageViewTouch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    }
.end annotation


# instance fields
.field mDown:Z

.field mPaints:[Landroid/graphics/Paint;

.field mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SlideShow$ImageViewTouch$xy;",
            ">;"
        }
    .end annotation
.end field

.field mSlideShow:Lcom/android/camera/SlideShow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPaints:[Landroid/graphics/Paint;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    .line 119
    check-cast p1, Lcom/android/camera/SlideShow;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mSlideShow:Lcom/android/camera/SlideShow;

    .line 120
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/SlideShow$ImageViewTouch;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    invoke-direct {p0}, Lcom/android/camera/SlideShow$ImageViewTouch;->setupPaint()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPaints:[Landroid/graphics/Paint;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    .line 126
    check-cast p1, Lcom/android/camera/SlideShow;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mSlideShow:Lcom/android/camera/SlideShow;

    .line 127
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/SlideShow$ImageViewTouch;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    invoke-direct {p0}, Lcom/android/camera/SlideShow$ImageViewTouch;->setupPaint()V

    .line 129
    return-void
.end method

.method private addEvent(Landroid/view/MotionEvent;)V
    .registers 11
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 144
    .local v2, now:J
    iget-object v4, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/SlideShow$ImageViewTouch$xy;

    invoke-direct {v5, p0, p1}, Lcom/android/camera/SlideShow$ImageViewTouch$xy;-><init>(Lcom/android/camera/SlideShow$ImageViewTouch;Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 146
    iget-object v4, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/camera/SlideShow$ImageViewTouch$xy;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/camera/SlideShow$ImageViewTouch$xy;-><init>(Lcom/android/camera/SlideShow$ImageViewTouch;FF)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 151
    .local v0, ev:Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    :cond_2b
    iget-object v4, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    .end local v0           #ev:Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    :cond_30
    iget-object v4, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4a

    .line 148
    iget-object v4, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;

    .line 149
    .restart local v0       #ev:Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    iget-wide v4, v0, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->timeAdded:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2b

    .line 153
    .end local v0           #ev:Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    :cond_4a
    return-void
.end method

.method private setupPaint()V
    .registers 5

    .prologue
    const/16 v3, 0xff

    .line 132
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v2, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPaints:[Landroid/graphics/Paint;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 133
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .local v1, p:Landroid/graphics/Paint;
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 135
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget-object v2, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPaints:[Landroid/graphics/Paint;

    aput-object v1, v2, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 140
    .end local v1           #p:Landroid/graphics/Paint;
    :cond_26
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, didPaint:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 180
    .local v6, now:J
    iget-object v9, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/SlideShow$ImageViewTouch$xy;

    .line 181
    .local v4, ev:Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    iget-object v9, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mPaints:[Landroid/graphics/Paint;

    aget-object v8, v9, v12

    .line 182
    .local v8, p:Landroid/graphics/Paint;
    iget-wide v9, v4, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->timeAdded:J

    sub-long v1, v6, v9

    .line 183
    .local v1, delta:J
    const-wide/16 v9, 0x7d0

    cmp-long v9, v1, v9

    if-gtz v9, :cond_f

    .line 186
    const/16 v9, 0xff

    long-to-int v10, v1

    mul-int/lit16 v10, v10, 0xff

    div-int/lit16 v10, v10, 0x7d0

    sub-int/2addr v9, v10

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 187
    .local v0, alpha2:I
    if-eqz v0, :cond_f

    .line 189
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    iget v9, v4, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->x:F

    iget v10, v4, Lcom/android/camera/SlideShow$ImageViewTouch$xy;->y:F

    const/high16 v11, 0x4000

    invoke-virtual {p1, v9, v10, v11, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    const/4 v3, 0x1

    .line 192
    goto :goto_f

    .line 193
    .end local v0           #alpha2:I
    .end local v1           #delta:J
    .end local v4           #ev:Lcom/android/camera/SlideShow$ImageViewTouch$xy;
    .end local v8           #p:Landroid/graphics/Paint;
    :cond_45
    if-eqz v3, :cond_4e

    iget-boolean v9, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mDown:Z

    if-nez v9, :cond_4e

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/SlideShow$ImageViewTouch;->postInvalidate()V

    .line 195
    :cond_4e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 156
    invoke-direct {p0, p1}, Lcom/android/camera/SlideShow$ImageViewTouch;->addEvent(Landroid/view/MotionEvent;)V

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 172
    :goto_b
    return v1

    .line 159
    :pswitch_c
    iput-boolean v1, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mDown:Z

    .line 160
    iget-object v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mSlideShow:Lcom/android/camera/SlideShow;

    invoke-static {v0}, Lcom/android/camera/SlideShow;->access$000(Lcom/android/camera/SlideShow;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/SlideShow$ImageViewTouch;->postInvalidate()V

    goto :goto_b

    .line 164
    :pswitch_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mDown:Z

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/SlideShow$ImageViewTouch;->postInvalidate()V

    goto :goto_b

    .line 168
    :pswitch_1e
    iget-object v0, p0, Lcom/android/camera/SlideShow$ImageViewTouch;->mSlideShow:Lcom/android/camera/SlideShow;

    invoke-static {v0}, Lcom/android/camera/SlideShow;->access$000(Lcom/android/camera/SlideShow;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/camera/SlideShow$ImageViewTouch;->postInvalidate()V

    goto :goto_b

    .line 157
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_1e
    .end packed-switch
.end method
