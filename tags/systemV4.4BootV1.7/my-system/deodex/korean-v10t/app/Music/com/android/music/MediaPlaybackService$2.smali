.class Lcom/android/music/MediaPlaybackService$2;
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
.field mCurrentVolume:F

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .registers 3
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 191
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b0

    .line 240
    :goto_c
    return-void

    .line 196
    :pswitch_d
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_32

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 198
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    .line 199
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 200
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c

    .line 202
    :cond_32
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    .line 203
    iget v0, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_55

    .line 204
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$400(Lcom/android/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 208
    :goto_49
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$300(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaPlaybackService$MultiPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->setVolume(F)V

    goto :goto_c

    .line 206
    :cond_55
    iput v2, p0, Lcom/android/music/MediaPlaybackService$2;->mCurrentVolume:F

    goto :goto_49

    .line 212
    :pswitch_58
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$500(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 213
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v4}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto :goto_c

    .line 219
    :cond_66
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$600(Lcom/android/music/MediaPlaybackService;)V

    goto :goto_c

    .line 223
    :pswitch_6c
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.trackend"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$800(Lcom/android/music/MediaPlaybackService;)I

    move-result v0

    if-ne v0, v4, :cond_88

    .line 225
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    .line 226
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_c

    .line 227
    :cond_88
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$900(Lcom/android/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 228
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, v3}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    goto/16 :goto_c

    .line 230
    :cond_97
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v1, "com.android.music.playbackcomplete"

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0, v3}, Lcom/android/music/MediaPlaybackService;->access$502(Lcom/android/music/MediaPlaybackService;Z)Z

    goto/16 :goto_c

    .line 235
    :pswitch_a5
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$2;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackService;->access$1000(Lcom/android/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_c

    .line 194
    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_a5
        :pswitch_58
        :pswitch_d
    .end packed-switch
.end method
