.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 14
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    const-string v9, "MediaController"

    const-string v8, ", "

    const-string v7, " "

    .line 506
    if-nez p3, :cond_9

    .line 530
    :cond_8
    :goto_8
    return-void

    .line 514
    :cond_9
    const-string v5, "MediaController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProgressChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v6}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v6}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$600(Landroid/widget/MediaController;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a0

    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$700(Landroid/widget/MediaController;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a0

    .line 517
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 518
    .local v4, position:I
    const-string v5, "MediaController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v6}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v6}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/widget/ProgressBar;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v6}, Landroid/widget/MediaController;->access$200(Landroid/widget/MediaController;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_8

    .line 525
    .end local v4           #position:I
    :cond_a0
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v5

    int-to-long v0, v5

    .line 526
    .local v0, duration:J
    int-to-long v5, p2

    mul-long/2addr v5, v0

    const-wide/16 v7, 0x3e8

    div-long v2, v5, v7

    .line 527
    .local v2, newposition:J
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v5

    long-to-int v6, v2

    invoke-interface {v5, v6}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 528
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 529
    iget-object v5, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v5}, Landroid/widget/MediaController;->access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    long-to-int v7, v2

    invoke-static {v6, v7}, Landroid/widget/MediaController;->access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "bar"

    .prologue
    .line 493
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 495
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$402(Landroid/widget/MediaController;Z)Z

    .line 502
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$900(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "bar"

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/MediaController;->access$402(Landroid/widget/MediaController;Z)Z

    .line 534
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)I

    .line 535
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$1200(Landroid/widget/MediaController;)V

    .line 536
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 541
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-static {v0}, Landroid/widget/MediaController;->access$900(Landroid/widget/MediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 542
    return-void
.end method
