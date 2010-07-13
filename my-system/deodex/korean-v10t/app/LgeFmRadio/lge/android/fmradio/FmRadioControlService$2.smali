.class Llge/android/fmradio/FmRadioControlService$2;
.super Landroid/telephony/PhoneStateListener;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/FmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llge/android/fmradio/FmRadioControlService;


# direct methods
.method constructor <init>(Llge/android/fmradio/FmRadioControlService;)V
    .registers 2
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 12
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/16 v8, 0x3eb

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "FM RADIO"

    .line 451
    if-ne p1, v4, :cond_89

    .line 452
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 453
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 454
    .local v1, ringvolume:I
    if-lez v1, :cond_86

    .line 455
    const-string v2, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FmRadioControlService] Phone.State.RINGING mResumeAfterCall ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$800(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v2, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FmRadioControlService] Phone.State.RINGING GetSystemState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v3}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    if-ne v3, v8, :cond_67

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v3}, Llge/android/fmradio/FmRadioControlService;->access$800(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v3

    if-eqz v3, :cond_87

    :cond_67
    move v3, v4

    :goto_68
    invoke-static {v2, v3}, Llge/android/fmradio/FmRadioControlService;->access$802(Llge/android/fmradio/FmRadioControlService;Z)Z

    .line 458
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2}, Llge/android/fmradio/FmRadioControlService;->access$800(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v2

    if-ne v2, v4, :cond_86

    .line 459
    const-string v2, "MediaPlaybackService"

    const-string v3, "[FmRadioControlService] Phone.State.RINGING"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v2, "FM RADIO"

    const-string v2, "[FmRadioControlService] mResumeAfterCall == true"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v2}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    .line 491
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_86
    :goto_86
    return-void

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #ringvolume:I
    :cond_87
    move v3, v6

    .line 457
    goto :goto_68

    .line 464
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_89
    if-ne p1, v7, :cond_ae

    .line 466
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v2}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v2

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_9d

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2}, Llge/android/fmradio/FmRadioControlService;->access$800(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 467
    :cond_9d
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2, v4}, Llge/android/fmradio/FmRadioControlService;->access$802(Llge/android/fmradio/FmRadioControlService;Z)Z

    .line 470
    :goto_a2
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v2}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    goto :goto_86

    .line 469
    :cond_a8
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2, v6}, Llge/android/fmradio/FmRadioControlService;->access$802(Llge/android/fmradio/FmRadioControlService;Z)Z

    goto :goto_a2

    .line 471
    :cond_ae
    if-nez p1, :cond_86

    .line 472
    const-string v2, "LOGTAG"

    const-string v3, "[FmRadioControlService] Phone.State.IDLE"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2}, Llge/android/fmradio/FmRadioControlService;->access$800(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v2

    if-ne v2, v4, :cond_86

    .line 475
    const-string v2, "FM RADIO"

    const-string v2, "[FmRadioControlService] mResumeAfterCall == true"

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2}, Llge/android/fmradio/FmRadioControlService;->access$900(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v2

    if-ne v2, v4, :cond_db

    .line 481
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2}, Llge/android/fmradio/FmRadioControlService;->access$1000(Llge/android/fmradio/FmRadioControlService;)I

    move-result v2

    if-ne v2, v8, :cond_e1

    .line 482
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v2}, Llge/android/fmradio/FmRadioControlService;->Run()Z

    .line 488
    :cond_db
    :goto_db
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    invoke-static {v2, v6}, Llge/android/fmradio/FmRadioControlService;->access$802(Llge/android/fmradio/FmRadioControlService;Z)Z

    goto :goto_86

    .line 484
    :cond_e1
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v2, v2, Llge/android/fmradio/FmRadioControlService;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService$2;->this$0:Llge/android/fmradio/FmRadioControlService;

    iget-object v3, v3, Llge/android/fmradio/FmRadioControlService;->mFirstRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_db
.end method
