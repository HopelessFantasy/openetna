.class Landroid/view/SurfaceView$1;
.super Landroid/os/Handler;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 120
    :goto_5
    return-void

    .line 114
    :pswitch_6
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 117
    :pswitch_13
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->handleGetNewSurface()V

    goto :goto_5

    .line 112
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
    .end packed-switch
.end method
