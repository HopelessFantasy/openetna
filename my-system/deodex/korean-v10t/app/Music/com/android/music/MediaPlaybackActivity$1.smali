.class Lcom/android/music/MediaPlaybackActivity$1;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


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
    .line 279
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$1;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    .line 281
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    .line 282
    .local v2, x:I
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v2, v3, 0x4

    .line 283
    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->scrollTo(II)V

    .line 284
    if-nez v2, :cond_18

    .line 285
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 290
    :goto_17
    return-void

    .line 287
    :cond_18
    invoke-virtual {p0, v4, v1}, Lcom/android/music/MediaPlaybackActivity$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 288
    .local v0, newmsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$1;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v3, v3, Lcom/android/music/MediaPlaybackActivity;->mLabelScroller:Landroid/os/Handler;

    const-wide/16 v4, 0xf

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17
.end method
