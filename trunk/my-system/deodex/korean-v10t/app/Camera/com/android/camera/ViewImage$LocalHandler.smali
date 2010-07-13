.class Lcom/android/camera/ViewImage$LocalHandler;
.super Landroid/os/Handler;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalHandler"
.end annotation


# static fields
.field private static final IMAGE_GETTER_CALLBACK:I = 0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1569
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 1574
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 1578
    .end local p0
    :goto_5
    return-void

    .line 1576
    .restart local p0
    :pswitch_6
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 1574
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .registers 6
    .parameter "callback"
    .parameter "delay"

    .prologue
    .line 1585
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1586
    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1587
    .local v0, message:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1588
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1589
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/camera/ViewImage$LocalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1590
    return-void
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 1581
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/ViewImage$LocalHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    .line 1582
    return-void
.end method

.method public removeAllGetterCallbacks()V
    .registers 2

    .prologue
    .line 1593
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ViewImage$LocalHandler;->removeMessages(I)V

    .line 1594
    return-void
.end method
