.class Lcom/android/music/TrackBrowserActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 581
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 601
    :cond_15
    :goto_15
    return-void

    .line 582
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 583
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$400(Lcom/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 587
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/music/TrackBrowserActivity;->access$402(Lcom/android/music/TrackBrowserActivity;Z)Z

    goto :goto_15

    .line 590
    :cond_31
    new-instance v0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    sget-object v2, Lcom/android/music/MusicUtils;->sService:Lcom/android/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity;->access$700(Lcom/android/music/TrackBrowserActivity;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;-><init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 591
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4c

    .line 592
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/android/music/TrackBrowserActivity;->finish()V

    goto :goto_15

    .line 595
    :cond_4c
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 596
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$100(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_15

    .line 598
    :cond_5e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_15
.end method
