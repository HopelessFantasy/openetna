.class Lcom/android/music/MediaPlaybackService$MultiPlayer$3;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService$MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1800
    packed-switch p2, :pswitch_data_72

    .line 1812
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1902(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 1813
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1814
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2002(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1815
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const v1, 0x7f07004e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1816
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v2}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    move v0, v2

    .line 1819
    :goto_33
    return v0

    .line 1802
    :pswitch_34
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0, v2}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1902(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z

    .line 1803
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1807
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2002(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1808
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$2000(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v1, v1, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1809
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1800(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1800(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    .line 1810
    goto :goto_33

    .line 1800
    nop

    :pswitch_data_72
    .packed-switch 0x64
        :pswitch_34
    .end packed-switch
.end method
