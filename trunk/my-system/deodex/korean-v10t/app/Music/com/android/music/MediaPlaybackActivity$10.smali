.class Lcom/android/music/MediaPlaybackActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/android/music/RepeatingImageButton$RepeatListener;


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
    .line 458
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 6
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v0, p4, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->access$1100(Lcom/android/music/MediaPlaybackActivity;IJ)V

    .line 460
    return-void
.end method
