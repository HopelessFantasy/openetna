.class Lcom/android/music/MediaPlaybackService$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/MediaPlaybackService;->registerExternalStorageListener()V
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
    .line 625
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 626
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 628
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1, v3}, Lcom/android/music/MediaPlaybackService;->access$1300(Lcom/android/music/MediaPlaybackService;Z)V

    .line 629
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1, v3}, Lcom/android/music/MediaPlaybackService;->access$902(Lcom/android/music/MediaPlaybackService;Z)Z

    .line 632
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 642
    :cond_24
    :goto_24
    return-void

    .line 633
    :cond_25
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 634
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackService;->access$1508(Lcom/android/music/MediaPlaybackService;)I

    .line 635
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$1602(Lcom/android/music/MediaPlaybackService;I)I

    .line 637
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {v1, v3}, Lcom/android/music/MediaPlaybackService;->access$1700(Lcom/android/music/MediaPlaybackService;Z)V

    .line 639
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v2, "com.android.music.queuechanged"

    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    const-string v2, "com.android.music.metachanged"

    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackService;->access$700(Lcom/android/music/MediaPlaybackService;Ljava/lang/String;)V

    goto :goto_24
.end method
