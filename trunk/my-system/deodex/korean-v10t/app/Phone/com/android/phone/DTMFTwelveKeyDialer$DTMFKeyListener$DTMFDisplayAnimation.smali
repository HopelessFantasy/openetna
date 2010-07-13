.class Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFDisplayAnimation"
.end annotation


# static fields
.field private static final EVENT_FADE_IN:I = -0x1

.field private static final EVENT_FADE_OUT:I = -0x2

.field private static final FADE_IN_ANIMATION_TIME:I = 0x1f4

.field private static final FADE_OUT_ANIMATION_TIME:I = 0x3e8

.field private static final FADE_OUT_TIMEOUT:I = 0x1770

.field private static final WAIT_FOR_USER_INPUT:J = 0x7fffffffffffffffL


# instance fields
.field private mDTMFDisplay:Landroid/view/View;

.field private mFadeIn:Landroid/view/animation/AlphaAnimation;

.field private mFadeOut:Landroid/view/animation/AlphaAnimation;

.field final synthetic this$1:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;Landroid/widget/EditText;)V
    .registers 9
    .parameter
    .parameter "display"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 1291
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->this$1:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1292
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    .line 1295
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    .line 1296
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1297
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1298
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 1301
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    .line 1302
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1303
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1304
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 1305
    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 1333
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 1342
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1346
    :goto_c
    return-void

    .line 1336
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->prepareFadeIn()V

    goto :goto_c

    .line 1333
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_d
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    if-ne p1, v0, :cond_9

    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->sendEmptyMessage(I)Z

    .line 1320
    return-void

    .line 1318
    :cond_9
    const/4 v0, -0x2

    goto :goto_5
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1326
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 1311
    return-void
.end method

.method onKeyDown()V
    .registers 6

    .prologue
    .line 1361
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1363
    .local v0, currentAnimTime:J
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_28

    .line 1366
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1373
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1374
    return-void

    .line 1367
    :cond_28
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->getStartTime()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1d

    .line 1369
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2}, Landroid/view/animation/AlphaAnimation;->start()V

    goto :goto_1d
.end method

.method onKeyUp()V
    .registers 6

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeOut:Landroid/view/animation/AlphaAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1770

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1383
    return-void
.end method

.method prepareFadeIn()V
    .registers 4

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mDTMFDisplay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1353
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener$DTMFDisplayAnimation;->mFadeIn:Landroid/view/animation/AlphaAnimation;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 1354
    return-void
.end method
