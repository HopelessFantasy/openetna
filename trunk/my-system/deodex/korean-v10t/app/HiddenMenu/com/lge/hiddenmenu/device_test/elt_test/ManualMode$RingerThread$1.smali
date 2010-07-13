.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;
.super Landroid/os/Handler;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 476
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x3

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, r:Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_76

    .line 509
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 480
    :pswitch_8
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_2f

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 482
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    iget-object v2, v2, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    monitor-enter v1

    .line 484
    const/4 v2, 0x3

    :try_start_24
    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 485
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    iput-object v0, v2, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    .line 487
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_61

    .line 489
    :cond_2f
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    iget-object v0, v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->mRingtone:Landroid/media/Ringtone;

    .line 490
    if-eqz v0, :cond_7

    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 492
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 493
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    monitor-enter v1

    .line 494
    :try_start_41
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->access$1002(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;Z)Z

    .line 495
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->access$1100(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5c

    .line 496
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->this$1:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;->access$1102(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread;J)J

    .line 498
    :cond_5c
    monitor-exit v1

    goto :goto_7

    :catchall_5e
    move-exception v2

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_41 .. :try_end_60} :catchall_5e

    throw v2

    .line 487
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2

    .line 502
    :pswitch_64
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #r:Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 503
    .restart local v0       #r:Landroid/media/Ringtone;
    if-eqz v0, :cond_6d

    .line 504
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 506
    :cond_6d
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$RingerThread$1;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_7

    .line 478
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_64
    .end packed-switch
.end method
