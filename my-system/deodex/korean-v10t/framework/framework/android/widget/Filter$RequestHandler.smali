.class Landroid/widget/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/widget/Filter;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 224
    iput-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 225
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 226
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    .line 236
    iget v4, p1, Landroid/os/Message;->what:I

    .line 238
    .local v4, what:I
    sparse-switch v4, :sswitch_data_a8

    .line 268
    :goto_5
    return-void

    .line 240
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/widget/Filter$RequestArguments;

    .line 242
    .local v0, args:Landroid/widget/Filter$RequestArguments;
    :try_start_a
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    iget-object v6, v0, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Filter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v5

    iput-object v5, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_4f

    .line 247
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 248
    .local v3, message:Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 252
    :goto_23
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$300(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 253
    :try_start_2a
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v6}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 254
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v6}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v6

    const v7, -0x21524111

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 255
    .local v2, finishMessage:Landroid/os/Message;
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v6}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 257
    .end local v2           #finishMessage:Landroid/os/Message;
    :cond_4a
    monitor-exit v5

    goto :goto_5

    :catchall_4c
    move-exception v6

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_4c

    throw v6

    .line 243
    .end local v3           #message:Landroid/os/Message;
    :catch_4f
    move-exception v5

    move-object v1, v5

    .line 244
    .local v1, e:Ljava/lang/Exception;
    :try_start_51
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v5, v0, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    .line 245
    const-string v5, "Filter"

    const-string v6, "An exception occured during performFiltering()!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_51 .. :try_end_5f} :catchall_6f

    .line 247
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 248
    .restart local v3       #message:Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_23

    .line 247
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #message:Landroid/os/Message;
    :catchall_6f
    move-exception v5

    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v6}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 248
    .restart local v3       #message:Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 249
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    throw v5

    .line 260
    .end local v0           #args:Landroid/widget/Filter$RequestArguments;
    .end local v3           #message:Landroid/os/Message;
    :sswitch_80
    iget-object v5, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v5}, Landroid/widget/Filter;->access$300(Landroid/widget/Filter;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 261
    :try_start_87
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v6}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_a2

    .line 262
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    invoke-static {v6}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->quit()V

    .line 263
    iget-object v6, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/widget/Filter;->access$402(Landroid/widget/Filter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 265
    :cond_a2
    monitor-exit v5

    goto/16 :goto_5

    :catchall_a5
    move-exception v6

    monitor-exit v5
    :try_end_a7
    .catchall {:try_start_87 .. :try_end_a7} :catchall_a5

    throw v6

    .line 238
    :sswitch_data_a8
    .sparse-switch
        -0x2f2f0ff3 -> :sswitch_6
        -0x21524111 -> :sswitch_80
    .end sparse-switch
.end method
