.class Lcom/android/music/PlaylistBrowserActivity$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/PlaylistBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    iput-object p2, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 97
    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 98
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "playlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    .local v0, id:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_2b

    .line 100
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/android/music/PlaylistBrowserActivity;->access$000(Lcom/android/music/PlaylistBrowserActivity;)V

    .line 111
    :cond_25
    :goto_25
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v3}, Lcom/android/music/PlaylistBrowserActivity;->finish()V

    .line 113
    .end local v0           #id:J
    :cond_2a
    return-void

    .line 101
    .restart local v0       #id:J
    :cond_2b
    const-wide/16 v3, -0x3

    cmp-long v3, v0, v3

    if-nez v3, :cond_37

    .line 102
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/android/music/PlaylistBrowserActivity;->access$100(Lcom/android/music/PlaylistBrowserActivity;)V

    goto :goto_25

    .line 103
    :cond_37
    const-wide/16 v3, -0x2

    cmp-long v3, v0, v3

    if-nez v3, :cond_4c

    .line 104
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/android/music/MusicUtils;->getAllSongs(Landroid/content/Context;)[I

    move-result-object v2

    .line 105
    .local v2, list:[I
    if-eqz v2, :cond_25

    .line 106
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/music/MusicUtils;->playAll(Landroid/content/Context;[II)V

    goto :goto_25

    .line 109
    .end local v2           #list:[I
    :cond_4c
    iget-object v3, p0, Lcom/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v3, v0, v1}, Lcom/android/music/MusicUtils;->playPlaylist(Landroid/content/Context;J)V

    goto :goto_25
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "classname"

    .prologue
    .line 116
    return-void
.end method
