.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 427
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_44

    .line 467
    :cond_7
    :goto_7
    return-void

    .line 429
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebViewCore;

    .line 430
    .local v0, core:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebViewCore;->access$400(Landroid/webkit/WebViewCore;)V

    goto :goto_7

    .line 435
    .end local v0           #core:Landroid/webkit/WebViewCore;
    :pswitch_10
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_7

    .line 441
    :pswitch_14
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_7

    .line 446
    :pswitch_18
    invoke-static {}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500()Z

    move-result v1

    if-nez v1, :cond_7

    .line 447
    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    .line 448
    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    .line 449
    invoke-virtual {p0, v3}, Landroid/webkit/WebViewCore$WebCoreThread$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Landroid/webkit/WebViewCore$WebCoreThread$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 456
    :pswitch_2f
    invoke-static {}, Landroid/webkit/CacheManager;->endCacheTransaction()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 457
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$502(Z)Z

    goto :goto_7

    .line 462
    :pswitch_3a
    invoke-static {}, Landroid/webkit/CacheManager;->startCacheTransaction()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 463
    invoke-static {v2}, Landroid/webkit/WebViewCore$WebCoreThread;->access$502(Z)Z

    goto :goto_7

    .line 427
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_2f
        :pswitch_3a
    .end packed-switch
.end method
