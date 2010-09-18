.class Lcom/android/music/MediaPlaybackActivity$8;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 440
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$8;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$8;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_9

    .line 446
    :goto_8
    return-void

    .line 443
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$8;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->next()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_8

    .line 444
    :catch_13
    move-exception v0

    goto :goto_8
.end method
