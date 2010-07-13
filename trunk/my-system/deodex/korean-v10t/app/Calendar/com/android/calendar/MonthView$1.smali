.class Lcom/android/calendar/MonthView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$102(Lcom/android/calendar/MonthView;Z)Z

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 267
    iget-object v3, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3, v5}, Lcom/android/calendar/MonthView;->access$102(Lcom/android/calendar/MonthView;Z)Z

    .line 268
    iget-object v3, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3, v5}, Lcom/android/calendar/MonthView;->access$202(Lcom/android/calendar/MonthView;I)I

    .line 270
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 271
    .local v0, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 272
    .local v1, distanceY:I
    const/16 v3, 0x32

    if-lt v1, v3, :cond_30

    if-ge v1, v0, :cond_32

    :cond_30
    move v3, v5

    .line 287
    :goto_31
    return v3

    .line 277
    :cond_32
    iget-object v3, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v2

    .line 278
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$400(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 279
    const/4 v3, 0x0

    cmpg-float v3, p4, v3

    if-gez v3, :cond_5a

    .line 280
    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->month:I

    .line 284
    :goto_4c
    invoke-virtual {v2, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 285
    iget-object v3, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;)V

    move v3, v6

    .line 287
    goto :goto_31

    .line 282
    :cond_5a
    iget v3, v2, Landroid/text/format/Time;->month:I

    sub-int/2addr v3, v6

    iput v3, v2, Landroid/text/format/Time;->month:I

    goto :goto_4c
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "e"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$100(Lcom/android/calendar/MonthView;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 326
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$102(Lcom/android/calendar/MonthView;Z)Z

    .line 327
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$202(Lcom/android/calendar/MonthView;I)I

    .line 328
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;Z)Z

    .line 329
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 330
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->performLongClick()Z

    .line 332
    :cond_24
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$102(Lcom/android/calendar/MonthView;Z)Z

    .line 342
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 343
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$202(Lcom/android/calendar/MonthView;I)I

    .line 344
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0, v2}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;Z)Z

    .line 345
    iget-object v0, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 347
    :cond_1e
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 9
    .parameter "e"

    .prologue
    const/4 v6, 0x1

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 299
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 300
    .local v3, y:I
    const/4 v4, 0x0

    sub-int v4, v3, v4

    iget-object v5, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$600(Lcom/android/calendar/MonthView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    div-int v1, v4, v5

    .line 301
    .local v1, row:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$700(Lcom/android/calendar/MonthView;)I

    move-result v4

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v0, v4, v5

    .line 302
    .local v0, col:I
    const/4 v4, 0x5

    if-le v1, v4, :cond_2e

    .line 303
    const/4 v1, 0x5

    .line 305
    :cond_2e
    const/4 v4, 0x6

    if-le v0, v4, :cond_32

    .line 306
    const/4 v0, 0x6

    .line 311
    :cond_32
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$102(Lcom/android/calendar/MonthView;Z)Z

    .line 314
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$900(Lcom/android/calendar/MonthView;)Landroid/util/DayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/util/DayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 315
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$202(Lcom/android/calendar/MonthView;I)I

    .line 316
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;Z)Z

    .line 317
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 318
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v6, 0x1

    .line 352
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$100(Lcom/android/calendar/MonthView;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 353
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$202(Lcom/android/calendar/MonthView;I)I

    .line 354
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;Z)Z

    .line 355
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 356
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$102(Lcom/android/calendar/MonthView;Z)Z

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 358
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 359
    .local v3, y:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4, v2, v3}, Lcom/android/calendar/MonthView;->access$1100(Lcom/android/calendar/MonthView;II)J

    move-result-wide v0

    .line 360
    .local v0, millis:J
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1200(Lcom/android/calendar/MonthView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0, v1}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    .line 361
    iget-object v4, p0, Lcom/android/calendar/MonthView$1;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/MonthActivity;->finish()V

    .line 364
    .end local v0           #millis:J
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_47
    return v6
.end method
