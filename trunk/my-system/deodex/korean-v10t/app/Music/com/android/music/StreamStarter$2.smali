.class Lcom/android/music/StreamStarter$2;
.super Landroid/content/BroadcastReceiver;
.source "StreamStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/StreamStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/StreamStarter;


# direct methods
.method constructor <init>(Lcom/android/music/StreamStarter;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/music/StreamStarter$2;->this$0:Lcom/android/music/StreamStarter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 80
    iget-object v4, p0, Lcom/android/music/StreamStarter$2;->this$0:Lcom/android/music/StreamStarter;

    const v5, 0x7f07005d

    invoke-virtual {v4, v5}, Lcom/android/music/StreamStarter;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/music/StreamStarter$2;->this$0:Lcom/android/music/StreamStarter;

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 82
    .local v3, mt:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 83
    iget-object v4, p0, Lcom/android/music/StreamStarter$2;->this$0:Lcom/android/music/StreamStarter;

    invoke-virtual {v4}, Lcom/android/music/StreamStarter;->finish()V

    .line 94
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #mt:Landroid/widget/Toast;
    :goto_24
    return-void

    .line 87
    :cond_25
    :try_start_25
    sget-object v4, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->play()V

    .line 88
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.music.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_31} :catch_43

    .line 89
    .end local p2
    .local v1, intent:Landroid/content/Intent;
    :try_start_31
    const-string v4, "oneshot"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    iget-object v4, p0, Lcom/android/music/StreamStarter$2;->this$0:Lcom/android/music/StreamStarter;

    invoke-virtual {v4, v1}, Lcom/android/music/StreamStarter;->startActivity(Landroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_45

    move-object p2, v1

    .line 93
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p2
    :goto_3d
    iget-object v4, p0, Lcom/android/music/StreamStarter$2;->this$0:Lcom/android/music/StreamStarter;

    invoke-virtual {v4}, Lcom/android/music/StreamStarter;->finish()V

    goto :goto_24

    .line 91
    :catch_43
    move-exception v4

    goto :goto_3d

    .end local p2
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_45
    move-exception v4

    move-object p2, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_3d
.end method
