.class Landroid/webkit/WebSettings$EventHandler$1;
.super Landroid/os/Handler;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebSettings$EventHandler;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebSettings$EventHandler;


# direct methods
.method constructor <init>(Landroid/webkit/WebSettings$EventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 215
    :goto_5
    return-void

    .line 201
    :pswitch_6
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v0, v0, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    monitor-enter v0

    .line 202
    :try_start_b
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v1}, Landroid/webkit/WebSettings;->access$000(Landroid/webkit/WebSettings;)V

    .line 203
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v1}, Landroid/webkit/WebSettings;->access$100(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;

    move-result-object v1

    iget v1, v1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    if-eqz v1, :cond_2f

    .line 204
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    iget-object v2, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v2, v2, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    invoke-static {v2}, Landroid/webkit/WebSettings;->access$100(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;

    move-result-object v2

    iget v2, v2, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v1, v2}, Landroid/webkit/WebSettings;->access$200(Landroid/webkit/WebSettings;I)V

    .line 206
    :cond_2f
    iget-object v1, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    iget-object v1, v1, Landroid/webkit/WebSettings$EventHandler;->this$0:Landroid/webkit/WebSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/webkit/WebSettings;->access$302(Landroid/webkit/WebSettings;Z)Z

    .line 207
    monitor-exit v0

    goto :goto_5

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v1

    .line 211
    :pswitch_3c
    iget-object v0, p0, Landroid/webkit/WebSettings$EventHandler$1;->this$1:Landroid/webkit/WebSettings$EventHandler;

    invoke-static {v0}, Landroid/webkit/WebSettings$EventHandler;->access$400(Landroid/webkit/WebSettings$EventHandler;)V

    goto :goto_5

    .line 199
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3c
    .end packed-switch
.end method
