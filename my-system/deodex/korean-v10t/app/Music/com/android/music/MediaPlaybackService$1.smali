.class Lcom/android/music/MediaPlaybackService$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 162
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 10
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    if-ne p1, v5, :cond_3b

    .line 164
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/android/music/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 165
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 166
    .local v1, ringvolume:I
    if-lez v1, :cond_38

    .line 167
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_27

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_27
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    if-ltz v3, :cond_39

    move v3, v5

    :goto_30
    invoke-static {v2, v3}, Lcom/android/music/MediaPlaybackService;->access$102(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 168
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 183
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_38
    :goto_38
    return-void

    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #ringvolume:I
    :cond_39
    move v3, v4

    .line 167
    goto :goto_30

    .line 170
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ringvolume:I
    :cond_3b
    if-ne p1, v6, :cond_63

    .line 172
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Z

    move-result v3

    if-eqz v3, :cond_61

    :cond_4f
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v3

    if-ltz v3, :cond_61

    move v3, v5

    :goto_58
    invoke-static {v2, v3}, Lcom/android/music/MediaPlaybackService;->access$102(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 173
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_38

    :cond_61
    move v3, v4

    .line 172
    goto :goto_58

    .line 174
    :cond_63
    if-nez p1, :cond_38

    .line 176
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$100(Lcom/android/music/MediaPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 179
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$200(Lcom/android/music/MediaPlaybackService;)V

    .line 180
    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$1;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v2, v4}, Lcom/android/music/MediaPlaybackService;->access$102(Lcom/android/music/MediaPlaybackService;Z)Z

    goto :goto_38
.end method
