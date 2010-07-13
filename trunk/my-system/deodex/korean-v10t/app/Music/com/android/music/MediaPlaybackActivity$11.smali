.class Lcom/android/music/MediaPlaybackActivity$11;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 1152
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$302(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1118
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1200(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1122
    :try_start_e
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I

    move-result v1

    if-gez v1, :cond_32

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 1125
    :cond_32
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1300(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/music/IMediaPlaybackService;->getAudioId()I

    move-result v1

    if-gez v1, :cond_6a

    .line 1126
    :cond_46
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1400(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1127
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1128
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1136
    :goto_64
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1900(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1151
    :goto_69
    return-void

    .line 1130
    :cond_6a
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1400(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1131
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1132
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1133
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1700(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1134
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$1800(Lcom/android/music/MediaPlaybackActivity;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_92} :catch_93

    goto :goto_64

    .line 1139
    :catch_93
    move-exception v1

    .line 1144
    :cond_94
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_b8

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1147
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-class v2, Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1148
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1150
    .end local v0           #intent:Landroid/content/Intent;
    :cond_b8
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/android/music/MediaPlaybackActivity;->finish()V

    goto :goto_69
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "classname"

    .prologue
    .line 1153
    return-void
.end method
