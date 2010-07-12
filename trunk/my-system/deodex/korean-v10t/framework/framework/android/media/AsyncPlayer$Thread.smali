.class final Landroid/media/AsyncPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AsyncPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AsyncPlayer;


# direct methods
.method constructor <init>(Landroid/media/AsyncPlayer;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 56
    :goto_1
    const/4 v0, 0x0

    .line 58
    .local v0, cmd:Landroid/media/AsyncPlayer$Command;
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 59
    :try_start_9
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$200(Landroid/media/AsyncPlayer;)Landroid/media/AsyncPlayer$Command;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 60
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$200(Landroid/media/AsyncPlayer;)Landroid/media/AsyncPlayer$Command;

    move-result-object v0

    .line 61
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    iget-object v5, v0, Landroid/media/AsyncPlayer$Command;->next:Landroid/media/AsyncPlayer$Command;

    invoke-static {v4, v5}, Landroid/media/AsyncPlayer;->access$202(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)Landroid/media/AsyncPlayer$Command;

    .line 62
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$300(Landroid/media/AsyncPlayer;)Landroid/media/AsyncPlayer$Command;

    move-result-object v4

    if-ne v4, v0, :cond_2c

    .line 63
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/AsyncPlayer;->access$302(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Command;)Landroid/media/AsyncPlayer$Command;

    .line 66
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_4e

    .line 68
    iget v3, v0, Landroid/media/AsyncPlayer$Command;->code:I

    packed-switch v3, :pswitch_data_fc

    .line 102
    :goto_32
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$100(Landroid/media/AsyncPlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 103
    :try_start_39
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$200(Landroid/media/AsyncPlayer;)Landroid/media/AsyncPlayer$Command;

    move-result-object v4

    if-nez v4, :cond_f5

    .line 108
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/media/AsyncPlayer;->access$502(Landroid/media/AsyncPlayer;Landroid/media/AsyncPlayer$Thread;)Landroid/media/AsyncPlayer$Thread;

    .line 109
    iget-object v4, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v4}, Landroid/media/AsyncPlayer;->access$600(Landroid/media/AsyncPlayer;)V

    .line 110
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_f8

    return-void

    .line 66
    :catchall_4e
    move-exception v4

    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v4

    .line 74
    :pswitch_51
    :try_start_51
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 75
    .local v2, player:Landroid/media/MediaPlayer;
    iget v3, v0, Landroid/media/AsyncPlayer$Command;->stream:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 76
    iget-object v3, v0, Landroid/media/AsyncPlayer$Command;->context:Landroid/content/Context;

    iget-object v4, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 77
    iget-boolean v3, v0, Landroid/media/AsyncPlayer$Command;->looping:Z

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 78
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 79
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 80
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$400(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_7e

    .line 81
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$400(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 83
    :cond_7e
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3, v2}, Landroid/media/AsyncPlayer;->access$402(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_83} :catch_84
    .catch Ljava/lang/IllegalStateException; {:try_start_51 .. :try_end_83} :catch_a5

    goto :goto_32

    .line 85
    .end local v2           #player:Landroid/media/MediaPlayer;
    :catch_84
    move-exception v3

    move-object v1, v3

    .line 86
    .local v1, e:Ljava/io/IOException;
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 87
    .end local v1           #e:Ljava/io/IOException;
    :catch_a5
    move-exception v3

    move-object v1, v3

    .line 88
    .local v1, e:Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalStateException (content provider died?) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AsyncPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 92
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :pswitch_c7
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$400(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_e8

    .line 93
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$400(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$400(Landroid/media/AsyncPlayer;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 95
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3, v6}, Landroid/media/AsyncPlayer;->access$402(Landroid/media/AsyncPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto/16 :goto_32

    .line 97
    :cond_e8
    iget-object v3, p0, Landroid/media/AsyncPlayer$Thread;->this$0:Landroid/media/AsyncPlayer;

    invoke-static {v3}, Landroid/media/AsyncPlayer;->access$000(Landroid/media/AsyncPlayer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "STOP command without a player"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 112
    :cond_f5
    :try_start_f5
    monitor-exit v3

    goto/16 :goto_1

    :catchall_f8
    move-exception v4

    monitor-exit v3
    :try_end_fa
    .catchall {:try_start_f5 .. :try_end_fa} :catchall_f8

    throw v4

    .line 68
    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_51
        :pswitch_c7
    .end packed-switch
.end method
