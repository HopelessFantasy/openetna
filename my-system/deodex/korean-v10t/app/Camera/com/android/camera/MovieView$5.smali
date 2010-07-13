.class Lcom/android/camera/MovieView$5;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MovieView;


# direct methods
.method constructor <init>(Lcom/android/camera/MovieView;)V
    .registers 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/camera/MovieView$5;->this$0:Lcom/android/camera/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/MovieView$5;->this$0:Lcom/android/camera/MovieView;

    invoke-static {v0}, Lcom/android/camera/MovieView;->access$000(Lcom/android/camera/MovieView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 257
    iget-object v0, p0, Lcom/android/camera/MovieView$5;->this$0:Lcom/android/camera/MovieView;

    invoke-static {v0}, Lcom/android/camera/MovieView;->access$100(Lcom/android/camera/MovieView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :goto_17
    return-void

    .line 259
    :cond_18
    iget-object v0, p0, Lcom/android/camera/MovieView$5;->this$0:Lcom/android/camera/MovieView;

    iget-object v0, v0, Lcom/android/camera/MovieView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/MovieView$5;->this$0:Lcom/android/camera/MovieView;

    iget-object v1, v1, Lcom/android/camera/MovieView;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_17
.end method
