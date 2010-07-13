.class Lcom/android/music/TrackBrowserActivity$1;
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
    .line 318
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 322
    :cond_14
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    .line 324
    :cond_19
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$1;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$000(Lcom/android/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    return-void
.end method
