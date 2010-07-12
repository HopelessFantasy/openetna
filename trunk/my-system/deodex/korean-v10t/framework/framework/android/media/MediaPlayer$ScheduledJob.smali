.class Landroid/media/MediaPlayer$ScheduledJob;
.super Ljava/util/TimerTask;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduledJob"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const-string v8, "MediaPlayer"

    .line 477
    iget-object v3, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    invoke-virtual {v3}, Landroid/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v0

    .line 478
    .local v0, currentTime:J
    iget-object v3, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$000(Landroid/media/MediaPlayer;)Landroid/lge/lgdrm/DrmContentSession;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget-object v6, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v6}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)J

    move-result-wide v6

    sub-long v6, v0, v6

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result v2

    .line 479
    .local v2, result:I
    if-lez v2, :cond_57

    .line 481
    const-string v3, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeRight result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3, v0, v1}, Landroid/media/MediaPlayer;->access$102(Landroid/media/MediaPlayer;J)J

    .line 483
    iget-object v3, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Timer;

    move-result-object v3

    new-instance v4, Landroid/media/MediaPlayer$ScheduledJob;

    iget-object v5, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-direct {v4, v5}, Landroid/media/MediaPlayer$ScheduledJob;-><init>(Landroid/media/MediaPlayer;)V

    mul-int/lit16 v5, v2, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 491
    :goto_56
    return-void

    .line 487
    :cond_57
    iget-object v3, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/media/MediaPlayer;->access$200(Landroid/media/MediaPlayer;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 488
    iget-object v3, p0, Landroid/media/MediaPlayer$ScheduledJob;->this$0:Landroid/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->access$002(Landroid/media/MediaPlayer;Landroid/lge/lgdrm/DrmContentSession;)Landroid/lge/lgdrm/DrmContentSession;

    .line 489
    const-string v3, "MediaPlayer"

    const-string v3, "In ScheduledJob!! consume finished!!"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method
