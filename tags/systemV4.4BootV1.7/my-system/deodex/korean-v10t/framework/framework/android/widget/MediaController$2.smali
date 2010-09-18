.class Landroid/widget/MediaController$2;
.super Landroid/os/Handler;
.source "MediaController.java"


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
    .line 337
    iput-object p1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 339
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4c

    .line 356
    :cond_5
    :goto_5
    return-void

    .line 341
    :pswitch_6
    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_5

    .line 344
    :pswitch_c
    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)I

    move-result v0

    .line 347
    .local v0, pos:I
    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    iget-object v2, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v2}, Landroid/widget/MediaController;->access$300(Landroid/widget/MediaController;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Landroid/widget/MediaController;->access$202(Landroid/widget/MediaController;I)I

    .line 350
    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->access$400(Landroid/widget/MediaController;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->access$000(Landroid/widget/MediaController;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/MediaController$2;->this$0:Landroid/widget/MediaController;

    invoke-static {v1}, Landroid/widget/MediaController;->access$500(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 351
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/MediaController$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 352
    const/16 v1, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/MediaController$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 339
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
