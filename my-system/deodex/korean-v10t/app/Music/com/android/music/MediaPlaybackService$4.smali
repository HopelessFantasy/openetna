.class Lcom/android/music/MediaPlaybackService$4;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 592
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1200(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 601
    :cond_25
    :goto_25
    return-void

    .line 599
    :cond_26
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;Z)V

    .line 600
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$4;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$1400(Lcom/android/music/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->stopSelf(I)V

    goto :goto_25
.end method
