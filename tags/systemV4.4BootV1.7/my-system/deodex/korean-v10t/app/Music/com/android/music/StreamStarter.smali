.class public Lcom/android/music/StreamStarter;
.super Landroid/app/Activity;
.source "StreamStarter.java"


# instance fields
.field private mStatusListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lcom/android/music/StreamStarter$2;

    invoke-direct {v0, p0}, Lcom/android/music/StreamStarter$2;-><init>(Lcom/android/music/StreamStarter;)V

    iput-object v0, p0, Lcom/android/music/StreamStarter;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/music/StreamStarter;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/music/StreamStarter;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/music/StreamStarter;->setVolumeControlStream(I)V

    .line 42
    invoke-virtual {p0, v4}, Lcom/android/music/StreamStarter;->requestWindowFeature(I)Z

    .line 43
    const v3, 0x7f03000f

    invoke-virtual {p0, v3}, Lcom/android/music/StreamStarter;->setContentView(I)V

    .line 45
    const v3, 0x7f0a002b

    invoke-virtual {p0, v3}, Lcom/android/music/StreamStarter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 47
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/music/StreamStarter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 48
    .local v2, uri:Landroid/net/Uri;
    const v3, 0x7f070051

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/music/StreamStarter;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v0, :cond_11

    .line 107
    :try_start_4
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_11

    .line 108
    sget-object v0, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->stop()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_1d

    .line 113
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/music/StreamStarter;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/StreamStarter;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    invoke-static {p0}, Lcom/android/music/MusicUtils;->unbindFromService(Landroid/content/Context;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 116
    return-void

    .line 110
    :catch_1d
    move-exception v0

    goto :goto_11
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    new-instance v0, Lcom/android/music/StreamStarter$1;

    invoke-direct {v0, p0}, Lcom/android/music/StreamStarter$1;-><init>(Lcom/android/music/StreamStarter;)V

    invoke-static {p0, v0}, Lcom/android/music/MusicUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 71
    return-void
.end method
