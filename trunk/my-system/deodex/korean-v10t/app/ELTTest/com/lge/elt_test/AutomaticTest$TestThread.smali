.class Lcom/lge/elt_test/AutomaticTest$TestThread;
.super Ljava/lang/Thread;
.source "AutomaticTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/elt_test/AutomaticTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/AutomaticTest;


# direct methods
.method private constructor <init>(Lcom/lge/elt_test/AutomaticTest;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/elt_test/AutomaticTest;Lcom/lge/elt_test/AutomaticTest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/lge/elt_test/AutomaticTest$TestThread;-><init>(Lcom/lge/elt_test/AutomaticTest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x7d0

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 200
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    iget-object v5, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const v6, 0x7f04000f

    invoke-virtual {v5, v6}, Lcom/lge/elt_test/AutomaticTest;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 202
    :goto_14
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$600(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v5}, Lcom/lge/elt_test/AutomaticTest;->access$700(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v5

    if-le v4, v5, :cond_2b

    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$700(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b9

    .line 203
    :cond_2b
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$700(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v4

    if-lez v4, :cond_db

    .line 204
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v6}, Lcom/lge/elt_test/AutomaticTest;->access$600(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v6}, Lcom/lge/elt_test/AutomaticTest;->access$700(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v10, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 210
    :goto_5b
    const/4 v1, 0x1

    .line 211
    .local v1, lcdOn:Z
    const/4 v0, 0x1

    .local v0, i:I
    :cond_5d
    const/16 v4, 0xa

    if-gt v0, v4, :cond_9b

    .line 212
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LCD Backlight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 217
    if-eqz v1, :cond_fb

    .line 218
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "On"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 219
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 225
    :goto_8b
    if-nez v1, :cond_108

    move v1, v10

    .line 226
    :goto_8e
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4, v1}, Lcom/lge/elt_test/AutomaticTest;->access$800(Lcom/lge/elt_test/AutomaticTest;Z)V

    .line 229
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 231
    :cond_9b
    if-nez v1, :cond_a2

    .line 232
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4, v10}, Lcom/lge/elt_test/AutomaticTest;->access$800(Lcom/lge/elt_test/AutomaticTest;Z)V

    .line 234
    :cond_a2
    :try_start_a2
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1100(Lcom/lge/elt_test/AutomaticTest;)Landroid/os/IHardwareService;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v5}, Lcom/lge/elt_test/AutomaticTest;->access$1000(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/os/IHardwareService;->setBacklights(I)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_b1} :catch_2b0

    .line 237
    :goto_b1
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_10a

    .line 324
    .end local v0           #i:I
    .end local v1           #lcdOn:Z
    :cond_b9
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Automatic Test Ended"

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 325
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, ""

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 327
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1600(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/AutomaticTest$TimerThread;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 328
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4, v8}, Lcom/lge/elt_test/AutomaticTest;->access$1702(Lcom/lge/elt_test/AutomaticTest;Z)Z

    .line 329
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/lge/elt_test/AutomaticTest;->access$1602(Lcom/lge/elt_test/AutomaticTest;Lcom/lge/elt_test/AutomaticTest$TimerThread;)Lcom/lge/elt_test/AutomaticTest$TimerThread;

    .line 331
    :cond_da
    return-void

    .line 206
    :cond_db
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v6}, Lcom/lge/elt_test/AutomaticTest;->access$600(Lcom/lge/elt_test/AutomaticTest;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v10, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    goto/16 :goto_5b

    .line 221
    .restart local v0       #i:I
    .restart local v1       #lcdOn:Z
    :cond_fb
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Off"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 222
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_108
    move v1, v8

    .line 225
    goto :goto_8e

    .line 241
    :cond_10a
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1200(Lcom/lge/elt_test/AutomaticTest;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 242
    .local v2, maxVolume:I
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1200(Lcom/lge/elt_test/AutomaticTest;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v7, v2, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 244
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Ringtone Test (15 min)"

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1300(Lcom/lge/elt_test/AutomaticTest;)Landroid/media/MediaPlayer;

    move-result-object v3

    .line 247
    .local v3, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_12a
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const/4 v5, 0x3

    const-string v6, "Preparing"

    invoke-static {v4, v5, v6}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 249
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 250
    const-string v4, "/system/sounds/Aging.mp3"

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 252
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 253
    new-instance v4, Lcom/lge/elt_test/AutomaticTest$TestThread$1;

    invoke-direct {v4, p0}, Lcom/lge/elt_test/AutomaticTest$TestThread$1;-><init>(Lcom/lge/elt_test/AutomaticTest$TestThread;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 261
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 262
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const/4 v5, 0x3

    const-string v6, "Playing"

    invoke-static {v4, v5, v6}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_158} :catch_2ad

    .line 265
    :goto_158
    const/4 v0, 0x0

    :goto_159
    const/16 v4, 0x64

    if-ge v0, v4, :cond_16a

    .line 266
    const-wide/16 v4, 0x2328

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 267
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_28a

    .line 269
    :cond_16a
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_173

    .line 270
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 272
    :cond_173
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 275
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Vibrator Test (15 min)"

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    :goto_183
    const/16 v4, 0x12c

    if-ge v0, v4, :cond_1a2

    .line 277
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1400(Lcom/lge/elt_test/AutomaticTest;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Landroid/os/Vibrator;->vibrate(J)V

    .line 278
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "On"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 279
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 280
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_28e

    .line 285
    :cond_1a2
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$1400(Lcom/lge/elt_test/AutomaticTest;)Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    .line 286
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 289
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4, v8}, Lcom/lge/elt_test/AutomaticTest;->access$1500(Lcom/lge/elt_test/AutomaticTest;I)V

    .line 290
    :cond_1b8
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/elt_test/CameraPreview;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_1cc

    .line 291
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_1b8

    .line 293
    :cond_1cc
    const/4 v0, 0x1

    :goto_1cd
    const/16 v4, 0xa

    if-gt v0, v4, :cond_221

    .line 294
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera Preview "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 295
    const-wide/16 v4, 0x1770

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 296
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/lge/elt_test/CameraPreview;->setPreviewOnOff(Z)V

    .line 297
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "On"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 298
    const-wide/16 v4, 0x1770

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 299
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lge/elt_test/CameraPreview;->setPreviewOnOff(Z)V

    .line 300
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Off"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 301
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_2a6

    .line 303
    :cond_221
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 306
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4, v8}, Lcom/lge/elt_test/AutomaticTest;->access$1500(Lcom/lge/elt_test/AutomaticTest;I)V

    .line 307
    :cond_22e
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/elt_test/CameraPreview;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_242

    .line 308
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_22e

    .line 310
    :cond_242
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Camera Preview (15 min)"

    invoke-static {v4, v9, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/lge/elt_test/CameraPreview;->setPreviewOnOff(Z)V

    .line 312
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "On"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    :goto_25a
    const/16 v4, 0x64

    if-ge v0, v4, :cond_26b

    .line 314
    const-wide/16 v4, 0x2328

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 315
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-nez v4, :cond_2aa

    .line 317
    :cond_26b
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$400(Lcom/lge/elt_test/AutomaticTest;)Lcom/lge/elt_test/CameraPreview;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/lge/elt_test/CameraPreview;->setPreviewOnOff(Z)V

    .line 318
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Off"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 321
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$608(Lcom/lge/elt_test/AutomaticTest;)I

    goto/16 :goto_14

    .line 265
    :cond_28a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_159

    .line 281
    :cond_28e
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    const-string v5, "Off"

    invoke-static {v4, v7, v5}, Lcom/lge/elt_test/AutomaticTest;->access$500(Lcom/lge/elt_test/AutomaticTest;ILjava/lang/String;)V

    .line 282
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 283
    iget-object v4, p0, Lcom/lge/elt_test/AutomaticTest$TestThread;->this$0:Lcom/lge/elt_test/AutomaticTest;

    invoke-static {v4}, Lcom/lge/elt_test/AutomaticTest;->access$900(Lcom/lge/elt_test/AutomaticTest;)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_183

    .line 293
    :cond_2a6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1cd

    .line 313
    :cond_2aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_25a

    .line 263
    :catch_2ad
    move-exception v4

    goto/16 :goto_158

    .line 235
    .end local v2           #maxVolume:I
    .end local v3           #mediaPlayer:Landroid/media/MediaPlayer;
    :catch_2b0
    move-exception v4

    goto/16 :goto_b1
.end method
