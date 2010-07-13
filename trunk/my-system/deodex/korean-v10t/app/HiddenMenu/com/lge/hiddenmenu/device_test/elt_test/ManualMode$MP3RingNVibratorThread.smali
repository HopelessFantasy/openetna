.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;
.super Ljava/lang/Object;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MP3RingNVibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .prologue
    .line 190
    const-string v0, "ELT Test : Manual"

    const-string v1, "MP3RingNVibratorThread release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 192
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 194
    :cond_1c
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 195
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-object v0, v0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$402(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;I)I

    .line 197
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const-string v5, "ELTManualModeTest"

    const-string v4, "ELT Test :: error: "

    const-string v1, "ELT Test : Manual"

    .line 130
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    const-string v2, "/system/sounds/Aging.mp3"

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$202(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    const-string v1, "ELT Test : MP3Ring + Vibrator Thread"

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$200(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :try_start_18
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$200(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_30} :catch_7b

    .line 140
    :goto_30
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-boolean v1, v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mContinueMP3RingNVibrator:Z

    if-eqz v1, :cond_c8

    .line 142
    :try_start_36
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$400(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)I

    move-result v1

    packed-switch v1, :pswitch_data_ca

    goto :goto_30

    .line 144
    :pswitch_40
    const-string v1, "ELT Test : Manual"

    const-string v2, "MP3 start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 146
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$402(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;I)I

    .line 147
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5b} :catch_5c

    goto :goto_30

    .line 163
    :catch_5c
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ELTManualModeTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ELT Test :: error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    :catch_7b
    move-exception v1

    move-object v0, v1

    .line 137
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ELTManualModeTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ELT Test :: error: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 150
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_9a
    :try_start_9a
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 151
    const-string v1, "ELT Test : Manual"

    const-string v2, "vibrator start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    iget-object v1, v1, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 153
    const-wide/16 v1, 0x4e20

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 155
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingNVibratorThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$402(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;I)I

    .line 157
    :cond_c1
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c6} :catch_5c

    goto/16 :goto_30

    .line 187
    :cond_c8
    return-void

    .line 142
    nop

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_40
        :pswitch_9a
    .end packed-switch
.end method
