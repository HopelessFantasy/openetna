.class Landroid/net/http/RequestQueue$NetworkStateTracker$1;
.super Landroid/os/Handler;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue$NetworkStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/http/RequestQueue$NetworkStateTracker;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue$NetworkStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker$1;->this$1:Landroid/net/http/RequestQueue$NetworkStateTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 145
    :goto_5
    return-void

    .line 142
    :pswitch_6
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker$1;->this$1:Landroid/net/http/RequestQueue$NetworkStateTracker;

    invoke-virtual {v0}, Landroid/net/http/RequestQueue$NetworkStateTracker;->networkStateChanged()V

    goto :goto_5

    .line 140
    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method
