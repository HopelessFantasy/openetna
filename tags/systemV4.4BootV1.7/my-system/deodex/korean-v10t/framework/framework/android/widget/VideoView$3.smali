.class Landroid/widget/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 9
    .parameter "mp"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 413
    const/16 v1, 0x140

    .line 414
    .local v1, QVGA_WIDTH:I
    const/16 v0, 0xf0

    .line 416
    .local v0, QVGA_HEIGHT:I
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 417
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 418
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$500(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 420
    :cond_22
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 421
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 423
    :cond_33
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 424
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;I)I

    .line 427
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v2

    if-nez v2, :cond_8c

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v2

    if-nez v2, :cond_8c

    .line 430
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$802(Landroid/widget/VideoView;Z)Z

    .line 432
    :cond_8c
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-static {v2, v3}, Landroid/widget/VideoView;->access$902(Landroid/widget/VideoView;I)I

    .line 433
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_b2

    .line 434
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->setStreamingInfo(Z)V

    .line 436
    :cond_b2
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreparedListener:audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",streaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_1ae

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_1ae

    .line 441
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 442
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$200(Landroid/widget/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_135

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$300(Landroid/widget/VideoView;)I

    move-result v3

    if-eq v2, v3, :cond_149

    :cond_135
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v2

    const/16 v3, 0x140

    if-ne v2, v3, :cond_183

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_183

    .line 446
    :cond_149
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_165

    .line 447
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 448
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$1302(Landroid/widget/VideoView;I)I

    .line 450
    :cond_165
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 451
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 462
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_183

    .line 463
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 496
    :cond_183
    :goto_183
    return-void

    .line 465
    :cond_184
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_183

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-nez v2, :cond_19c

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_183

    .line 467
    :cond_19c
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_183

    .line 469
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/MediaController;->show(I)V

    goto :goto_183

    .line 478
    :cond_1ae
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check aod streaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v4}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)Z

    move-result v2

    if-ne v2, v5, :cond_201

    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Z

    move-result v2

    if-ne v2, v5, :cond_201

    .line 481
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_201

    .line 482
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 487
    :cond_201
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_21d

    .line 488
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->access$1300(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 489
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$1302(Landroid/widget/VideoView;I)I

    .line 491
    :cond_21d
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->access$1400(Landroid/widget/VideoView;)Z

    move-result v2

    if-eqz v2, :cond_183

    .line 492
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 493
    iget-object v2, p0, Landroid/widget/VideoView$3;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$1402(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_183
.end method
