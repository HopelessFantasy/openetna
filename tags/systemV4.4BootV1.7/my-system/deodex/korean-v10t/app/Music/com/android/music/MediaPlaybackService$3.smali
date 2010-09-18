.class Lcom/android/music/MediaPlaybackService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 245
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 249
    :cond_1a
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 269
    :cond_20
    :goto_20
    return-void

    .line 250
    :cond_21
    const-string v3, "previous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 251
    :cond_31
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->prev()V

    goto :goto_20

    .line 252
    :cond_37
    const-string v3, "togglepause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 253
    :cond_47
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 254
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_20

    .line 256
    :cond_55
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->play()V

    goto :goto_20

    .line 258
    :cond_5b
    const-string v3, "pause"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6b

    const-string v3, "com.android.music.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 259
    :cond_6b
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->pause()V

    goto :goto_20

    .line 260
    :cond_71
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 261
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 262
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    goto :goto_20

    .line 263
    :cond_86
    const-string v3, "appwidgetupdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 266
    const-string v3, "appWidgetIds"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 267
    .local v1, appWidgetIds:[I
    iget-object v3, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackService;->access$1100(Lcom/android/music/MediaPlaybackService;)Lcom/android/music/MediaAppWidgetProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/MediaPlaybackService$3;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v3, v4, v1}, Lcom/android/music/MediaAppWidgetProvider;->performUpdate(Lcom/android/music/MediaPlaybackService;[I)V

    goto :goto_20
.end method
