.class Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;
.super Ljava/lang/Object;
.source "ManualMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MP3RingerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;


# direct methods
.method private constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;-><init>(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)V

    return-void
.end method


# virtual methods
.method public release()V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 120
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 121
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 123
    :cond_1f
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 124
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 103
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    const-string v2, "/system/sounds/Aging.mp3"

    invoke-static {v1, v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$202(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    const-string v1, "ELT Test : MP3RingerThread"

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$200(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_12
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_49

    .line 108
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v2}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$200(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 110
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 111
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode$MP3RingerThread;->this$0:Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;

    invoke-static {v1}, Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;->access$300(Lcom/lge/hiddenmenu/device_test/elt_test/ManualMode;)Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_49} :catch_4a

    .line 116
    :cond_49
    :goto_49
    return-void

    .line 113
    :catch_4a
    move-exception v1

    move-object v0, v1

    .line 114
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ELTManualModeTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method
