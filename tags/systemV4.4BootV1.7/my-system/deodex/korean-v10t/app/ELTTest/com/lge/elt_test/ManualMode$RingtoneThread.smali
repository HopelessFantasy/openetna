.class Lcom/lge/elt_test/ManualMode$RingtoneThread;
.super Ljava/lang/Thread;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingtoneThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/elt_test/ManualMode;Lcom/lge/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/lge/elt_test/ManualMode$RingtoneThread;-><init>(Lcom/lge/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 332
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v6}, Lcom/lge/elt_test/ManualMode;->access$1000(Lcom/lge/elt_test/ManualMode;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const v6, 0x7f040010

    invoke-virtual {v5, v6}, Lcom/lge/elt_test/ManualMode;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v3}, Lcom/lge/elt_test/ManualMode;->access$1200(Lcom/lge/elt_test/ManualMode;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 336
    .local v1, maxVolume:I
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v3}, Lcom/lge/elt_test/ManualMode;->access$1200(Lcom/lge/elt_test/ManualMode;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 338
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    invoke-static {v3}, Lcom/lge/elt_test/ManualMode;->access$1300(Lcom/lge/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 340
    .local v2, mediaPlayer:Landroid/media/MediaPlayer;
    :try_start_49
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v4, 0x3

    const-string v5, "Preparing"

    invoke-static {v3, v4, v5}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V

    .line 341
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 342
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 343
    const-string v3, "/system/sounds/Aging.mp3"

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 345
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 346
    new-instance v3, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;

    invoke-direct {v3, p0}, Lcom/lge/elt_test/ManualMode$RingtoneThread$1;-><init>(Lcom/lge/elt_test/ManualMode$RingtoneThread;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 356
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 357
    iget-object v3, p0, Lcom/lge/elt_test/ManualMode$RingtoneThread;->this$0:Lcom/lge/elt_test/ManualMode;

    const/4 v4, 0x3

    const-string v5, "Playing"

    invoke-static {v3, v4, v5}, Lcom/lge/elt_test/ManualMode;->access$700(Lcom/lge/elt_test/ManualMode;ILjava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_77} :catch_78

    .line 361
    :goto_77
    return-void

    .line 358
    :catch_78
    move-exception v3

    move-object v0, v3

    .line 359
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ELTManualModeTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_77
.end method
