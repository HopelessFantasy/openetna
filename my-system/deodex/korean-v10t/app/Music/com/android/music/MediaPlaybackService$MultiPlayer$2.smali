.class Lcom/android/music/MediaPlaybackService$MultiPlayer$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 1793
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;->this$1:Lcom/android/music/MediaPlaybackService$MultiPlayer;

    iget-object v0, v0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.asyncopencomplete"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 1795
    return-void
.end method
