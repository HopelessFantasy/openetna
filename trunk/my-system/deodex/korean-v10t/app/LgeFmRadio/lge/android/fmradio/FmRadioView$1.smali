.class Llge/android/fmradio/FmRadioView$1;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioView;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioView;)V
    .registers 2
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x3e9

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "FM RADIO"

    .line 447
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, action:Ljava/lang/String;
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 449
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_UPDATE_FREQ"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$000(Llge/android/fmradio/FmRadioView;)V

    .line 453
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$100(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_2c

    .line 454
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$200(Llge/android/fmradio/FmRadioView;)V

    .line 457
    :cond_2c
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$300(Llge/android/fmradio/FmRadioView;)I

    move-result v1

    if-eqz v1, :cond_41

    .line 458
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v1, v1, Llge/android/fmradio/FmRadioView;->mAtCommandTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v2, v2, Llge/android/fmradio/FmRadioView;->mAtCommandRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    :cond_41
    :goto_41
    return-void

    .line 461
    :cond_42
    const-string v1, "lge.android.fmradio.updatefreqdot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 462
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_UPDATE_FREQ_DOT"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$400(Llge/android/fmradio/FmRadioView;)V

    goto :goto_41

    .line 466
    :cond_57
    const-string v1, "lge.android.fmradio.updaterssi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 467
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_UPDATE_RSSI"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$500(Llge/android/fmradio/FmRadioView;)V

    goto :goto_41

    .line 469
    :cond_6c
    const-string v1, "lge.android.fmradio.power"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 470
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v7, :cond_96

    .line 471
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioView;->waitpopupclose()V

    .line 472
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_POWER_ON"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v5}, Llge/android/fmradio/FmRadioView;->access$602(Llge/android/fmradio/FmRadioView;Z)Z

    .line 474
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v5}, Llge/android/fmradio/FmRadioView;->access$700(Llge/android/fmradio/FmRadioView;Z)V

    .line 476
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$800(Llge/android/fmradio/FmRadioView;Z)V

    goto :goto_41

    .line 482
    :cond_96
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_POWER_OFF"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$602(Llge/android/fmradio/FmRadioView;Z)Z

    .line 484
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v1, v1, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v2, v2, Llge/android/fmradio/FmRadioView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$700(Llge/android/fmradio/FmRadioView;Z)V

    .line 487
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioView;->waitpopupclose()V

    .line 488
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v5}, Llge/android/fmradio/FmRadioView;->access$800(Llge/android/fmradio/FmRadioView;Z)V

    goto :goto_41

    .line 493
    :cond_bd
    const-string v1, "lge.android.fmradio.rdsdata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ce

    .line 495
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_RDS_DATA"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 497
    :cond_ce
    const-string v1, "lge.android.fmradio.warningwithoutearjack"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 498
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_WARNING_WITHOUT_EARJACK"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$900(Llge/android/fmradio/FmRadioView;)V

    goto/16 :goto_41

    .line 501
    :cond_e4
    const-string v1, "lge.android.fmradio.airplainmode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 502
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_AIR_PLAIN_MODE"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1000(Llge/android/fmradio/FmRadioView;)V

    goto/16 :goto_41

    .line 505
    :cond_fa
    const-string v1, "lge.android.fmradio.bluetoothmode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 506
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_BLUETOOTH_MODE"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1100(Llge/android/fmradio/FmRadioView;)V

    goto/16 :goto_41

    .line 509
    :cond_110
    const-string v1, "lge.android.fmradio.outputsound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a6

    .line 510
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_OUTPUT_SOUND"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioView;->closeOptionsMenu()V

    .line 512
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1200(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-eq v1, v5, :cond_134

    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1300(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_148

    .line 513
    :cond_134
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v1, v1, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 514
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1202(Llge/android/fmradio/FmRadioView;Z)Z

    .line 515
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1302(Llge/android/fmradio/FmRadioView;Z)Z

    .line 517
    :cond_148
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$100(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_170

    .line 518
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1400(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1500(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1600(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 523
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$102(Llge/android/fmradio/FmRadioView;Z)Z

    .line 525
    :cond_170
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1700(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_183

    .line 527
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioView;->dismissDialog(I)V

    .line 528
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1702(Llge/android/fmradio/FmRadioView;Z)Z

    .line 530
    :cond_183
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1800(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_196

    .line 531
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioView;->dismissDialog(I)V

    .line 532
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1802(Llge/android/fmradio/FmRadioView;Z)Z

    .line 534
    :cond_196
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$1900(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_1aa

    .line 535
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioView;->dismissDialog(I)V

    .line 536
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1902(Llge/android/fmradio/FmRadioView;Z)Z

    .line 538
    :cond_1aa
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v7, :cond_22d

    .line 540
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_OUTPUT_SOUND..3"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getCurrentSoundDevice()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_21c

    .line 543
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2000(Llge/android/fmradio/FmRadioView;)V

    .line 545
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2100(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_219

    .line 546
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$2102(Llge/android/fmradio/FmRadioView;Z)Z

    .line 547
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1202(Llge/android/fmradio/FmRadioView;Z)Z

    .line 548
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1302(Llge/android/fmradio/FmRadioView;Z)Z

    .line 549
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Llge/android/fmradio/FmRadioCustomSetChannel;

    invoke-virtual {v1, v6}, Llge/android/fmradio/FmRadioCustomSetChannel;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2200(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 553
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2300(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 555
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2400(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 557
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2500(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 560
    :cond_219
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->stop()V

    .line 562
    :cond_21c
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const-string v2, "outputsound"

    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getCurrentSoundDevice()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioView;->access$2600(Llge/android/fmradio/FmRadioView;I)V

    goto/16 :goto_41

    .line 565
    :cond_22d
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_OUTPUT_SOUND..5"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_29f

    .line 568
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_OUTPUT_SOUND..6"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2100(Llge/android/fmradio/FmRadioView;)Z

    move-result v1

    if-ne v1, v5, :cond_29f

    .line 570
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_OUTPUT_SOUND..\u0004"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$2102(Llge/android/fmradio/FmRadioView;Z)Z

    .line 572
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1202(Llge/android/fmradio/FmRadioView;Z)Z

    .line 573
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$1302(Llge/android/fmradio/FmRadioView;Z)Z

    .line 574
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Llge/android/fmradio/FmRadioCustomSetChannel;

    invoke-virtual {v1, v6}, Llge/android/fmradio/FmRadioCustomSetChannel;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2200(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 578
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2300(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 580
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2400(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 582
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2500(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020047

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 586
    :cond_29f
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioView;->waitpopupclose()V

    goto/16 :goto_41

    .line 588
    :cond_2a6
    const-string v1, "lge.android.fmradio.listenviaoutputsound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c6

    .line 589
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_LISTENVIA_OUTPUT_SOUND"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const-string v2, "outputsound"

    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getCurrentSoundDevice()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioView;->access$2700(Llge/android/fmradio/FmRadioView;I)V

    goto/16 :goto_41

    .line 591
    :cond_2c6
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2dc

    .line 592
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] Intent.ACTION_BATTERY_LOW"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$2800(Llge/android/fmradio/FmRadioView;)V

    goto/16 :goto_41

    .line 594
    :cond_2dc
    const-string v1, "lge.android.fmradio.headsetremoved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f2

    .line 595
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] NOTIFY_UI_MSG_WARNING_HEADSET_UNPLUG"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v5}, Llge/android/fmradio/FmRadioView;->access$2902(Llge/android/fmradio/FmRadioView;Z)Z

    goto/16 :goto_41

    .line 599
    :cond_2f2
    const-string v1, "android.intent.action.LGE_AT_COMMAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31d

    .line 601
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][BroadcastReceiver] LGE_AT_COMMAND"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, p2}, Llge/android/fmradio/FmRadioView;->access$3000(Llge/android/fmradio/FmRadioView;Landroid/content/Intent;)V

    .line 605
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1}, Llge/android/fmradio/FmRadioView;->access$300(Llge/android/fmradio/FmRadioView;)I

    move-result v1

    if-eqz v1, :cond_41

    .line 606
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v1, v1, Llge/android/fmradio/FmRadioView;->mAtCommandTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    iget-object v2, v2, Llge/android/fmradio/FmRadioView;->mAtCommandRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_41

    .line 609
    :cond_31d
    const-string v1, "lge.android.fmradio.withoutheadset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 611
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_334

    .line 612
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 613
    :cond_334
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v4}, Llge/android/fmradio/FmRadioView;->access$700(Llge/android/fmradio/FmRadioView;Z)V

    .line 614
    iget-object v1, p0, Llge/android/fmradio/FmRadioView$1;->this$0:Llge/android/fmradio/FmRadioView;

    invoke-static {v1, v5}, Llge/android/fmradio/FmRadioView;->access$800(Llge/android/fmradio/FmRadioView;Z)V

    goto/16 :goto_41
.end method
