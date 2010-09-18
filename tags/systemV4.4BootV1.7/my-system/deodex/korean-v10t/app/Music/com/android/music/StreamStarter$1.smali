.class Lcom/android/music/StreamStarter$1;
.super Ljava/lang/Object;
.source "StreamStarter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/StreamStarter;->onResume()V
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
    .line 68
    iput-object p1, p0, Lcom/android/music/StreamStarter$1;->this$0:Lcom/android/music/StreamStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.asyncopencomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/android/music/StreamStarter$1;->this$0:Lcom/android/music/StreamStarter;

    iget-object v2, p0, Lcom/android/music/StreamStarter$1;->this$0:Lcom/android/music/StreamStarter;

    invoke-static {v2}, Lcom/android/music/StreamStarter;->access$000(Lcom/android/music/StreamStarter;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/music/StreamStarter;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    sget-object v1, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/StreamStarter$1;->this$0:Lcom/android/music/StreamStarter;

    invoke-virtual {v2}, Lcom/android/music/StreamStarter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/music/IMediaPlaybackService;->openFileAsync(Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_33

    .line 66
    .end local v0           #f:Landroid/content/IntentFilter;
    :goto_32
    return-void

    .line 64
    :catch_33
    move-exception v1

    goto :goto_32
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "classname"

    .prologue
    .line 69
    return-void
.end method
