.class Lcom/android/calendar/CalendarView$ContinueScroll;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# static fields
.field private static final FREE_SPIN_MILLIS:J = 0xb4L

.field private static final FRICTION_COEF:F = 0.7f

.field private static final MAX_DELTA:I = 0x3c

.field private static final SCROLL_REPEAT_INTERVAL:I = 0x1e


# instance fields
.field mAbsDeltaY:I

.field mFloatDeltaY:F

.field mFreeSpinTime:J

.field mSignDeltaY:I

.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 2944
    iput-object p1, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2944
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ContinueScroll;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .registers 6
    .parameter "deltaY"

    .prologue
    const/16 v1, 0x3c

    .line 2955
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    .line 2956
    if-lez p1, :cond_25

    .line 2957
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    .line 2961
    :cond_a
    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 2964
    iget v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-le v0, v1, :cond_16

    .line 2965
    iput v1, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 2967
    :cond_16
    iget v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    .line 2968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    .line 2971
    return-void

    .line 2958
    :cond_25
    if-gez p1, :cond_a

    .line 2959
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    goto :goto_a
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2977
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    .line 2980
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_4e

    .line 2981
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 2987
    :goto_18
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-gez v2, :cond_1e

    .line 2988
    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 2992
    :cond_1e
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    if-ne v2, v5, :cond_5c

    .line 2993
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1320(Lcom/android/calendar/CalendarView;I)I

    .line 3000
    :goto_29
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)I

    move-result v2

    if-gez v2, :cond_64

    .line 3001
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2, v4}, Lcom/android/calendar/CalendarView;->access$1302(Lcom/android/calendar/CalendarView;I)I

    .line 3002
    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 3008
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1500(Lcom/android/calendar/CalendarView;)V

    .line 3010
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-lez v2, :cond_80

    .line 3011
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3019
    :goto_48
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 3020
    return-void

    .line 2983
    :cond_4e
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    .line 2984
    iget v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_18

    .line 2995
    :cond_5c
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1312(Lcom/android/calendar/CalendarView;I)I

    goto :goto_29

    .line 3003
    :cond_64
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1300(Lcom/android/calendar/CalendarView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)I

    move-result v3

    if-le v2, v3, :cond_38

    .line 3004
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v3, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v3}, Lcom/android/calendar/CalendarView;->access$1400(Lcom/android/calendar/CalendarView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/calendar/CalendarView;->access$1302(Lcom/android/calendar/CalendarView;I)I

    .line 3005
    iput v4, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_38

    .line 3014
    :cond_80
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2, v4}, Lcom/android/calendar/CalendarView;->access$1602(Lcom/android/calendar/CalendarView;Z)Z

    .line 3015
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2}, Lcom/android/calendar/CalendarView;->access$1700(Lcom/android/calendar/CalendarView;)V

    .line 3016
    iget-object v2, p0, Lcom/android/calendar/CalendarView$ContinueScroll;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v2, v5}, Lcom/android/calendar/CalendarView;->access$402(Lcom/android/calendar/CalendarView;Z)Z

    goto :goto_48
.end method
