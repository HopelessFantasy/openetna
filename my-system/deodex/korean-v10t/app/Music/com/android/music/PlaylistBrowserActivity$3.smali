.class Lcom/android/music/PlaylistBrowserActivity$3;
.super Landroid/os/Handler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/android/music/PlaylistBrowserActivity;->access$300(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/music/PlaylistBrowserActivity;->access$400(Lcom/android/music/PlaylistBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 215
    return-void
.end method
