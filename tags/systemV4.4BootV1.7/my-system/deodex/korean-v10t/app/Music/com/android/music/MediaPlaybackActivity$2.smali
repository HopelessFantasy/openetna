.class Lcom/android/music/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 390
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 11
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$200(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 389
    :cond_9
    :goto_9
    return-void

    .line 373
    :cond_a
    if-eqz p3, :cond_9

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 375
    .local v0, now:J
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$000(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 376
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 377
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$500(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v3

    int-to-long v5, p2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->access$402(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 379
    :try_start_3b
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$400(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4a} :catch_5f

    .line 384
    :goto_4a
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 385
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$600(Lcom/android/music/MediaPlaybackActivity;)J

    .line 386
    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/music/MediaPlaybackActivity;->access$402(Lcom/android/music/MediaPlaybackActivity;J)J

    goto :goto_9

    .line 380
    :catch_5f
    move-exception v2

    goto :goto_4a
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .parameter "bar"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 367
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$102(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 368
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .parameter "bar"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$402(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 392
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$102(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 393
    return-void
.end method
