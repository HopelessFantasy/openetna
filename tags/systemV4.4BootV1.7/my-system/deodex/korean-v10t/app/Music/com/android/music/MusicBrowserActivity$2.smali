.class Lcom/android/music/MusicBrowserActivity$2;
.super Ljava/lang/Object;
.source "MusicBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$2;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$2;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-virtual {v1, p0}, Lcom/android/music/MusicBrowserActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_17

    .line 225
    :goto_5
    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    .line 226
    .local v0, serv:Lcom/android/music/IMediaPlaybackService;
    if-eqz v0, :cond_14

    .line 228
    const/4 v1, 0x2

    :try_start_c
    invoke-interface {v0, v1}, Lcom/android/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 229
    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$2;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$000(Lcom/android/music/MusicBrowserActivity;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    .line 233
    :cond_14
    :goto_14
    return-void

    .line 230
    :catch_15
    move-exception v1

    goto :goto_14

    .line 223
    .end local v0           #serv:Lcom/android/music/IMediaPlaybackService;
    :catch_17
    move-exception v1

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "classname"

    .prologue
    .line 236
    return-void
.end method
