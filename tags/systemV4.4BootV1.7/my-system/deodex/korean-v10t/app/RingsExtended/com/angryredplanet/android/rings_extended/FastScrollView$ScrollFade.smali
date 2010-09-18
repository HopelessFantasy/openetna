.class public Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;
.super Ljava/lang/Object;
.source "FastScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/angryredplanet/android/rings_extended/FastScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScrollFade"
.end annotation


# static fields
.field static final ALPHA_MAX:I = 0xff

.field static final FADE_DURATION:J = 0xc8L


# instance fields
.field mFadeDuration:J

.field mStartTime:J

.field mStarted:Z

.field final synthetic this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;


# direct methods
.method public constructor <init>(Lcom/angryredplanet/android/rings_extended/FastScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAlpha()I
    .registers 10

    .prologue
    const-wide/16 v7, 0xff

    .line 421
    iget-boolean v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    if-nez v3, :cond_9

    .line 422
    const/16 v3, 0xff

    .line 431
    :goto_8
    return v3

    .line 425
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 426
    .local v1, now:J
    iget-wide v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStartTime:J

    iget-wide v5, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mFadeDuration:J

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_19

    .line 427
    const/4 v0, 0x0

    .local v0, alpha:I
    :goto_17
    move v3, v0

    .line 431
    goto :goto_8

    .line 429
    .end local v0           #alpha:I
    :cond_19
    iget-wide v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStartTime:J

    sub-long v3, v1, v3

    mul-long/2addr v3, v7

    iget-wide v5, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mFadeDuration:J

    div-long/2addr v3, v5

    sub-long v3, v7, v3

    long-to-int v0, v3

    .restart local v0       #alpha:I
    goto :goto_17
.end method

.method public run()V
    .registers 6

    .prologue
    .line 435
    iget-boolean v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    if-nez v2, :cond_c

    .line 436
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->startFade()V

    .line 437
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-virtual {v2}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->invalidate()V

    .line 440
    :cond_c
    invoke-virtual {p0}, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->getAlpha()I

    move-result v2

    if-lez v2, :cond_33

    .line 441
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-static {v2}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->access$000(Lcom/angryredplanet/android/rings_extended/FastScrollView;)I

    move-result v1

    .line 442
    .local v1, y:I
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-virtual {v2}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->getWidth()I

    move-result v0

    .line 443
    .local v0, viewWidth:I
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    iget-object v3, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-static {v3}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->access$100(Lcom/angryredplanet/android/rings_extended/FastScrollView;)I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-static {v4}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->access$200(Lcom/angryredplanet/android/rings_extended/FastScrollView;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->invalidate(IIII)V

    .line 448
    .end local v0           #viewWidth:I
    .end local v1           #y:I
    :goto_32
    return-void

    .line 445
    :cond_33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    .line 446
    iget-object v2, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->this$0:Lcom/angryredplanet/android/rings_extended/FastScrollView;

    invoke-static {v2}, Lcom/angryredplanet/android/rings_extended/FastScrollView;->access$300(Lcom/angryredplanet/android/rings_extended/FastScrollView;)V

    goto :goto_32
.end method

.method startFade()V
    .registers 3

    .prologue
    .line 415
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mFadeDuration:J

    .line 416
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStartTime:J

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/angryredplanet/android/rings_extended/FastScrollView$ScrollFade;->mStarted:Z

    .line 418
    return-void
.end method
