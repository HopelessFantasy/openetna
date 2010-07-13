.class Lcom/android/music/MediaPlaybackActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1307
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1310
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$2200(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1311
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1900(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1312
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$2100(Lcom/android/music/MediaPlaybackActivity;J)V

    .line 1327
    :cond_1e
    :goto_1e
    return-void

    .line 1313
    :cond_1f
    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1314
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1300(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1315
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto :goto_1e

    .line 1317
    :cond_35
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1900(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_1e

    .line 1319
    :cond_3b
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1320
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1900(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_1e

    .line 1321
    :cond_49
    const-string v1, "com.android.music.refreshui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1322
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$600(Lcom/android/music/MediaPlaybackActivity;)J

    goto :goto_1e

    .line 1323
    :cond_57
    const-string v1, "com.android.music.trackend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1324
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$2302(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 1325
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;Z)Z

    goto :goto_1e
.end method
