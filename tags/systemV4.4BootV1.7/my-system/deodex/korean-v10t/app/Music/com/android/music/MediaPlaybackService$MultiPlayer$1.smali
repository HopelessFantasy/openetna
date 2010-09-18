.class Lcom/android/music/MediaPlaybackService$MultiPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 1779
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .parameter "mp"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.refreshui"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1787
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1800(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1788
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->access$1800(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1789
    return-void
.end method
